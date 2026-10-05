# aioptions

Create options for AI provider requests.

## 📝 Syntax

- options = aioptions()
- options = aioptions(name, value, ...)

## 📄 Description


<b>aioptions</b> creates a scalar struct used by <b>aiask</b>. 

The default provider is <b>ollama</b>, the default model is <b>llama3</b>, and the default endpoint is <b>http://127.0.0.1:11434/api/generate</b>. 

Supported options are <b>Provider</b>, <b>Model</b>, <b>Endpoint</b>, <b>TokenEnvVar</b>, <b>Timeout</b>, <b>SystemPrompt</b>, <b>Think</b>, <b>NumPredict</b>, and <b>Temperature</b>. 

For Ollama, <b>Think</b>, <b>NumPredict</b>, and <b>Temperature</b> are sent in the request payload. Use them to keep local model responses bounded.

## 💡 Example

Create Ollama options for a local model.

```matlab

opts = aioptions('Provider', 'ollama', ...
                 'Model', 'llama3.2', ...
                 'Endpoint', 'http://127.0.0.1:11434/api/generate', ...
                 'Timeout', 180, ...
                 'Think', false, ...
                 'NumPredict', 200, ...
                 'Temperature', 0);

```


## 🔗 See also

[aiask](../ai/aiask.md), [aimodels](../ai/aimodels.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
