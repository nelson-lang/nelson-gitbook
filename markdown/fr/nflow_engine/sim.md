# sim

Simule un modèle nflow et retourne ses résultats.

## 📝 Syntaxe

- out = sim(model)
- out = sim(model, 'StopTime', T)
- out = sim(model, 'StopTime', T, 'SampleTime', dt)

## 📥 Argument d'entrée

- model - un système chargé (nom ou handle) ou le chemin d'un fichier .nflow.
- StopTime - scalaire numérique fini optionnel ; remplace la durée totale simulée du modèle.
- SampleTime - scalaire numérique fini optionnel ; remplace le pas d'échantillonnage du modèle.

## 📤 Argument de sortie

- out - une structure avec un champ par bloc To Workspace (son VariableName) plus 'tout' (le vecteur temps).

## 📄 Description


<b>sim</b> simule le modèle <b>model</b> et retourne ses résultats. 

Les blocs From Workspace lisent leur signal dans le workspace de base : définissez ces variables avant d'appeler <b>sim</b>. Les blocs To Workspace écrivent leur résultat dans le workspace de base (comme lors d'un run interactif) et sont aussi exposés comme champs de <b>out</b> (par exemple <b>out.simout</b>). 

C'est un raccourci au-dessus du moteur headless <b>\_\_nflow\_simulate\_\_</b> : il lit le document du modèle, applique les surcharges optionnelles <b>StopTime</b> / <b>SampleTime</b>, lance le moteur et collecte les résultats. 

<b>Callback StopFcn.</b> Si le modèle porte un champ de premier niveau <b>stopFcn</b> (un texte de commandes Nelson), il s'exécute dans le workspace de base une fois la simulation arrêtée, avec le résultat exposé comme <b>out</b>. Il ne se déclenche que lors d'un run de simulation (jamais au chargement du modèle) et s'exécute même sans sortie demandée : un modèle dont le <b>stopFcn</b> est <b>NFlow.plotScopes(out)</b> ouvre ainsi ses scopes automatiquement. Le bouton Run de l'éditeur nflow déclenche le même <b>stopFcn</b>. Un callback en échec émet un avertissement sans interrompre le run déjà terminé.

## 💡 Exemples

Lancer une démo autonome et relire le signal journalisé

```matlab
model = [modulepath('nflow_blocks'), '/examples/workspace/To_Workspace_Demo.nflow'];
out = sim(model, 'StopTime', 5);
plot(out.simout.time, out.simout.signals.values);
```
Alimenter un bloc From Workspace depuis le workspace de base

```matlab
t = (0:0.01:10)';
simin = [t, sin(2*pi*0.5*t)];
out = sim([modulepath('nflow_blocks'), '/examples/workspace/From_Workspace_Demo.nflow']);
```


## 🔗 Voir aussi

[load_system](../nflow_engine/load_system.md), [new_system](../nflow_engine/new_system.md), [fromWorkspace](../nflow_blocks/source/fromWorkspace.md), [toWorkspace](../nflow_blocks/sink/toWorkspace.md), [NFlow.plotScopes](../nflow_engine/NFlow.plotScopes.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
