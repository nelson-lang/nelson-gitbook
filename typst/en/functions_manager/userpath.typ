#import "nelson_help.typ": *

= userpath <functions_manager:userpath>

Displays or modify default user functions directory.

== Syntax

- #raw("p = userpath()");
- #raw("userpath(dirname)");
- #raw("userpath('reset')");
- #raw("userpath('clear')");

== Input argument

/ dirname: an existing directory name
/ 'clear': removes the first directory for current and next sessions of Nelson.
/ 'reset': resets the first directory to the default for your platform.

== Output argument

/ p: string: the specified user path

== Description

#strong[userpath]; modifies or displays user’s load path.

 By default, #strong[userpath]; directory is platform-dependant:

 Windows platforms: %USERPROFILE%\/Documents\/Nelson

 Others platforms: \$home\/Documents\/Nelson

 It is possible to force userpath by define an environment variable: NELSON\_USERPATH with an existing path.


== Example

``````matlab
path
userpath

``````


== See also

#nlink(<functions_manager:path>)[path];, #nlink(<functions_manager:addpath>)[addpath];, #nlink(<functions_manager:rehash>)[rehash];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
