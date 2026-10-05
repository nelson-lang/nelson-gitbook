# dsearchn

Recherche du point le plus proche

## 📝 Syntaxe

- idx = dsearchn(P, Q)
- [idx, dist] = dsearchn(P, Q)
- idx = dsearchn(P, T, Q)
- idx = dsearchn(P, T, Q, outind)

## 📄 Description


<b>dsearchn</b> retourne le point le plus proche dans <b>P</b> pour chaque point de requete.

## 💡 Exemple

Point le plus proche et distance.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
[idx, dist] = dsearchn(P, [0.2 0.1])
```


## 🔗 Voir aussi

[tsearchn](../geometry/tsearchn.md), [triangulation](../geometry/triangulation.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
