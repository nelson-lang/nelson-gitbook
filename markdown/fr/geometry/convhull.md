# convhull

Enveloppe convexe de points 2-D ou 3-D

## 📝 Syntaxe

- K = convhull(P)
- K = convhull(x, y)
- K = convhull(x, y, z)
- K = convhull(..., 'Simplify', tf)
- [K, A] = convhull(x, y)
- convhull(P)

## 📄 Description


<b>convhull</b> calcule l'enveloppe convexe de points plans ou spatiaux. 

Sans sortie, pour des points plans, la fonction trace l'enveloppe.

## 💡 Exemple

Calculer et tracer une enveloppe convexe plane.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
[K, A] = convhull(P);
convhull(P)
```


## 🔗 Voir aussi

[convhulln](../geometry/convhulln.md), [boundary](../geometry/boundary.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
