---
layout: page
permalink: /research/
title: Research
description:
nav: true
nav_order: 2
---

<!-- Entries come from _bibliography/{wp,wip,published}.bib. See MAINTAINING.md. -->

<div class="publications">

<h2>Published Papers</h2>
{% bibliography --file published %}

<h2>Working Papers</h2>
{% bibliography --file wp %}

<h2>Work in Progress</h2>
{% bibliography --file wip %}

</div>
