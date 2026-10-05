# mcpusage

Use Nelson through MCP from an AI agent.

## 📄 Description


<b>mcpusage</b> explains how to connect an MCP-capable AI agent to Nelson. 

Nelson runs the MCP server with <b>mcpserver</b>. The AI agent is the MCP client. A local model provider such as Ollama can run the language model, but Ollama itself is not the MCP client. 

The recommended executable is <b>nelson-adv-cli</b>, because it can run graphical commands used by <b>create\_nelson\_plot</b> while keeping standard output reserved for MCP JSON-RPC messages. 

Registering Nelson in an MCP client is usually a one-time configuration step. Repeat it only when the Nelson executable path, server name, workspace root, or server options change. 

Use <b>--workspace-root</b> to restrict file-based tools to a project folder. Use <b>--allow-execution=false</b> to disable execution tools, and <b>--allow-format=false</b> to disable formatting tools.

## 💡 Examples

Start the Nelson MCP server manually.

```matlab

nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli')"

```
Register Nelson as an MCP server in Codex.

```matlab

# Run this once per Codex configuration. Run it again only to change the command or options.
codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli')"

```
Generic MCP client configuration using a local Ollama model.

```matlab

{
  "model": {
    "provider": "ollama",
    "baseUrl": "http://127.0.0.1:11434",
    "name": "gemma4:latest"
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
        "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli --max-output-characters=200000')"
      ]
    }
  }
}

```
Suggested first prompt for an MCP agent.

```matlab

Use the Nelson MCP server.
First call get_nelson_workspace.
Then call get_nelson_version.
Use get_nelson_help when you need Nelson syntax.
Before editing files, inspect them with read-only tools.
When creating a plot, use create_nelson_plot and return the PNG path.

```
Useful MCP tools exposed by Nelson.

```matlab

get_nelson_workspace      Inspect root folders and active policy.
get_nelson_version        Inspect Nelson and MCP server versions.
get_nelson_help           Read local help for a symbol.
detect_nelson_modules     List modules, functions, tests, builtins, and help files.
find_nelson_symbol        Locate definitions, tests, registrations, and help.
get_nelson_function_info  Inspect which, nargin, nargout, tests, and help for a symbol.
lint_nelson_code          Run nelson-lint on a file or folder without editing files.
check_nelson_format       Check nelson-format output without editing files.
evaluate_nelson_code      Execute a Nelson snippet.
run_nelson_file           Execute a .m file.
run_nelson_test_file      Run a test file or module.
format_nelson_file        Format a .m file inside the workspace root.
create_nelson_plot        Execute plotting code and return a PNG path.

```
Diagnose common MCP setup problems.

```matlab

If the client cannot list tools:
  Check that the MCP server was registered in the client configuration.
  Check that nelson-adv-cli is in PATH or use an absolute path.
  Keep --quiet --noipc in the command.
  Do not write diagnostic text to standard output.

If the workspace or options changed:
  Update the MCP client registration.
  In Codex, run codex mcp add again with the new mcpserver options.

If file tools are refused:
  Check --workspace-root and use paths inside that folder.

If plot generation fails:
  Use --nelson-display-mode=adv-cli or --nelson-display-mode=gui.
  The cli display mode is text only.

If responses are too large:
  Lower --max-output-characters or ask the agent to return smaller outputs.

```


## 🔗 See also

[mcpserver](../ai/mcpserver.md), [mcpinfo](../ai/mcpinfo.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
