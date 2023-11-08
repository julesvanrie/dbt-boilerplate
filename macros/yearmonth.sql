{% macro yearmonth(year, month) %}
	year || '-' || format('%02d', month) as year_month
{% endmacro %}