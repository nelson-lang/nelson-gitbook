# voronoin

Diagramme de Voronoi en N dimensions

## 📝 Syntaxe

- [V, C] = voronoin(P)
- [V, C] = voronoin(P, options)

## 📄 Description


<b>voronoin</b> calcule les sommets et cellules de Voronoi pour les points d'entree. 

<b>V</b> contient les sommets et <b>C</b> est un tableau de cellules d'indices a partir de un.

## 💡 Exemple

Sommets et cellules de Voronoi pour des points plans.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
[V, C] = voronoin(P)
```


## 🔗 Voir aussi

[voronoi](../geometry/voronoi.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
