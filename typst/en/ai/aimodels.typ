#import "nelson_help.typ": *

= aimodels <ai:aimodels>

List models available from an AI provider.

== Syntax

- #raw("models = aimodels()");
- #raw("models = aimodels(options)");
- #raw("[models, response] = aimodels(options)");

== Description

#strong[aimodels]; returns the available model names for a configured AI provider.

 For Ollama, #strong[aimodels]; calls the local #strong[\/api\/tags]; endpoint derived from the endpoint stored in #strong[options];. The default endpoint is #strong[http:\/\/127.0.0.1:11434\/api\/tags];.

 For OpenAI-compatible providers, #strong[aimodels]; calls #strong[\/v1\/models]; derived from the configured endpoint and uses #strong[TokenEnvVar]; as a bearer token when provided.

 The first output is a cell array of model names. The optional second output is the raw provider response.


== Examples

List local Ollama models.

``````matlab

models = aimodels()

``````

Use the first available Ollama model with aiask.

``````matlab

models = aimodels();
opts = aioptions('Provider', 'ollama', ...
                 'Model', models{1}, ...
                 'SystemPrompt', 'Return only Nelson code. Nelson functions use syntax: function y = name(x), statements, end.', ...
                 'Think', false, ...
                 'NumPredict', 120, ...
                 'Temperature', 0);
answer = aiask('Write function y = vector_mean(x). Use y = mean(x).', opts)

``````

Use a known local Ollama model.

``````matlab

opts = aioptions('Provider', 'ollama', ...
                 'Model', 'gemma4:latest', ...
                 'SystemPrompt', 'Return only Nelson code. Nelson functions use syntax: function y = name(x), statements, end.', ...
                 'Think', false, ...
                 'NumPredict', 120, ...
                 'Temperature', 0);
answer = aiask('Write function y = vector_mean(x). Use y = mean(x).', opts)

``````

List models from an OpenAI-compatible local endpoint.

``````matlab

opts = aioptions('Provider', 'openai-compatible', ...
                 'Endpoint', 'http://127.0.0.1:8000/v1/chat/completions', ...
                 'Timeout', 30);
models = aimodels(opts)

``````

List models from an OpenAI-compatible endpoint requiring a token.

``````matlab

% Define MY_AI_TOKEN in the environment before starting Nelson.
opts = aioptions('Provider', 'openai-compatible', ...
                 'Endpoint', 'https://example.local/v1/chat/completions', ...
                 'TokenEnvVar', 'MY_AI_TOKEN', ...
                 'Timeout', 30);
models = aimodels(opts)

``````


== See also

#nlink(<ai:aiask>)[aiask];, #nlink(<ai:aioptions>)[aioptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)
