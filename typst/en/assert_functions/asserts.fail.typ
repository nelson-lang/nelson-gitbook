#import "nelson_help.typ": *

= asserts.fail <assert_functions:asserts.fail>

Force an assertion failure.

== Syntax

- #raw("asserts.fail()");
- #raw("asserts.fail(message)");
- #raw("[res, msg] = asserts.fail(message)");

== Input argument

/ message: Optional custom failure message.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

Use this assertion to mark an execution path that must not be reached.

 With outputs, no error is raised and res is false.


== Examples

Capture a forced failure

``````matlab
[res, msg] = asserts.fail('unreachable branch');
``````

Raise a forced failure

``````matlab
try; asserts.fail('unreachable branch'); catch ME; disp(ME.message); end
``````


== See also

#nlink(<assert_functions:asserts.istrue>)[asserts.istrue];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
