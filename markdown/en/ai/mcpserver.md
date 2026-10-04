# mcpserver

Start Nelson MCP server on standard input and output.

## 📝 Syntax

- mcpserver()
- mcpserver('--nelson-display-mode=gui')

## 📄 Description

<b>mcpserver</b> starts a stdio MCP server exposing Nelson-aware tools.

The transport uses standard input and standard output. MCP JSON-RPC messages are the only data written to standard output; diagnostic messages are written to standard error.

The default display mode is <b>adv-cli</b>. It supports graphical commands used by <b>create_nelson_plot</b> while keeping the MCP transport on standard output. Use <b>cli</b> for text-only sessions. Use <b>gui</b> when a visible graphical Nelson session is desired while the server still runs from <b>nelson-adv-cli</b>.

Available tools are <b>detect_nelson_modules</b>, <b>check_nelson_code</b>, <b>lint_nelson_code</b>, <b>check_nelson_format</b>, <b>evaluate_nelson_code</b>, <b>run_nelson_file</b>, <b>run_nelson_test_file</b>, <b>format_nelson_file</b>, <b>get_nelson_help</b>, <b>find_nelson_symbol</b>, <b>get_nelson_function_info</b>, <b>get_nelson_workspace</b>, <b>get_nelson_version</b>, and <b>create_nelson_plot</b>.

File-based tools resolve relative paths from the configured workspace root and refuse paths outside that root. The default workspace root is <b>nelsonroot</b>.

Tool calls return both text content and structured content with <b>success</b>, <b>output</b>, <b>error</b>, <b>image</b>, and <b>duration</b> fields.

Long <b>output</b> and <b>error</b> fields are bounded by <b>--max-output-characters</b>. Structured content includes <b>output_truncated</b> and <b>error_truncated</b> flags.

Some tools also return typed metadata in the structured <b>data</b> field, for example module lists, test summary counts, version information, and PNG image metadata.

The server also exposes local read-only resources under <b>guidelines://</b> and reusable prompts such as <b>nelson-code-review</b>, <b>nelson-test-author</b>, and <b>nelson-plot-agent</b>.

Ollama can provide the local language model for an MCP-capable agent. In that setup, Ollama runs the model, the agent speaks MCP, and <b>mcpserver</b> exposes Nelson tools to the agent.

The JSON-RPC transport validates protocol version <b>2.0</b>, rejects invalid requests, and supports batch requests.

Server options can be passed as string arguments: <b>--initial-working-folder=PATH</b>, <b>--workspace-root=PATH</b>, <b>--max-output-characters=N</b>, <b>--initialize-nelson-on-startup=true\|false</b>, <b>--nelson-display-mode=cli\|adv-cli\|gui</b>, <b>--allow-execution=true\|false</b>, <b>--allow-format=true\|false</b>, <b>--log-folder=PATH</b>, and <b>--log-level=error\|warn\|info\|debug</b>.

## 💡 Examples

Start the server from an MCP client.

```matlab

nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver"

```

Register Nelson in Codex.

```matlab

codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver"

```

Register Nelson with visible graphical mode.

```matlab

codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--nelson-display-mode=gui')"

```

Use Nelson MCP with an Ollama-backed agent.

```matlab

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

```

Generic JSON-style MCP client configuration for an Ollama-backed agent.

```matlab

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

```

Prompt an Ollama-backed agent to use Nelson tools.

```matlab

Use the Nelson MCP server.
First call get_nelson_workspace.
Then call get_nelson_help for "plot".
Create and run a Nelson script that plots sin(0:0.1:10).
Return the PNG path from create_nelson_plot and summarize any Nelson output.

```

## 🔗 See also

[aiask](../ai/aiask.md), [mcpinfo](../ai/mcpinfo.md), [mcpusage](../ai/mcpusage.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |
