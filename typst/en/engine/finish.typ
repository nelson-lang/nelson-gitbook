#import "nelson_help.typ": *

= finish <engine:finish>

User-defined termination script for Nelson.

== Description

#strong[startup.m]; in Nelson initiates user-specified commands upon Nelson startup.

 It executes any file named#strong[startup.m]; that is located on the search path.

 To use this feature, create a file named#strong[startup.m]; in the userpath folder, which is included in the Nelson search path.

 Embed commands within this file that you wish to be executed during Nelson startup.

 This could involve setting physical constants, defining defaults for graphics properties, incorporating engineering conversion factors, or predefining any other elements desired in your workspace.

 Customizing the #strong[startup.m]; file allows you to establish a tailored environment every time Nelson is launched.


== See also

#nlink(<core:exit>)[exit];, #nlink(<core:quit>)[quit];, #nlink(<engine:startup>)[startup];, #nlink(<functions_manager:userpath>)[userpath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
