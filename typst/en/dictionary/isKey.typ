#import "nelson_help.typ": *

= isKey <dictionary:isKey>

Check if dictionary contains key

== Syntax

- #raw("tf = isKey(d)");

== Input argument

/ d: scalar: dictionary object.

== Output argument

/ tf: scalar logical: true if key, false if not.

== Description

#strong[tf \= isKey(d, key)]; returns a logical true if the specified key exists in the configured dictionary, and a logical false if it does not.

 If #strong[d]; is an unconfigured dictionary,#strong[isKey]; throws an error.

 If #strong[key]; is an array of multiple keys, then tf is a logical array of the same size.


== Example

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isKey(d, "John")
tf = isKey(d, ["biil" , "Yannis")
``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:configureDictionary>)[configureDictionary];, #nlink(<dictionary:keys>)[keys];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
