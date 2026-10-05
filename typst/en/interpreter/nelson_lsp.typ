#import "nelson_help.typ": *

= nelson-lsp <interpreter:nelson_lsp>

Language Server Protocol endpoint for Nelson code diagnostics.

== Syntax

- #raw("nelson-lsp");

== Description

#strong[nelson-lsp]; is a JSON-RPC Language Server Protocol endpoint over standard input and standard output.

 The executable is intended to be started by an editor or IDE. It does not open a prompt and it does not read command line source files. The client sends Language Server Protocol messages on stdin using the standard #strong[Content-Length]; header, and the server writes JSON-RPC responses and notifications on stdout.

 The server keeps a lightweight document and workspace model. Open documents are indexed with their current text, version, diagnostics, symbols, local functions, classes, imports, and local variables. Workspace roots are indexed independently; each root keeps the discovered #strong[.m]; files, public functions, local functions, classes, module paths, and a cache invalidated by file time, content hash, and lint configuration.

 The server publishes diagnostics from the Nelson code analyzer for opened buffers. Diagnostics use #strong[nelson-lint]; as their source and expose the analyzer rule identifier, severity, message, range, stable #strong[data]; for later code actions, #strong[codeDescription]; help links, #strong[relatedInformation];, and LSP tags for unused or obsolete items when applicable.

 Editors that use pull diagnostics can call #strong[textDocument\/diagnostic]; for a single document or #strong[workspace\/diagnostic]; for all files under the initialized workspace roots. Workspace diagnostics reuse the analyzer recursive scan, honor the shared include and exclude configuration, and support partial progress notifications.

 Quick fixes are returned through #strong[textDocument\/codeAction];. If a diagnostic carries safe text edits, the server returns a #strong[quickfix]; action that applies those edits. For every non-suppressed diagnostic, the server also proposes a local suppression action that appends #strong[%\#ok\<ID\>]; on the diagnostic line and a file suppression action at the top of the file.

 Source actions include #strong[source.fixAll.nelson-lint]; for all safe lint fixes in a document, #strong[source.organizeImports]; for import cleanup, and #strong[source.nelson.generateHelpSkeleton]; for generating a help skeleton command. Some diagnostics can also propose richer quick fixes, such as creating a missing function file or adding a local function stub.

 Formatting is exposed through #strong[textDocument\/formatting];, #strong[textDocument\/rangeFormatting];, and #strong[textDocument\/onTypeFormatting];. The server uses the same Nelson formatter core as #strong[nelson-format]; and returns text edits suitable for format-on-save and editor-triggered formatting.

 The navigation and editing surface supports #strong[textDocument\/hover];, #strong[textDocument\/completion];, #strong[completionItem\/resolve];, #strong[textDocument\/signatureHelp];, #strong[textDocument\/definition];, #strong[textDocument\/declaration];, #strong[textDocument\/implementation];, #strong[textDocument\/references];, #strong[textDocument\/documentHighlight];, #strong[textDocument\/prepareRename];, and #strong[textDocument\/rename];. Rename is intentionally limited to local edits in the current document.

 Completion items cover Nelson keywords, snippets, local variables, local functions, workspace functions, classes, and known module paths. Hover requests return analyzer rule information when the cursor is on a diagnostic, or symbol information when the cursor is on a known local or workspace symbol.

 The structural IDE surface supports #strong[textDocument\/documentSymbol];, #strong[workspace\/symbol];, #strong[textDocument\/foldingRange];, #strong[textDocument\/selectionRange];, #strong[textDocument\/semanticTokens\/full];, #strong[textDocument\/codeLens];, and #strong[textDocument\/documentLink];. Semantic tokens identify keywords, functions, variables, classes, properties, methods, strings, and comments.

 Code lenses expose prepared actions to run the current file, run the module tests, and inspect the current document issue count. Document links are returned for file-like paths found in source text.

 The #strong[workspace\/executeCommand]; provider accepts #strong[nelson.runFile];, #strong[nelson.runSelection];, #strong[nelson.runTestsForModule];, #strong[nelson.openHelp];, #strong[nelson.lintWorkspace];, #strong[nelson.clearLspCache];, and #strong[nelson.createFunctionFile];. Commands return structured data for the client to execute or display; the server does not edit files unless the client explicitly applies a returned workspace edit or command result.

 The current protocol surface supports #strong[initialize];, #strong[shutdown];, #strong[exit];, #strong[\$\/cancelRequest];, #strong[workspace\/didChangeConfiguration];, #strong[workspace\/didChangeWorkspaceFolders];, #strong[workspace\/executeCommand];, #strong[workspace\/symbol];, #strong[textDocument\/didOpen];, #strong[textDocument\/didChange];, #strong[textDocument\/didSave];, #strong[textDocument\/didClose];, #strong[textDocument\/willSaveWaitUntil];, #strong[textDocument\/diagnostic];, #strong[workspace\/diagnostic];, #strong[textDocument\/formatting];, #strong[textDocument\/rangeFormatting];, #strong[textDocument\/onTypeFormatting];, #strong[textDocument\/codeAction];, #strong[codeAction\/resolve];, #strong[textDocument\/hover];, #strong[textDocument\/completion];, #strong[completionItem\/resolve];, #strong[textDocument\/signatureHelp];, #strong[textDocument\/definition];, #strong[textDocument\/declaration];, #strong[textDocument\/implementation];, #strong[textDocument\/references];, #strong[textDocument\/documentHighlight];, #strong[textDocument\/prepareRename];, #strong[textDocument\/rename];, #strong[textDocument\/documentSymbol];, #strong[textDocument\/foldingRange];, #strong[textDocument\/selectionRange];, #strong[textDocument\/semanticTokens\/full];, #strong[textDocument\/codeLens];, and #strong[textDocument\/documentLink];.

 The #strong[initialize]; response advertises incremental text synchronization, open and close notifications, pull diagnostics, workspace diagnostics, document formatting, range formatting, on-type formatting, code actions with resolve support, hover information, completion with resolve support, signature help, definition navigation, declaration navigation, implementation navigation, references, document highlights, prepare-rename support, document symbols, workspace symbols, folding ranges, selection ranges, semantic tokens, code lenses, document links, execute commands, workspace folders, and save notifications. #strong[textDocument\/didChange]; accepts both full-document changes and ranged incremental patches in the order sent by the client.

 When a client sends document versions, diagnostics published for open documents include the same version. Workspace diagnostics use #strong[null]; as the version for files analyzed from disk and the current version for open buffers.

 Workspace diagnostics support #strong[partialResultToken];. When the token is present, the server sends the diagnostic items through a #strong[\$\/progress]; partial-result notification and returns an empty final item list for that request.

 Hover requests over an active diagnostic return Markdown with the analyzer rule identifier, rule name, severity, category, fixability, short description, diagnostic message, and help link when available.

 File URIs using the #strong[file:\/\/\/]; scheme are mapped to local paths before analysis. Other URI schemes are analyzed as an in-memory buffer named #strong[buffer.m];.

 Configuration is shared with the code analyzer. When a workspace contains a Nelson lint configuration file, the diagnostics follow the same rule severities and thresholds as #strong[checkcode];, #strong[codeIssues];, and #strong[nelson-lint];.

 Editors can also send #strong[workspace\/didChangeConfiguration];. The server accepts lint settings under #strong[settings.nelson.lint];, #strong[settings.nelsonLint];, #strong[settings.nelson-lint];, or a top-level object containing #strong[rules]; or #strong[files];. Supported fields match the lint configuration shape for #strong[rules];, #strong[files.include];, and #strong[files.exclude];; these settings are applied over the workspace configuration for future diagnostics and open buffers are refreshed.

 Cancellation follows the Language Server Protocol #strong[\$\/cancelRequest]; notification. If a queued request is cancelled before it is handled, the server returns a JSON-RPC error with code #strong[-32800];.


== Used function(s)

checkcode, codeIssues, nelson-lint, nelson-format

== Examples

Start the server from an editor client.

``````matlab
nelson-lsp
``````

Typical editor command configuration.

``````matlab

{
  "command": "nelson-lsp",
  "args": [],
  "transport": "stdio",
  "filetypes": ["nelson", "m"]
}

``````

Minimal initialize request body sent after the Content-Length header.

``````matlab

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

``````

Open a document and receive diagnostics.

``````matlab

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

``````

Request quick fixes and suppressions for the current buffer.

``````matlab

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

``````

Apply an incremental change with a text range.

``````matlab

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

``````

Request format-on-save edits.

``````matlab

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

``````

Update lint settings from an editor.

``````matlab

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

``````

Request workspace diagnostics after initialize.

``````matlab

{
  "jsonrpc": "2.0",
  "id": 4,
  "method": "workspace/diagnostic",
  "params": {
    "previousResultIds": []
  }
}

``````

Request completion items at the current cursor position.

``````matlab

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

``````

Request a prepared command through the LSP command provider.

``````matlab

{
  "jsonrpc": "2.0",
  "id": 6,
  "method": "workspace/executeCommand",
  "params": {
    "command": "nelson.runFile",
    "arguments": ["file:///C:/work/project/example.m"]
  }
}

``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
