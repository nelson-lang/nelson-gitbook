#import "nelson_help.typ": *

= remove <dictionary:remove>

Remove dictionary entries.

== Syntax

- #raw("db = remove(da, key)");

== Input argument

/ da: scalar: a dictionary object.
/ key: scalar or array: key

== Output argument

/ db: scalar: a dictionary object.

== Description

#strong[db \= remove(da, key)]; deletes the entry associated with the key from dictionary da.

 #strong[d \= remove(d, key)]; is equivalent to #strong[d\[key\] \= \[\]];.


== Example

``````matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
d = remove(d, 2)

``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:insert>)[insert];, #nlink(<dictionary:lookup>)[lookup];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
