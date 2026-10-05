# aiask

Ask an external AI provider from Nelson.

## 📝 Syntax

- text = aiask(prompt)
- [text, response] = aiask(prompt, options)

## 📄 Description


<b>aiask</b> calls a configured AI provider such as Ollama or an OpenAI-compatible HTTP endpoint. 

For Ollama, <b>aiask</b> uses the local HTTP API endpoint <b>http://127.0.0.1:11434/api/generate</b> by default and sends non-streaming requests. 

This function asks the provider directly from Nelson. It does not expose MCP tools. Use <b>mcpserver</b> when an external agent must call Nelson tools.

## 💡 Examples

Ask a local Ollama model with the default endpoint.

```matlab

% In a terminal, start Ollama and pull a model first:
%   ollama serve
%   ollama pull llama3.2

opts = aioptions('Provider', 'ollama', ...
                 'Model', 'llama3.2', ...
                 'Endpoint', 'http://127.0.0.1:11434/api/generate', ...
                 'Timeout', 120, ...
                 'SystemPrompt', 'Return only Nelson code. Nelson functions use syntax: function y = name(x), statements, end.', ...
                 'Think', false, ...
                 'NumPredict', 200, ...
                 'Temperature', 0);

answer = aiask('Write function y = vector_mean(x). Use y = mean(x).', opts)

```
Return both the generated text and the raw Ollama response.

```matlab

opts = aioptions('Provider', 'ollama', 'Model', 'llama3.2');
[text, response] = aiask('Explain the difference between plot and semilogy in Nelson.', opts);
disp(text)
disp(response.total_duration)

```
Use the first local Ollama model with a bounded response.

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


## 🔗 See also

[aimodels](../ai/aimodels.md), [aioptions](../ai/aioptions.md), [mcpserver](../ai/mcpserver.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
