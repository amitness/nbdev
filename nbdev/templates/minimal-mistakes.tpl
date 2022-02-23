{%- extends 'hide-md.tpl' -%}{% block body %}---
{% if resources.title != "" and resources.title != nil %}title: "{{resources.title}}"{% endif %}
{% if resources.author != "" and resources.author != nil %}author: {{resources.author}}{% endif %}
{% if resources.date != "" and resources.date != nil %}date: {{resources.date}}{% endif %}
{% if resources.last_modified_at != "" and resources.last_modified_at != nil %}last_modified_at: {{resources.last_modified_at}}{% endif %}
{% if resources.tags != "" and resources.tags != nil %}tags: {{resources.tags}}{% endif %}
{% if resources.summary != "" and resources.summary != nil %}excerpt: {{resources.summary}}{% endif %}
{% if resources.permalink != "" and resources.permalink != nil %}permalink: {{resources.permalink}}{% endif %}
{% if resources.classes != "" and resources.classes != nil %}classes: {{resources.classes}}{% endif %}
{% if resources.toc != "" and resources.toc != nil %}toc: {{resources.toc}}{% endif %}
{% if resources.toc_sticky != "" and resources.toc_sticky != nil %}toc_sticky: {{resources.toc_sticky}}{% endif %}
{% if resources.categories != "" and resources.categories != nil %}categories: {% for category in resources.categories.split(',') %}
  - {{category}}{% endfor %}{% endif %}
{% if resources.header != "" and resources.header != nil %}header: 
  og_image: {{resources.header}}
  teaser: {{resources.header}}
{% endif %}
---

{{ super() }}
{%- endblock body %}

{% block codecell -%}
{{ super() }}
{% endblock codecell %}

{% block input_group -%}
{{ super() }}
{% endblock input_group %}

{% block output_group -%}
{{ super() }}
{% endblock output_group %}

