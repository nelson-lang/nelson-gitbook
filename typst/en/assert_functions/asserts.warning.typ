#import "nelson_help.typ": *

= asserts.warning <assert_functions:asserts.warning>

Check that a command emits the expected warning.

== Syntax

- #raw("asserts.warning(command, expectedWarning)");
- #raw("asserts.warning(command, expectedMessage, expectedIdentifier)");
- #raw("[res, msg] = asserts.warning(command, expectedWarning)");

== Input argument

/ command: Command string evaluated in the current context.
/ expectedWarning: Expected warning message substring or warning identifier.
/ expectedMessage: Expected warning message.
/ expectedIdentifier: Expected warning identifier.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when the command emits a matching warning.

 The two-argument form accepts either the warning message text or the warning identifier.


== Examples

Expected warning text

``````matlab
asserts.warning('warning(''Nelson:asserts:example'', ''expected warning'');', 'expected warning');
``````

Capture a missing warning

``````matlab
[res, msg] = asserts.warning('1 + 1', 'expected warning');
``````


== See also

#nlink(<assert_functions:asserts.warningFree>)[asserts.warningFree];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
