# dlgetnflowlibraries

Renvoie les bibliothèques auxquelles un plugin de bloc natif nflow doit être lié.

## 📝 Syntaxe

- C = dlgetnflowlibraries()

## 📤 Argument de sortie

- C - un tableau de cellules contenant les chemins des bibliothèques sans extension. dlgeneratemake ajoute le suffixe de la plateforme (.lib sous Windows, .so ou .dylib sinon).

## 📄 Description


<b>C = dlgetnflowlibraries()</b> renvoie les bibliothèques nécessaires pour lier un plugin de bloc natif nflow. 

Un plugin appelle les fonctions d'aide de simulation (<b>getInput</b>, <b>getState</b>, <b>setOutput</b>, <b>updated</b>, et autres), qui sont compilées dans <b>nlsNflow\_blocks</b>. Lier cette seule bibliothèque suffit ; ses propres dépendances Nelson sont résolues au chargement. 

Cette fonction est généralement passée à <b>dlgeneratemake</b>.

## 💡 Exemple



```matlab
dlgetnflowlibraries()
```


## 🔗 Voir aussi

[dlgetnflowincludes](../../nflow_blocks/plugin_development/dlgetnflowincludes.md), [dlgeneratemake](../../dynamic_link/dlgeneratemake.md), [dlmake](../../dynamic_link/dlmake.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
