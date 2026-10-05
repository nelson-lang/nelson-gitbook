# tsearchn

Localisation de point dans une triangulation

## 📝 Syntaxe

- idx = tsearchn(P, T, Q)
- [idx, bary] = tsearchn(P, T, Q)

## 📄 Description


<b>tsearchn</b> trouve le simplexe contenant chaque point de requete. 

Les points hors triangulation retournent <b>NaN</b>.

## 💡 Exemple

Trouver le triangle contenant un point et ses coordonnees barycentriques.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
T = delaunayn(P);
[idx, bary] = tsearchn(P, T, [0.25 0.25])
```


## 🔗 Voir aussi

[dsearchn](../geometry/dsearchn.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
