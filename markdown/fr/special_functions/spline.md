# spline

Interpolation par spline cubique.

## 📝 Syntaxe

- yq = spline(x, y, xq)
- pp = spline(x, y)

## 📥 Argument d'entrée

- x - Points d'echantillonnage.
- y - Valeurs echantillonnees.
- xq - Points de requete.

## 📤 Argument de sortie

- yq - Valeurs interpolees.
- pp - Structure polynomiale par morceaux.

## 📄 Description

<b>spline</b> evalue une spline cubique not-a-knot ou retourne sa forme polynomiale par morceaux.

## 💡 Exemple

```matlab
yq = spline(1:4, [0 1 0 1], [1.5 2.5])
```

## 🔗 Voir aussi

[interp1](../special_functions/interp1.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
