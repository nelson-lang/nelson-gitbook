#import "nelson_help.typ": *

= aioptions <ai:aioptions>

Cree les options pour les requetes a un fournisseur IA.

== Syntaxe

- #raw("options = aioptions()");
- #raw("options = aioptions(name, value, ...)");

== Description

#strong[aioptions]; cree une structure scalaire utilisee par #strong[aiask];.

 Le fournisseur par defaut est #strong[ollama];, le modele par defaut est #strong[llama3];, et l'endpoint par defaut est #strong[http:\/\/127.0.0.1:11434\/api\/generate];.

 Les options supportees sont #strong[Provider];, #strong[Model];, #strong[Endpoint];, #strong[TokenEnvVar];, #strong[Timeout];, #strong[SystemPrompt];, #strong[Think];, #strong[NumPredict]; et #strong[Temperature];.

 Pour Ollama, #strong[Think];, #strong[NumPredict]; et #strong[Temperature]; sont envoyes dans la requete. Utilisez-les pour limiter les reponses des modeles locaux.


== Exemple

Creer des options Ollama pour un modele local.

``````matlab

opts = aioptions('Provider', 'ollama', ...
                 'Model', 'llama3.2', ...
                 'Endpoint', 'http://127.0.0.1:11434/api/generate', ...
                 'Timeout', 180, ...
                 'Think', false, ...
                 'NumPredict', 200, ...
                 'Temperature', 0);

``````


== Voir aussi

#nlink(<ai:aiask>)[aiask];, #nlink(<ai:aimodels>)[aimodels];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)
