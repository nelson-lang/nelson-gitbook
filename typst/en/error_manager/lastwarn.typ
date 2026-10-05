#import "nelson_help.typ": *

= lastwarn <error_manager:lastwarn>

Returns last recorded warning message.

== Syntax

- #raw("last_message = lastwarn()");
- #raw("[last_message, last_identifier] = lastwarn()");
- #raw("lastwarn(' ')");
- #raw("lastwarn(new_message)");
- #raw("lastwarn(new_message, new_identifier)");
- #raw("[last_message, last_identifier] = lastwarn(' ')");
- #raw("[last_message, last_identifier] = lastwarn(new_message)");
- #raw("[last_message, last_identifier] = lastwarn(new_message, new_identifier)");

== Output argument

/ last\_message: string: last warning message.
/ last\_identifier: string: identifier.

== Description

#strong[last\_message \= lastwarn()]; returns a string containing the last warning message.

 #strong[lastwarn(' ')]; clears last warning.


== Example

``````matlab

    [1:3]:3
    lastwarn
    [msg, id] = lastwarn()
    lastwarn('')
    [msg, id] = lastwarn()
    
``````


== See also

#nlink(<error_manager:error>)[error];, #nlink(<error_manager:warning>)[warning];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
