#import "nelson_help.typ": *

= isConfigured <dictionary:isConfigured>

Check if dictionary has types assigned to keys and values.

== Syntax

- #raw("tf = isConfigured(d)");

== Input argument

/ d: scalar: dictionary object.

== Output argument

/ tf: scalar logical: true if configured, false if not.

== Description

#strong[tf \= isConfigured(d)]; returns a logical#strong[true]; if the specified dictionary is configured, and a logical#strong[false]; if it is not.

 A dictionary is considered configured when it has assigned types for its keys and values. Adding entries to an unconfigured dictionary will configure it.


== Example

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isConfigured(d)
d2 = dictionary()
tf = isConfigured(d2)


``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:configureDictionary>)[configureDictionary];, #nlink(<dictionary:insert>)[insert];, #nlink(<dictionary:values>)[values];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
