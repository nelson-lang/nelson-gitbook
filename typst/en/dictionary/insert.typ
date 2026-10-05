#import "nelson_help.typ": *

= insert <dictionary:insert>

Add entries to a dictionary.

== Syntax

- #raw("db = insert(da, key, value)");
- #raw("db = insert(da, key, value, 'Overwrite', tf)");

== Input argument

/ da: scalar: a dictionary object.
/ key: scalar or array: key
/ value: scalar or array: value. size of key must be compatible with the size of value.
/ tf: true force to Overwrite, false do not overwrite and ignore change

== Output argument

/ db: scalar: a dictionary object.

== Description

#strong[db \= insert(da, key, value)]; adds the key-value pair to the dictionary#strong[da];.

 If the key already exists, its value is updated.

 #strong[d \= insert(d, key, value)]; is equivalent to #strong[d\[key\] \= value];.

 #strong[db \= insert(da, key, value, 'overwrite', tf)]; specifies whether to overwrite an existing value for the key based on the boolean parameter Overwrite.


== Example

``````matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
d = insert(d, [2 4] ,["Orange" "Citra"], 'Overwrite', false)
``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:remove>)[remove];, #nlink(<dictionary:lookup>)[lookup];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
