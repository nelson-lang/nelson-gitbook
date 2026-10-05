# aimodels

List models available from an AI provider.

## 📝 Syntax

- models = aimodels()
- models = aimodels(options)
- [models, response] = aimodels(options)

## 📄 Description


<b>aimodels</b> returns the available model names for a configured AI provider. 

For Ollama, <b>aimodels</b> calls the local <b>/api/tags</b> endpoint derived from the endpoint stored in <b>options</b>. The default endpoint is <b>http://127.0.0.1:11434/api/tags</b>. 

For OpenAI-compatible providers, <b>aimodels</b> calls <b>/v1/models</b> derived from the configured endpoint and uses <b>TokenEnvVar</b> as a bearer token when provided. 

The first output is a cell array of model names. The optional second output is the raw provider response.

## 💡 Examples

List local Ollama models.

```matlab

models = aimodels()

```
Use the first available Ollama model with aiask.

```matlab

models = aimodels();
opts = aioptions('Provider', 'ollama', ...
                 'Model', models{1}, ...
                 'SystemPrompt', 'Return only Nelson code. Nelson functions use syntax: function y = name(x), statements, end.', ...
                 'Think', false, ...
                 'NumPredict', 120, ...
                 'Temperature', 0);
answer = aiask('Write function y = vector_mean(x). Use y = mean(x).', opts)

```
Use a known local Ollama model.

```matlab

opts = aioptions('Provider', 'ollama', ...
                 'Model', 'gemma4:latest', ...
                 'SystemPrompt', 'Return only Nelson code. Nelson functions use syntax: function y = name(x), statements, end.', ...
                 'Think', false, ...
                 'NumPredict', 120, ...
                 'Temperature', 0);
answer = aiask('Write function y = vector_mean(x). Use y = mean(x).', opts)

```
List models from an OpenAI-compatible local endpoint.

```matlab

opts = aioptions('Provider', 'openai-compatible', ...
                 'Endpoint', 'http://127.0.0.1:8000/v1/chat/completions', ...
                 'Timeout', 30);
models = aimodels(opts)

```
List models from an OpenAI-compatible endpoint requiring a token.

```matlab

% Define MY_AI_TOKEN in the environment before starting Nelson.
opts = aioptions('Provider', 'openai-compatible', ...
                 'Endpoint', 'https://example.local/v1/chat/completions', ...
                 'TokenEnvVar', 'MY_AI_TOKEN', ...
                 'Timeout', 30);
models = aimodels(opts)

```


## 🔗 See also

[aiask](../ai/aiask.md), [aioptions](../ai/aioptions.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
