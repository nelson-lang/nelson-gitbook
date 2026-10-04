# aiask

Interroge un fournisseur IA externe depuis Nelson.

## 📝 Syntaxe

- text = aiask(prompt)
- [text, response] = aiask(prompt, options)

## 📄 Description

<b>aiask</b> appelle un fournisseur IA configure tel qu'Ollama ou un endpoint HTTP compatible OpenAI.

Pour Ollama, <b>aiask</b> utilise par defaut l'endpoint HTTP local <b>http://127.0.0.1:11434/api/generate</b> et envoie des requetes sans streaming.

Cette fonction interroge le fournisseur directement depuis Nelson. Elle n'expose pas les outils MCP. Utiliser <b>mcpserver</b> lorsqu'un agent externe doit appeler les outils Nelson.

## 💡 Exemples

Interroger un modele Ollama local avec l'endpoint par defaut.

```matlab

% Dans un terminal, demarrer Ollama et telecharger un modele:
%   ollama serve
%   ollama pull llama3.2

opts = aioptions('Provider', 'ollama', ...
                 'Model', 'llama3.2', ...
                 'Endpoint', 'http://127.0.0.1:11434/api/generate', ...
                 'Timeout', 120, ...
                 'SystemPrompt', 'Retourne uniquement du code Nelson. Les fonctions Nelson utilisent la syntaxe: function y = name(x), instructions, end.', ...
                 'Think', false, ...
                 'NumPredict', 200, ...
                 'Temperature', 0);

answer = aiask('Ecris une fonction y = vector_mean(x). Utilise y = mean(x).', opts)

```

Retourner le texte genere et la reponse Ollama brute.

```matlab

opts = aioptions('Provider', 'ollama', 'Model', 'llama3.2');
[text, response] = aiask('Explique la difference entre plot et semilogy dans Nelson.', opts);
disp(text)
disp(response.total_duration)

```

Utiliser le premier modele Ollama local avec une reponse limitee.

```matlab

models = aimodels();
opts = aioptions('Provider', 'ollama', ...
                 'Model', models{1}, ...
                 'SystemPrompt', 'Retourne uniquement du code Nelson. Les fonctions Nelson utilisent la syntaxe: function y = name(x), instructions, end.', ...
                 'Think', false, ...
                 'NumPredict', 120, ...
                 'Temperature', 0);
answer = aiask('Ecris une fonction y = vector_mean(x). Utilise y = mean(x).', opts)

```

## 🔗 Voir aussi

[aimodels](../ai/aimodels.md), [aioptions](../ai/aioptions.md), [mcpserver](../ai/mcpserver.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |
