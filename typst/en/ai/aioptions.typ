#import "nelson_help.typ": *

= aioptions <ai:aioptions>

Create options for AI provider requests.

== Syntax

- #raw("options = aioptions()");
- #raw("options = aioptions(name, value, ...)");

== Description

#strong[aioptions]; creates a scalar struct used by #strong[aiask];.

 The default provider is #strong[ollama];, the default model is #strong[llama3];, and the default endpoint is #strong[http:\/\/127.0.0.1:11434\/api\/generate];.

 Supported options are #strong[Provider];, #strong[Model];, #strong[Endpoint];, #strong[TokenEnvVar];, #strong[Timeout];, #strong[SystemPrompt];, #strong[Think];, #strong[NumPredict];, and #strong[Temperature];.

 For Ollama, #strong[Think];, #strong[NumPredict];, and #strong[Temperature]; are sent in the request payload. Use them to keep local model responses bounded.


== Example

Create Ollama options for a local model.

``````matlab

opts = aioptions('Provider', 'ollama', ...
                 'Model', 'llama3.2', ...
                 'Endpoint', 'http://127.0.0.1:11434/api/generate', ...
                 'Timeout', 180, ...
                 'Think', false, ...
                 'NumPredict', 200, ...
                 'Temperature', 0);

``````


== See also

#nlink(<ai:aiask>)[aiask];, #nlink(<ai:aimodels>)[aimodels];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)
