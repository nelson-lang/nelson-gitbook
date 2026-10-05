#import "nelson_help.typ": *

= aimodels <ai:aimodels>

Liste les modeles disponibles chez un fournisseur IA.

== Syntaxe

- #raw("models = aimodels()");
- #raw("models = aimodels(options)");
- #raw("[models, response] = aimodels(options)");

== Description

#strong[aimodels]; retourne les noms des modeles disponibles pour un fournisseur IA configure.

 Pour Ollama, #strong[aimodels]; appelle l'endpoint local #strong[\/api\/tags]; deduit de l'endpoint stocke dans #strong[options];. L'endpoint par defaut est #strong[http:\/\/127.0.0.1:11434\/api\/tags];.

 Pour les fournisseurs compatibles OpenAI, #strong[aimodels]; appelle #strong[\/v1\/models]; deduit de l'endpoint configure et utilise #strong[TokenEnvVar]; comme bearer token lorsqu'il est fourni.

 La premiere sortie est un tableau de cellules contenant les noms de modeles. La seconde sortie optionnelle contient la reponse brute du fournisseur.


== Exemples

Lister les modeles Ollama locaux.

``````matlab

models = aimodels()

``````

Utiliser le premier modele Ollama disponible avec aiask.

``````matlab

models = aimodels();
opts = aioptions('Provider', 'ollama', ...
                 'Model', models{1}, ...
                 'SystemPrompt', 'Retourne uniquement du code Nelson. Les fonctions Nelson utilisent la syntaxe: function y = name(x), instructions, end.', ...
                 'Think', false, ...
                 'NumPredict', 120, ...
                 'Temperature', 0);
answer = aiask('Ecris une fonction y = vector_mean(x). Utilise y = mean(x).', opts)

``````

Utiliser un modele Ollama local connu.

``````matlab

opts = aioptions('Provider', 'ollama', ...
                 'Model', 'gemma4:latest', ...
                 'SystemPrompt', 'Retourne uniquement du code Nelson. Les fonctions Nelson utilisent la syntaxe: function y = name(x), instructions, end.', ...
                 'Think', false, ...
                 'NumPredict', 120, ...
                 'Temperature', 0);
answer = aiask('Ecris une fonction y = vector_mean(x). Utilise y = mean(x).', opts)

``````

Lister les modeles d'un endpoint local compatible OpenAI.

``````matlab

opts = aioptions('Provider', 'openai-compatible', ...
                 'Endpoint', 'http://127.0.0.1:8000/v1/chat/completions', ...
                 'Timeout', 30);
models = aimodels(opts)

``````

Lister les modeles d'un endpoint compatible OpenAI avec token.

``````matlab

% Definir MY_AI_TOKEN dans l'environnement avant de demarrer Nelson.
opts = aioptions('Provider', 'openai-compatible', ...
                 'Endpoint', 'https://example.local/v1/chat/completions', ...
                 'TokenEnvVar', 'MY_AI_TOKEN', ...
                 'Timeout', 30);
models = aimodels(opts)

``````


== Voir aussi

#nlink(<ai:aiask>)[aiask];, #nlink(<ai:aioptions>)[aioptions];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)
