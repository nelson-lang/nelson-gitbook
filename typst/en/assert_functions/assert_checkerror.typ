#import "nelson_help.typ": *

= assert\_checkerror <assert_functions:assert_checkerror>

Historical name for asserts.checkerror.

== Syntax

- #raw("assert_checkerror(command, expectedMessage)");
- #raw("assert_checkerror(command, expectedMessage, expectedIdentifier)");
- #raw("[res, msg] = assert_checkerror(command, expectedMessage)");

== Input argument

/ command: Command string evaluated in the current context.
/ expectedMessage: Expected full error message.
/ expectedIdentifier: Optional expected error identifier.

== Output argument

/ res: true if the expected error is produced, false otherwise.
/ msg: Assertion failure message, empty on success.

== Description

#strong[assert\_checkerror]; is kept for compatibility.

 For complete documentation, use #nlink(<assert_functions:asserts.checkerror>)[asserts.checkerror];.

 Use #nlink(<assert_functions:asserts.throws>)[asserts.throws]; when only a message substring must match.


== Examples

Historical call

``````matlab
assert_checkerror('cos', _('Wrong number of input arguments.'));
``````

Canonical call

``````matlab
asserts.checkerror('cos', _('Wrong number of input arguments.'));
``````


== See also

#nlink(<assert_functions:asserts.checkerror>)[asserts.checkerror];, #nlink(<assert_functions:asserts.throws>)[asserts.throws];, #nlink(<assert_functions:asserts.noError>)[asserts.noError];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [documented as historical name for asserts.checkerror],
)

// Author: Allan CORNET
