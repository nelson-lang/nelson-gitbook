# boundary

Facettes frontiere d'un ensemble de points

## 📝 Syntaxe

- K = boundary(P)
- K = boundary(x, y)
- K = boundary(x, y, z)
- K = boundary(..., s)
- [K, A] = boundary(x, y)
- boundary(P)

## 📄 Description


<b>boundary</b> retourne les facettes frontiere de points plans ou spatiaux. 

Sans sortie, la fonction trace la frontiere.

## 💡 Exemple

Calculer et tracer la frontiere de points plans.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
K = boundary(P);
boundary(P)
```


## 🔗 Voir aussi

[alphaShape](../geometry/alphaShape.md), [convhull](../geometry/convhull.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
