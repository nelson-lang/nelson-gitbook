# dlgetnflowincludes

Renvoie les répertoires d'includes nécessaires pour compiler un plugin de bloc natif nflow.

## 📝 Syntaxe

- C = dlgetnflowincludes()

## 📤 Argument de sortie

- C - un tableau de cellules contenant les chemins d'includes : les en-têtes du SDK nflow\_blocks, suivis des répertoires d'includes du SDK Nelson.

## 📄 Description


<b>C = dlgetnflowincludes()</b> renvoie les répertoires d'includes nécessaires pour compiler un plugin de bloc natif nflow. 

Le résultat liste les en-têtes publics de <b>nflow\_blocks</b> (<b>BlockPlugin.h</b>, <b>SimEngineTypes.hpp</b>, et autres), puis les répertoires d'includes du SDK Nelson. Les répertoires Nelson fournissent <b>nlohmann/json.hpp</b>, inclus par <b>SimEngineTypes.hpp</b>. 

Les chemins sont résolus que Nelson soit lancé depuis son arbre des sources ou depuis une installation. 

Cette fonction est généralement passée à <b>dlgeneratemake</b>.

## 💡 Exemple



```matlab
dlgetnflowincludes()
```


## 🔗 Voir aussi

[dlgetnflowlibraries](../../nflow_blocks/plugin_development/dlgetnflowlibraries.md), [dlgeneratemake](../../dynamic_link/dlgeneratemake.md), [dlmake](../../dynamic_link/dlmake.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
