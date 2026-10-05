# NFlow.plotScopes

Ouvre une figure par scope d'un résultat de simulation nflow.

## 📝 Syntaxe

- figures = NFlow.plotScopes(out)
- NFlow.plotScopes(out)

## 📥 Argument d'entrée

- out - la structure retournée par <b>sim</b> (elle doit contenir un champ <b>logsout</b>).

## 📤 Argument de sortie

- figures - un vecteur de handles de figures, un par scope tracé.

## 📄 Description


<b>NFlow.plotScopes</b> ouvre une figure par signal journalisé dans <b>out.logsout</b>, en traçant chaque voie d'un scope comme une courbe sur les mêmes axes. Chaque figure est titrée avec l'identifiant du scope. 

C'est pratique comme <b>stopFcn</b> de modèle : affectez le StopFcn d'un modèle à <b>NFlow.plotScopes(out)</b> pour que les courbes des scopes s'ouvrent automatiquement à l'arrêt de la simulation, aussi bien depuis <b>sim</b> que depuis le bouton Run de l'éditeur nflow.

## 💡 Exemple

Simuler une démo et tracer ses scopes.

```matlab
model = [modulepath('nflow_blocks'), '/examples/causal/Second_Order_Responses_Demo.nflow'];
out = sim(model);
NFlow.plotScopes(out);
```


## 🔗 Voir aussi

[sim](../nflow_engine/sim.md), [scope](../nflow_blocks/sink/scope.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
