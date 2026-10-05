#import "nelson_help.typ": *

= sim <nflow_engine:sim>

Simule un modèle nflow et retourne ses résultats.

== Syntaxe

- #raw("out = sim(model)");
- #raw("out = sim(model, 'StopTime', T)");
- #raw("out = sim(model, 'StopTime', T, 'SampleTime', dt)");

== Argument d'entrée

/ model: un système chargé (nom ou handle) ou le chemin d'un fichier .nflow.
/ StopTime: scalaire numérique fini optionnel ; remplace la durée totale simulée du modèle.
/ SampleTime: scalaire numérique fini optionnel ; remplace le pas d'échantillonnage du modèle.

== Argument de sortie

/ out: une structure avec un champ par bloc To Workspace (son VariableName) plus 'tout' (le vecteur temps).

== Description

#strong[sim]; simule le modèle #strong[model]; et retourne ses résultats.

 Les blocs From Workspace lisent leur signal dans le workspace de base : définissez ces variables avant d'appeler #strong[sim];. Les blocs To Workspace écrivent leur résultat dans le workspace de base (comme lors d'un run interactif) et sont aussi exposés comme champs de #strong[out]; (par exemple #strong[out.simout];).

 C'est un raccourci au-dessus du moteur headless #strong[\_\_nflow\_simulate\_\_]; : il lit le document du modèle, applique les surcharges optionnelles #strong[StopTime]; \/ #strong[SampleTime];, lance le moteur et collecte les résultats.

 #strong[Callback StopFcn.]; Si le modèle porte un champ de premier niveau #strong[stopFcn]; (un texte de commandes Nelson), il s'exécute dans le workspace de base une fois la simulation arrêtée, avec le résultat exposé comme #strong[out];. Il ne se déclenche que lors d'un run de simulation (jamais au chargement du modèle) et s'exécute même sans sortie demandée : un modèle dont le #strong[stopFcn]; est #strong[NFlow.plotScopes(out)]; ouvre ainsi ses scopes automatiquement. Le bouton Run de l'éditeur nflow déclenche le même #strong[stopFcn];. Un callback en échec émet un avertissement sans interrompre le run déjà terminé.


== Exemples

Lancer une démo autonome et relire le signal journalisé

``````matlab
model = [modulepath('nflow_blocks'), '/examples/workspace/To_Workspace_Demo.nflow'];
out = sim(model, 'StopTime', 5);
plot(out.simout.time, out.simout.signals.values);
``````

Alimenter un bloc From Workspace depuis le workspace de base

``````matlab
t = (0:0.01:10)';
simin = [t, sin(2*pi*0.5*t)];
out = sim([modulepath('nflow_blocks'), '/examples/workspace/From_Workspace_Demo.nflow']);
``````


== Voir aussi

#nlink(<nflow_engine:load_system>)[load\_system];, #nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_blocks:source.fromWorkspace>)[fromWorkspace];, #nlink(<nflow_blocks:sink.toWorkspace>)[toWorkspace];, #nlink(<nflow_engine:NFlow.plotScopes>)[NFlow.plotScopes];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
