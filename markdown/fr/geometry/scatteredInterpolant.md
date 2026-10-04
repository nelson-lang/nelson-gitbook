# scatteredInterpolant

Objet d'interpolation de donnees dispersees

## 📝 Syntaxe

- F = scatteredInterpolant(P, V)
- F = scatteredInterpolant(x, y, V)
- F = scatteredInterpolant(x, y, z, V)
- F = scatteredInterpolant(P, V, method)
- F = scatteredInterpolant(P, V, method, extrapolationMethod)
- Vq = evaluate(F, Q)
- Vq = F(xq, yq)

## 📄 Description

<b>scatteredInterpolant</b> stocke des points et valeurs disperses pour des requetes d'interpolation repetees.

## 💡 Exemple

Evaluer un interpolant en un point de requete.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
V = P(:, 1) + P(:, 2);
F = scatteredInterpolant(P, V);
Vq = evaluate(F, [0.25 0.25])
```

## 🔗 Voir aussi

[griddata](../geometry/griddata.md), [delaunayTriangulation](../geometry/delaunayTriangulation.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
