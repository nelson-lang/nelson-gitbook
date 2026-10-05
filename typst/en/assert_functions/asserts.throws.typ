#import "nelson_help.typ": *

= asserts.throws <assert_functions:asserts.throws>

Check that a command throws an error containing expected text.

== Syntax

- #raw("asserts.throws(command, expectedSubstring)");
- #raw("asserts.throws(command, expectedSubstring, expectedIdentifier)");
- #raw("[res, msg] = asserts.throws(command, expectedSubstring)");

== Input argument

/ command: Command string evaluated in the current context.
/ expectedSubstring: Expected substring in the error message.
/ expectedIdentifier: Optional expected error identifier.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when the command raises an error whose message contains expectedSubstring.

 Use asserts.checkerror when the full error message must match.


== Examples

Expected error substring

``````matlab
asserts.throws('cos', _('Wrong number of input arguments.'));
``````

Capture missing error

``````matlab
[res, msg] = asserts.throws('1 + 1', 'unused');
``````


== See also

#nlink(<assert_functions:asserts.checkerror>)[asserts.checkerror];, #nlink(<assert_functions:asserts.noError>)[asserts.noError];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
