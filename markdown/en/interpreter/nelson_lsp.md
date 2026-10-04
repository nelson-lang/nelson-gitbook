# nelson-lsp

Language Server Protocol endpoint for Nelson code diagnostics.

## 📝 Syntax

- nelson-lsp

## 📄 Description

<b>nelson-lsp</b> is a JSON-RPC Language Server Protocol endpoint over standard input and standard output.

The executable is intended to be started by an editor or IDE. It does not open a prompt and it does not read command line source files. The client sends Language Server Protocol messages on stdin using the standard <b>Content-Length</b> header, and the server writes JSON-RPC responses and notifications on stdout.

The server keeps a lightweight document and workspace model. Open documents are indexed with their current text, version, diagnostics, symbols, local functions, classes, imports, and local variables. Workspace roots are indexed independently; each root keeps the discovered <b>.m</b> files, public functions, local functions, classes, module paths, and a cache invalidated by file time, content hash, and lint configuration.

The server publishes diagnostics from the Nelson code analyzer for opened buffers. Diagnostics use <b>nelson-lint</b> as their source and expose the analyzer rule identifier, severity, message, range, stable <b>data</b> for later code actions, <b>codeDescription</b> help links, <b>relatedInformation</b>, and LSP tags for unused or obsolete items when applicable.

Editors that use pull diagnostics can call <b>textDocument/diagnostic</b> for a single document or <b>workspace/diagnostic</b> for all files under the initialized workspace roots. Workspace diagnostics reuse the analyzer recursive scan, honor the shared include and exclude configuration, and support partial progress notifications.

Quick fixes are returned through <b>textDocument/codeAction</b>. If a diagnostic carries safe text edits, the server returns a <b>quickfix</b> action that applies those edits. For every non-suppressed diagnostic, the server also proposes a local suppression action that appends <b>%#ok<ID></b> on the diagnostic line and a file suppression action at the top of the file.

Source actions include <b>source.fixAll.nelson-lint</b> for all safe lint fixes in a document, <b>source.organizeImports</b> for import cleanup, and <b>source.nelson.generateHelpSkeleton</b> for generating a help skeleton command. Some diagnostics can also propose richer quick fixes, such as creating a missing function file or adding a local function stub.

Formatting is exposed through <b>textDocument/formatting</b>, <b>textDocument/rangeFormatting</b>, and <b>textDocument/onTypeFormatting</b>. The server uses the same Nelson formatter core as <b>nelson-format</b> and returns text edits suitable for format-on-save and editor-triggered formatting.

The navigation and editing surface supports <b>textDocument/hover</b>, <b>textDocument/completion</b>, <b>completionItem/resolve</b>, <b>textDocument/signatureHelp</b>, <b>textDocument/definition</b>, <b>textDocument/declaration</b>, <b>textDocument/implementation</b>, <b>textDocument/references</b>, <b>textDocument/documentHighlight</b>, <b>textDocument/prepareRename</b>, and <b>textDocument/rename</b>. Rename is intentionally limited to local edits in the current document.

Completion items cover Nelson keywords, snippets, local variables, local functions, workspace functions, classes, and known module paths. Hover requests return analyzer rule information when the cursor is on a diagnostic, or symbol information when the cursor is on a known local or workspace symbol.

The structural IDE surface supports <b>textDocument/documentSymbol</b>, <b>workspace/symbol</b>, <b>textDocument/foldingRange</b>, <b>textDocument/selectionRange</b>, <b>textDocument/semanticTokens/full</b>, <b>textDocument/codeLens</b>, and <b>textDocument/documentLink</b>. Semantic tokens identify keywords, functions, variables, classes, properties, methods, strings, and comments.

Code lenses expose prepared actions to run the current file, run the module tests, and inspect the current document issue count. Document links are returned for file-like paths found in source text.

The <b>workspace/executeCommand</b> provider accepts <b>nelson.runFile</b>, <b>nelson.runSelection</b>, <b>nelson.runTestsForModule</b>, <b>nelson.openHelp</b>, <b>nelson.lintWorkspace</b>, <b>nelson.clearLspCache</b>, and <b>nelson.createFunctionFile</b>. Commands return structured data for the client to execute or display; the server does not edit files unless the client explicitly applies a returned workspace edit or command result.

The current protocol surface supports <b>initialize</b>, <b>shutdown</b>, <b>exit</b>, <b>$/cancelRequest</b>, <b>workspace/didChangeConfiguration</b>, <b>workspace/didChangeWorkspaceFolders</b>, <b>workspace/executeCommand</b>, <b>workspace/symbol</b>, <b>textDocument/didOpen</b>, <b>textDocument/didChange</b>, <b>textDocument/didSave</b>, <b>textDocument/didClose</b>, <b>textDocument/willSaveWaitUntil</b>, <b>textDocument/diagnostic</b>, <b>workspace/diagnostic</b>, <b>textDocument/formatting</b>, <b>textDocument/rangeFormatting</b>, <b>textDocument/onTypeFormatting</b>, <b>textDocument/codeAction</b>, <b>codeAction/resolve</b>, <b>textDocument/hover</b>, <b>textDocument/completion</b>, <b>completionItem/resolve</b>, <b>textDocument/signatureHelp</b>, <b>textDocument/definition</b>, <b>textDocument/declaration</b>, <b>textDocument/implementation</b>, <b>textDocument/references</b>, <b>textDocument/documentHighlight</b>, <b>textDocument/prepareRename</b>, <b>textDocument/rename</b>, <b>textDocument/documentSymbol</b>, <b>textDocument/foldingRange</b>, <b>textDocument/selectionRange</b>, <b>textDocument/semanticTokens/full</b>, <b>textDocument/codeLens</b>, and <b>textDocument/documentLink</b>.

The <b>initialize</b> response advertises incremental text synchronization, open and close notifications, pull diagnostics, workspace diagnostics, document formatting, range formatting, on-type formatting, code actions with resolve support, hover information, completion with resolve support, signature help, definition navigation, declaration navigation, implementation navigation, references, document highlights, prepare-rename support, document symbols, workspace symbols, folding ranges, selection ranges, semantic tokens, code lenses, document links, execute commands, workspace folders, and save notifications. <b>textDocument/didChange</b> accepts both full-document changes and ranged incremental patches in the order sent by the client.

When a client sends document versions, diagnostics published for open documents include the same version. Workspace diagnostics use <b>null</b> as the version for files analyzed from disk and the current version for open buffers.

Workspace diagnostics support <b>partialResultToken</b>. When the token is present, the server sends the diagnostic items through a <b>$/progress</b> partial-result notification and returns an empty final item list for that request.

Hover requests over an active diagnostic return Markdown with the analyzer rule identifier, rule name, severity, category, fixability, short description, diagnostic message, and help link when available.

File URIs using the <b>file:///</b> scheme are mapped to local paths before analysis. Other URI schemes are analyzed as an in-memory buffer named <b>buffer.m</b>.

Configuration is shared with the code analyzer. When a workspace contains a Nelson lint configuration file, the diagnostics follow the same rule severities and thresholds as <b>checkcode</b>, <b>codeIssues</b>, and <b>nelson-lint</b>.

Editors can also send <b>workspace/didChangeConfiguration</b>. The server accepts lint settings under <b>settings.nelson.lint</b>, <b>settings.nelsonLint</b>, <b>settings.nelson-lint</b>, or a top-level object containing <b>rules</b> or <b>files</b>. Supported fields match the lint configuration shape for <b>rules</b>, <b>files.include</b>, and <b>files.exclude</b>; these settings are applied over the workspace configuration for future diagnostics and open buffers are refreshed.

Cancellation follows the Language Server Protocol <b>$/cancelRequest</b> notification. If a queued request is cancelled before it is handled, the server returns a JSON-RPC error with code <b>-32800</b>.

## Used function(s)

checkcode, codeIssues, nelson-lint, nelson-format

## 💡 Examples

Start the server from an editor client.

```matlab
nelson-lsp
```

Typical editor command configuration.

```matlab

{
  "command": "nelson-lsp",
  "args": [],
  "transport": "stdio",
  "filetypes": ["nelson", "m"]
}

```

Minimal initialize request body sent after the Content-Length header.

```matlab

{
  "jsonrpc": "2.0",
  "id": 1,
  "method": "initialize",
  "params": {
    "processId": null,
    "rootUri": "file:///C:/work/project",
    "capabilities": {}
  }
}

```

Open a document and receive diagnostics.

```matlab

{
  "jsonrpc": "2.0",
  "method": "textDocument/didOpen",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m",
      "languageId": "nelson",
      "version": 1,
      "text": "function y = example(x)\ny = x + 1;\nend\n"
    }
  }
}

```

Request quick fixes and suppressions for the current buffer.

```matlab

{
  "jsonrpc": "2.0",
  "id": 2,
  "method": "textDocument/codeAction",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m"
    },
    "range": {
      "start": { "line": 0, "character": 0 },
      "end": { "line": 0, "character": 0 }
    },
    "context": {
      "diagnostics": []
    }
  }
}

```

Apply an incremental change with a text range.

```matlab

{
  "jsonrpc": "2.0",
  "method": "textDocument/didChange",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m",
      "version": 2
    },
    "contentChanges": [
      {
        "range": {
          "start": { "line": 1, "character": 5 },
          "end": { "line": 1, "character": 5 }
        },
        "text": " + 1"
      }
    ]
  }
}

```

Request format-on-save edits.

```matlab

{
  "jsonrpc": "2.0",
  "id": 3,
  "method": "textDocument/willSaveWaitUntil",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m"
    },
    "reason": 1
  }
}

```

Update lint settings from an editor.

```matlab

{
  "jsonrpc": "2.0",
  "method": "workspace/didChangeConfiguration",
  "params": {
    "settings": {
      "nelson": {
        "lint": {
          "rules": {
            "NLS0010": { "level": "allow" }
          }
        }
      }
    }
  }
}

```

Request workspace diagnostics after initialize.

```matlab

{
  "jsonrpc": "2.0",
  "id": 4,
  "method": "workspace/diagnostic",
  "params": {
    "previousResultIds": []
  }
}

```

Request completion items at the current cursor position.

```matlab

{
  "jsonrpc": "2.0",
  "id": 5,
  "method": "textDocument/completion",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m"
    },
    "position": { "line": 1, "character": 4 }
  }
}

```

Request a prepared command through the LSP command provider.

```matlab

{
  "jsonrpc": "2.0",
  "id": 6,
  "method": "workspace/executeCommand",
  "params": {
    "command": "nelson.runFile",
    "arguments": ["file:///C:/work/project/example.m"]
  }
}

```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
