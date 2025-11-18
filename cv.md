---
title: Emerson Almeida - CV
layout: empty
---

<style>
  p{
    margin-bottom: 0.75em
  }
  p + ul{
    margin-bottom: 1em
  }
</style>

<img src="./assets/thisisme.png" class="thisisme" />

# Emerson Almeida

- emersonalmeidax@gmail.com
- +55 11 97741 4937
- github.com/dukex
- linkedin.com/in/dukex

## Summary

I am a software specialist with over 15 years of experience.

My expertise spans a wide range of technologies, including languages, frameworks, tools, architectures, I know and have a deeply knowledge such as:

- Golang
- Ruby / Ruby on Rails
- Javascript / Typescript / React / Vue / Stimulus
- Dart / Flutter
- Python / FastAPI
- Elixir
- GraphQL
- AWS
- Terraform
- K8s
- Rabbit MQ
- Kafka
- PostgreSQL
- MySQL
- MongoDB
- Redis
- Event driven
- Microservice

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
