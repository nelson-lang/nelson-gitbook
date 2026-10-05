#import "nelson_help.typ": *

= warning <error_manager:warning>

Display a warning message.

== Syntax

- #raw("warning()");
- #raw("warning(msg)");
- #raw("warning(id, msg)");
- #raw("warning(state)");
- #raw("warning(state, id)");
- #raw("st = warning()");
- #raw("warning(st)");

== Input argument

/ id: a string: identifier for the warning.
/ msg: a string: message to warn.
/ state: a string: 'on', 'off', 'aserror', 'all' or 'query'.
/ st: a struct: set warning settings.

== Output argument

/ st: a struct, warning settings.

== Description

#strong[warning]; displays a warning message.

 #strong[warning(' ')]; resets lastwarn state.

 When called as #strong[warning(id, msg, ...)]; or #strong[warning(state, id)];, the identifier is written #strong[component:mnemonic];, with one or more component fields followed by a mnemonic, each field starting with a letter and containing only letters, digits, or underscores, separated by colons (example: 'Nelson:io:fileNotFound'). Warnings raised by Nelson use #strong[Nelson]; as the first component; in your own code use a component of your choosing (for example your module name).

 A few rules keep identifiers useful: the component should route to the area that raises the warning and the mnemonic should name the specific case in camelCase; a short two-field identifier is enough for cases that can happen anywhere; give one identifier a single message text (an identifier reused with several different messages cannot be translated); and reuse an existing identifier for the same case rather than a near-duplicate. The identifier is also what #strong[warning('off', id)]; and #strong[warning('on', id)]; enable or disable, so a stable identifier lets users control the warning.


== Examples

``````matlab
warning('your warning message.')
``````

``````matlab
warning('on', 'myModule:identifier');
warning('myModule:identifier', 'my message 1 on');
warning('off', 'myModule:identifier');
warning('myModule:identifier', 'my message 2 off');
warning('aserror', 'myModule:identifier');
warning('myModule:identifier', 'my message 3 as error');


``````


== See also

#nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:error>)[error];, #nlink(<error_manager:lastwarn>)[lastwarn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
