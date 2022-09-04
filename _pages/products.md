---
layout: page
title: products
permalink: /products/  
description: My work and personal products
nav: true
nav_order: 2
display_categories: [control theory methods, process models]
horizontal: false
---

<!-- pages/products.md -->
<div class="products">
{%- if site.enable_product_categories and page.display_categories %}
  <!-- Display categorized products -->
  {%- for category in page.display_categories %}
  <h2 class="category">{{ category }}</h2>
  {%- assign categorized_products = site.products | where: "category", category -%}
  {%- assign sorted_products = categorized_products | sort: "importance" %}
  <!-- Generate cards for each product -->
  {% if page.horizontal -%}
  <div class="container">
    <div class="row row-cols-2">
    {%- for product in sorted_products -%}
      {% include products_horizontal.html %}
    {%- endfor %}
    </div>
  </div>
  {%- else -%}
  <div class="grid">
    {%- for product in sorted_products -%}
      {% include products.html %}
    {%- endfor %}
  </div>
  {%- endif -%}
  {% endfor %}

{%- else -%}
<!-- Display products without categories -->
  {%- assign sorted_products = site.products | sort: "importance" -%}
  <!-- Generate cards for each product -->
  {% if page.horizontal -%}
  <div class="container">
    <div class="row row-cols-2">
    {%- for product in sorted_products -%}
      {% include products_horizontal.html %}
    {%- endfor %}
    </div>
  </div>
  {%- else -%}
  <div class="grid">
    {%- for product in sorted_products -%}
      {% include products.html %}
    {%- endfor %}
  </div>
  {%- endif -%}
{%- endif -%}
</div>
