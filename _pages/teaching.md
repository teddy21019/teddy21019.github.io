---
layout: page
permalink: /teaching/
title: Teaching
description:
nav: true
nav_order: 3
---

<!-- Content comes from _data/teaching.yml. See MAINTAINING.md → "Add a teaching entry". -->

{% assign by_role = site.data.teaching | group_by: "role" %}
{% for role in by_role %}

## {{ role.name }}

{% assign by_inst = role.items | group_by: "institution" %}
{% for inst in by_inst %}

### {{ inst.name }}

<ul>
{% for c in inst.items %}
  <li>
    {% if c.link %}<a href="{{ c.link }}">{{ c.course }}</a>{% else %}{{ c.course }}{% endif %}, {{ c.term }}{% if c.instructor %}, {% if c.role == "Teaching Assistant" %}TA for{% else %}with{% endif %} {{ c.instructor }}{% endif %}
  </li>
{% endfor %}
</ul>
{% endfor %}
{% endfor %}
