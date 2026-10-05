#import "nelson_help.typ": *

= cancel <handle:cancel>

Cancel a cancellable object.

== Syntax

- #raw("cancel(obj)");

== Input argument

/ obj: object that supports cancellation, such as an asynchronous evaluation object.

== Description

cancel requests cancellation of an object that supports asynchronous work. The object type provides the concrete behavior.

 If the first argument does not implement cancellation, Nelson reports that the function is not implemented for that type.


== Used function(s)

cancel

== Example

Cancel an asynchronous evaluation.

``````matlab
f = parfeval(@pause, 0, 10);
cancel(f)
``````


== See also

#nlink(<parallel:parfeval>)[parfeval];, #nlink(<parallel:afterEach>)[afterEach];, #nlink(<parallel:afterAll>)[afterAll];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
