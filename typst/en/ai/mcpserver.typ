#import "nelson_help.typ": *

= mcpserver <ai:mcpserver>

Start Nelson MCP server on standard input and output.

== Syntax

- #raw("mcpserver()");
- #raw("mcpserver('--nelson-display-mode=gui')");

== Description

#strong[mcpserver]; starts a stdio MCP server exposing Nelson-aware tools.

 The transport uses standard input and standard output. MCP JSON-RPC messages are the only data written to standard output; diagnostic messages are written to standard error.

 The default display mode is #strong[adv-cli];. It supports graphical commands used by #strong[create\_nelson\_plot]; while keeping the MCP transport on standard output. Use #strong[cli]; for text-only sessions. Use #strong[gui]; when a visible graphical Nelson session is desired while the server still runs from #strong[nelson-adv-cli];.

 Available tools are #strong[detect\_nelson\_modules];, #strong[check\_nelson\_code];, #strong[lint\_nelson\_code];, #strong[check\_nelson\_format];, #strong[evaluate\_nelson\_code];, #strong[run\_nelson\_file];, #strong[run\_nelson\_test\_file];, #strong[format\_nelson\_file];, #strong[get\_nelson\_help];, #strong[find\_nelson\_symbol];, #strong[get\_nelson\_function\_info];, #strong[get\_nelson\_workspace];, #strong[get\_nelson\_version];, and #strong[create\_nelson\_plot];.

 File-based tools resolve relative paths from the configured workspace root and refuse paths outside that root. The default workspace root is #strong[nelsonroot];.

 Tool calls return both text content and structured content with #strong[success];, #strong[output];, #strong[error];, #strong[image];, and #strong[duration]; fields.

 Long #strong[output]; and #strong[error]; fields are bounded by #strong[--max-output-characters];. Structured content includes #strong[output\_truncated]; and #strong[error\_truncated]; flags.

 Some tools also return typed metadata in the structured #strong[data]; field, for example module lists, test summary counts, version information, and PNG image metadata.

 The server also exposes local read-only resources under #strong[guidelines:\/\/]; and reusable prompts such as #strong[nelson-code-review];, #strong[nelson-test-author];, and #strong[nelson-plot-agent];.

 Ollama can provide the local language model for an MCP-capable agent. In that setup, Ollama runs the model, the agent speaks MCP, and #strong[mcpserver]; exposes Nelson tools to the agent.

 The JSON-RPC transport validates protocol version #strong[2.0];, rejects invalid requests, and supports batch requests.

 Server options can be passed as string arguments: #strong[--initial-working-folder\=PATH];, #strong[--workspace-root\=PATH];, #strong[--max-output-characters\=N];, #strong[--initialize-nelson-on-startup\=true|false];, #strong[--nelson-display-mode\=cli|adv-cli|gui];, #strong[--allow-execution\=true|false];, #strong[--allow-format\=true|false];, #strong[--log-folder\=PATH];, and #strong[--log-level\=error|warn|info|debug];.


== Examples

Start the server from an MCP client.

``````matlab

nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver"

``````

Register Nelson in Codex.

``````matlab

codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver"

``````

Register Nelson with visible graphical mode.

``````matlab

codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--nelson-display-mode=gui')"

``````

Use Nelson MCP with an Ollama-backed agent.

``````matlab

# Terminal 1: start Ollama and make sure a model is available.
ollama serve
ollama pull llama3.2

# Terminal 2: configure your MCP-capable agent with:
#   model provider: Ollama
#   model endpoint: http://127.0.0.1:11434
#   model name: llama3.2
#   MCP server name: nelson
#   MCP server command:
nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli --max-output-characters=200000')"

``````

Generic JSON-style MCP client configuration for an Ollama-backed agent.

``````matlab

{
  "model": {
    "provider": "ollama",
    "baseUrl": "http://127.0.0.1:11434",
    "name": "llama3.2"
  },
  "mcpServers": {
    "nelson": {
      "command": "nelson-adv-cli",
      "args": [
        "--quiet",
        "--noipc",
        "--nouserstartup",
        "--nousermodules",
        "-e",
        "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli --allow-execution=true --allow-format=true')"
      ]
    }
  }
}

``````

Prompt an Ollama-backed agent to use Nelson tools.

``````matlab

Use the Nelson MCP server.
First call get_nelson_workspace.
Then call get_nelson_help for "plot".
Create and run a Nelson script that plots sin(0:0.1:10).
Return the PNG path from create_nelson_plot and summarize any Nelson output.

``````


== See also

#nlink(<ai:aiask>)[aiask];, #nlink(<ai:mcpinfo>)[mcpinfo];, #nlink(<ai:mcpusage>)[mcpusage];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)
