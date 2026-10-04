# alphaShape

Objet alpha shape

## 📝 Syntaxe

- SHP = alphaShape(P)
- SHP = alphaShape(x, y)
- SHP = alphaShape(x, y, z)
- SHP = alphaShape(..., alpha)
- SHP = alphaShape(..., 'HoleThreshold', value, 'RegionThreshold', value)
- K = boundaryFacets(SHP)
- A = area(SHP)
- plot(SHP)

## 📄 Description

<b>alphaShape</b> stocke des points et parametres alpha pour les requetes de frontiere et de forme.

## 💡 Exemple

Creer et tracer un alpha shape.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
SHP = alphaShape(P);
A = area(SHP);
plot(SHP)
```

## 🔗 Voir aussi

[boundary](../geometry/boundary.md), [convhull](../geometry/convhull.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
