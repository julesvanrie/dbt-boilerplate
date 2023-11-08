{% test no_color(model, column_name) %}
	select
		*
	from
		{{ model }}
	where
		{{ column_name }} LIKE "%Blue%"
{% endtest %}