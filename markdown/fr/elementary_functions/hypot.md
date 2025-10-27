# hypot

Racine carrée de la somme des carrés

## 📝 Syntaxe

- C = hypot(A, B)

## 📥 Argument d'entrée

- A - une variable : scalaire, vecteur, matrice ou tableau multidimensionnel (single ou double).
- B - une variable : scalaire, vecteur, matrice ou tableau multidimensionnel (single ou double).

## 📤 Argument de sortie

- R - résultat de hypot : hypoténuse.

## 📄 Description

<b>hypot</b> calcule l'hypoténuse.

Si une ou deux entrées sont NaN, alors <b>hypot</b> renvoie <b>NaN</b>.

## 💡 Exemple

```matlab
R = hypot(1e308, 1e308)
R = hypot(1e309, 1e309)
```

## 🔗 Voir aussi

[abs](../elementary_functions/abs.md), [sqrt](../elementary_functions/sqrt.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
