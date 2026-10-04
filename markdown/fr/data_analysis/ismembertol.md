# ismembertol

Appartenance à un ensemble à une tolérance près

## 📝 Syntaxe

- LIA = ismembertol(A, B)
- LIA = ismembertol(A, B, tol)
- [LIA, LOCB] = ismembertol(\_\_\_)

## 📥 Argument d'entrée

- A - tableau numérique à tester.
- B - ensemble numérique de référence.
- tol - tolérance scalaire positive ou nulle. La valeur par défaut est 1e-12 pour du double et 1e-6 pour du single. La comparaison utilise tol mise à l'échelle par la plus grande valeur absolue de A et B.

## 📤 Argument de sortie

- LIA - tableau logique, vrai là où un élément de A est à la tolérance près d'un élément de B.
- LOCB - plus petit indice dans B d'un élément correspondant, ou 0 sinon.

## 📄 Description

<b>ismembertol</b> retourne un tableau logique de même taille que A, contenant vrai là où les éléments de A sont, à la tolérance près, égaux aux éléments de B. Deux valeurs u et v sont dans la tolérance si abs(u-v) <= tol\*max(abs([A(:);B(:)])).

## 💡 Exemple

```matlab
[lia, locb] = ismembertol([1 2 3], [1.0000001 5 3], 1e-6)
```

## 🔗 Voir aussi

[unique](../data_analysis/unique.md), [intersect](../data_analysis/intersect.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
