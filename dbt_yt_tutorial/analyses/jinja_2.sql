{%- set apples = ["fuji", "gala", "honeycrisp", "red delicious", "granny smith"] -%}

{%- for i in apples %}
    {%- if i != "gala" -%}
      {{-i-}}
    {%- else -%}
       i hate {{-i-}}
    {%- endif %}
{% endfor %}