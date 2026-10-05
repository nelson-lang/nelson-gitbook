#import "nelson_help.typ": *

= lookup <dictionary:lookup>

Find value in dictionary by key.

== Syntax

- #raw("value = lookup(d, key)");
- #raw("value = lookup(d, key, 'FallbackValue', fallback)");

== Input argument

/ d: scalar: dictionary object.
/ key: key type must match or be convertible to the data type of keys in d.
/ fallback: scalar: Fallback value

== Output argument

/ value: value.

== Description

#strong[value \= lookup(d, key)]; retrieves the value associated with the given key in dictionary d.

 If the key does not exist, an error is raised.

 #strong[value \= lookup(d, key)]; is equivalent to #strong[value \= d\[key\]];.

 #strong[value \= lookup(d, key, 'FallbackValue', fallback)]; specifies a fallback value to return if the key is not found in d.

 #strong[lookup]; function only validates the fallback if it is needed. An error is raised only if the key is not found and no valid fallback is provided.


== Example

``````matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = lookup(d,[3,5], 'FallbackValue', "Orange")
``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:remove>)[remove];, #nlink(<dictionary:insert>)[insert];, #nlink(<dictionary:readdictionary>)[readdictionary];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
