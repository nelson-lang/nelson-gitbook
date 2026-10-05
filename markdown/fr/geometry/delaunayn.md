# delaunayn

Triangulation de Delaunay en N dimensions

## 📝 Syntaxe

- T = delaunayn(P)
- T = delaunayn(P, options)

## 📄 Description


<b>delaunayn</b> calcule une triangulation de Delaunay pour les points de <b>P</b>. 

Les lignes de <b>T</b> contiennent des indices a partir de un dans <b>P</b>.

## 💡 Exemple

Triangulation de Delaunay de points plans.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
T = delaunayn(P)
```


## 🔗 Voir aussi

[delaunay](../geometry/delaunay.md), [triangulation](../geometry/triangulation.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
