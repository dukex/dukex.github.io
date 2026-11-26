---
layout: post
title: "Claude Code can ask. Now it can hear."
date: 2026-11-26 09:00 -0300
categories: [ai, claude-code, open-source, go]
description: "hark is a small open source Go CLI that prints one line per event from GitHub, Slack, Jira, Linear, Discord, Todoist and Datadog, so Claude Code can run it as a monitor and react to reviews, failed builds and mentions."
image: /assets/images/hark/og.png
---

Most of my day with Claude Code goes the same way. I open a pull request, the agent and I move on to the next task, and half an hour later a reviewer asks for a change. The agent has no idea. It finds out when I go to GitHub, read the review and paste it back into the session.

For a while I fixed this by hand. Every time I opened a PR, I asked Claude Code to start a monitor on it: a small loop with `gh` that checked for new comments. It worked, but I had to set it up again for every PR, and it only covered GitHub. A mention in Slack, a Jira ticket assigned to me or a Datadog monitor going red still reached me first, and usually late.

## Asking and hearing

Tools and MCP servers are good at answering. The agent calls them when it decides it needs something. What they can't do is tell the agent about something it didn't ask for. A review lands while the agent is busy writing a migration, and it has no reason to go and look.

Claude Code already has the other half: a monitor runs a command in the background and wakes the agent with each line the command prints. So I didn't need another integration. I needed a command that prints one line every time something happens in my accounts.

## hark

That command is [hark](https://hark.dukex.sh). You run one per service:

    $ hark github
    2026-11-26T10:05:00Z github pr.changes_requested acme/checkout#15 @carol "move the migration to its own PR (1 inline comments)" https://github.com/acme/checkout/pull/15#pullrequestreview-77
    2026-11-26T10:12:00Z github ci.failed acme/checkout "CI workflow run failed for main branch"
    2026-11-26T10:31:00Z github issue.commented dukex/foo#3 @alice "works here, can you share the config?" https://github.com/dukex/foo/issues/3#issuecomment-9

![hark github printing three events](/assets/images/hark/demo.gif)

Every line has the same fields: when, which service, what kind of event, the issue or PR, who did it, the text and a link. `hark help` explains each field to the agent, so it knows that `ci.failed` means "name the job and offer to read the logs" and that `pr.approved` is worth one line and nothing more.

It covers GitHub, Slack, Discord, Jira, Linear, Todoist and Datadog. It checks each one once a minute with your own tokens. There is no server to run, no webhook to register and no account to create.

## Setup is a prompt

The [README](https://github.com/dukex/hark#use-it-from-claude-code-or-another-agent) has a prompt you paste into Claude Code. The agent installs hark, runs `hark doctor`, starts one monitor for each service that passes its checks, and learns what to do with each kind of event. The same prompt tells it to ask you before it replies, closes or changes anything in your accounts.

Tokens never go through the chat. `hark login jira` asks for the values in your own terminal and keeps them in the macOS Keychain, or in the Secret Service keyring on Linux. The prompt tells the agent to send you there instead of asking you to paste a token.

## A few decisions

- **Plain text, one line per event.** It is the format an agent reads best, and you can still pipe it through `grep` when you debug.
- **Restarts lose nothing.** Monitors in Claude Code have a timeout, so the agent restarts hark all day. Jira, Linear, Slack, Discord, Todoist and Datadog save a cursor in `~/.local/state/hark`. GitHub has no cursor, so the agent passes `--since` with the time of the last line it saw.
- **One write, on purpose.** hark only reads, except that it marks the GitHub notifications it printed as read, so a second session never gets the same review twice.
- **Filters in each service's own language.** `--filter` takes GitHub search qualifiers, JQL, Slack search modifiers or a Todoist filter, so you don't learn a new syntax to say "only my team's repos".
- **Other agents.** Copilot CLI has no monitor, but it wakes the agent when a background command exits, so `--exit-on-event` makes hark exit after each batch. Codex doesn't work this way yet; the repo has a note on what it waits for.

## Try it

    curl -fsSL https://hark.dukex.sh/install | sh

Then paste the prompt from the README into Claude Code. It runs on Linux and macOS, it is written in Go, and it is MIT licensed.

hark is a week old, so expect rough edges. Each service is one Go interface with two methods, `Watch` and `Doctor`, if you want to add the one you use. What I still don't know is how many events an hour an agent can take before they turn into noise, so if you run it, I'd like to hear what you ended up filtering out.
