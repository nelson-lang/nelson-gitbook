# griddata

Interpolation de donnees dispersees

## 📝 Syntaxe

- Vq = griddata(P, V, xq, yq)
- Vq = griddata(x, y, V, xq, yq)
- Vq = griddata(x, y, z, V, xq, yq, zq)
- Vq = griddata(..., method)
- [Xq, Yq, Vq] = griddata(x, y, V, xq, yq)

## 📄 Description

<b>griddata</b> interpole des echantillons disperses aux coordonnees de requete.

## 💡 Exemple

Interpolation lineaire de donnees dispersees planes.

```matlab
x = [0; 1; 1; 0];
y = [0; 0; 1; 1];
V = x + y;
Vq = griddata(x, y, V, 0.25, 0.25)
```

## 🔗 Voir aussi

[scatteredInterpolant](../geometry/scatteredInterpolant.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
