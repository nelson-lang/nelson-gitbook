#import "nelson_help.typ": *

= error <error_manager:error>

Raise an error message.

== Syntax

- #raw("error(id, msg)");
- #raw("error(id, msg, A, ...)");
- #raw("error(msg)");
- #raw("error(msg, A, ...)");
- #raw("error(error_structure)");
- #raw("error(correction, ...)");

== Input argument

/ id: a string: error identifier.
/ msg: a string: message or format.
/ A: values used to format the message.
/ error\_structure: scalar error message structure with message, identifier, or stack fields.
/ correction: a nelson.lang.correction object.

== Description

#strong[error]; stops the current script execution.

 #strong[error(' ')]; will be ignored and the script will continue to run.

 #strong[error(msg, A, ...)]; and #strong[error(id, msg, A, ...)]; format the message with the same rules as #strong[sprintf];.

 #strong[error(error\_structure)]; accepts a scalar structure. Missing fields are treated as empty values, and additional fields are ignored.

 When #strong[error\_structure.stack]; is supplied, only the #strong[file];, #strong[name];, and #strong[line]; fields are used. Additional stack fields are ignored. Noninteger #strong[line]; values use their real integer part; invalid numeric values use #strong[0];.

 #strong[error(correction, ...)]; stores the correction object in the thrown MException.

 identifier includes one or more component fields and a mnemonic field (example: 'nelson:matrix:empty')

 #strong[How to build an error identifier.]; An identifier is written #strong[component:mnemonic];, with one or more component fields followed by a mnemonic, each field starting with a letter and containing only letters, digits, or underscores, separated by colons (example: 'Nelson:elementary\_functions:notFinite'). Identifiers thrown by Nelson itself use #strong[Nelson]; as the first component; in your own code use a component of your choosing (for example your module or toolbox name).

 A few rules keep identifiers useful:

 - The component should route to the area that raises the error (a module, class, or function name); the mnemonic should name the specific check in camelCase (example: 'mustBeFinite', 'tooManyInputs').

 - For errors that can happen anywhere (argument count, indexing, an expected value shape), a short two-field identifier is enough (example: 'Nelson:tooManyInputs', 'Nelson:badsubscript').

 - Give one identifier a single message text: an identifier reused with several different messages cannot be translated and is dropped from the message catalog.

 - Reuse an existing identifier for the same condition rather than creating a near-duplicate, and keep the mnemonic stable and descriptive (do not encode a run-time value in it).


== Examples

``````matlab
error('your error message.')
error('nelson:identifier', 'your error message.')
error('Value %d', 7)
error('')
``````

``````matlab
 1 / [1 2 3]
a = lasterror()
lasterror('reset')
b = lasterror()
error(a)
c = lasterror()
``````


== See also

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:warning>)[warning];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
