#import "nelson_help.typ": *

= mcpinfo <ai:mcpinfo>

Return Nelson MCP server information.

== Syntax

- #raw("info = mcpinfo()");

== Description

#strong[mcpinfo]; returns the MCP server version, transport, default display mode, default workspace root, default output limit, exposed tools, resources, prompts, and default policy flags.


== See also

#nlink(<ai:mcpserver>)[mcpserver];, #nlink(<ai:mcpusage>)[mcpusage];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)
