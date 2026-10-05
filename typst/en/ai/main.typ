#import "nelson_help.typ": *

= AI and MCP integration.

== Functions

- #nlink(<ai:aiask>)[aiask]: Ask an external AI provider from Nelson.
- #nlink(<ai:aimodels>)[aimodels]: List models available from an AI provider.
- #nlink(<ai:aioptions>)[aioptions]: Create options for AI provider requests.
- #nlink(<ai:mcpinfo>)[mcpinfo]: Return Nelson MCP server information.
- #nlink(<ai:mcpserver>)[mcpserver]: Start Nelson MCP server on standard input and output.
- #nlink(<ai:mcpusage>)[mcpusage]: Use Nelson through MCP from an AI agent.


#nested[
#pagebreak(weak: true)
#include "aiask.typ"
#pagebreak(weak: true)
#include "aimodels.typ"
#pagebreak(weak: true)
#include "aioptions.typ"
#pagebreak(weak: true)
#include "mcpinfo.typ"
#pagebreak(weak: true)
#include "mcpserver.typ"
#pagebreak(weak: true)
#include "mcpusage.typ"
]
