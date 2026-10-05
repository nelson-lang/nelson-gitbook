# aioptions

Cree les options pour les requetes a un fournisseur IA.

## 📝 Syntaxe

- options = aioptions()
- options = aioptions(name, value, ...)

## 📄 Description


<b>aioptions</b> cree une structure scalaire utilisee par <b>aiask</b>. 

Le fournisseur par defaut est <b>ollama</b>, le modele par defaut est <b>llama3</b>, et l'endpoint par defaut est <b>http://127.0.0.1:11434/api/generate</b>. 

Les options supportees sont <b>Provider</b>, <b>Model</b>, <b>Endpoint</b>, <b>TokenEnvVar</b>, <b>Timeout</b>, <b>SystemPrompt</b>, <b>Think</b>, <b>NumPredict</b> et <b>Temperature</b>. 

Pour Ollama, <b>Think</b>, <b>NumPredict</b> et <b>Temperature</b> sont envoyes dans la requete. Utilisez-les pour limiter les reponses des modeles locaux.

## 💡 Exemple

Creer des options Ollama pour un modele local.

```matlab

opts = aioptions('Provider', 'ollama', ...
                 'Model', 'llama3.2', ...
                 'Endpoint', 'http://127.0.0.1:11434/api/generate', ...
                 'Timeout', 180, ...
                 'Think', false, ...
                 'NumPredict', 200, ...
                 'Temperature', 0);

```


## 🔗 Voir aussi

[aiask](../ai/aiask.md), [aimodels](../ai/aimodels.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
