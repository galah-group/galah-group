---
layout: default
title: Galah Group LLC
---

{% for post in site.posts limit:4 %}
<article>
  <h2 class="post_title">{{ post.title }}</h2>
  <div class="post_author">
    Posted {{ post.date | date: '%B %e, %Y' }} by {{ post.author }}
  </div>
  {{ post.content }}
</article>
{% endfor %}
