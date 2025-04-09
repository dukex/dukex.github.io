---
title: Emerson Almeida - CV
layout: empty
---

<img src="./assets/thisisme.png" class="thisisme" />

# Emerson Almeida

- emersonalmeida@hey.com
- +55 11 97741 4937
- linkedin.com/in/dukex

## Summary

I am a software specialist with over 15 years of experience.

My expertise spans a wide range of technologies, including React, Ruby on Rails, Typescript, GraphQL, AWS, Python, FastAPI, RabbitMQ, NestJS, Elixir, Crystal, PostgreSQL, Stimulus, NodeJS, Scala, Redis, Memcached, Golang, Lua, Kotlin, Flutter, Microservice architecture, Event-driven architecture, and more.

I have a strong background in leadership, mentorship, strategy, development, organization, architecture, problem-solving, production issue resolution, and data processing.

## Professional Experiencies

{% for exp in site.data.experiencies %}

### {{exp.title}} at {{exp.company}}, {{exp.start_at}} - {{exp.end_at}}

{{exp.body}}

{% for point in exp.about %}

- {{point}}
  {% endfor %}

<p class="skills"><strong>Skills</strong>: {{ exp.technologies | array_to_sentence_string: "and" }}
</p>

---

{% endfor %}

## Educations

{% for ed in site.data.education %}

### {{ed.title}} at {{ed.institution}}, {{ed.year}}

{{ed.description}}

---

{% endfor %}
