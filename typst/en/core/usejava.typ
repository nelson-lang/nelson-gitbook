#import "nelson_help.typ": *

= usejava <core:usejava>

Check whether a Java feature is available.

== Syntax

- #raw("tf = usejava(feature)");

== Input argument

/ feature: one of #strong['awt'];, #strong['jvm']; or #strong['swing'];.

== Output argument

/ tf: a logical scalar.

== Description

#strong[tf \= usejava(feature)]; returns whether the given Java #strong[feature]; is available.

 Nelson embeds no Java virtual machine, so #strong[usejava]; always returns #strong[false];.


== Example

``````matlab
tf = usejava('jvm')
``````


== See also

#nlink(<core:version>)[version];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
