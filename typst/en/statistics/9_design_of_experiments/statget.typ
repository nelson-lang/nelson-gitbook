#import "../nelson_help.typ": *

= statget <statistics:9_design_of_experiments.statget>

Access field values in statistics options structures.

== Syntax

- #raw("val = statget(options, field)");
- #raw("val = statget(options, field, defaultData)");

== Input argument

/ options: scalar options structure.
/ field: field name or unique leading characters of a field name.
/ defaultData: value returned when the matched field is empty.

== Output argument

/ val: field value, default value, or an empty array when the field name is not uniquely matched.

== Description

#strong[statget]; returns a value from an options structure. Field names are matched case-insensitively and can be abbreviated when the abbreviation is unique.


== Used function(s)

statset kmeans

== Examples

Read a value from an options structure.

``````matlab
opts = statset('kmeans');
statget(opts, 'MaxI')
``````

Return a default value when a field is empty.

``````matlab
opts = statset();
statget(opts, 'TolX', 1e-6)
``````

