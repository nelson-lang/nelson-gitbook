# floor

Arrondir vers le bas

## 📝 Syntaxe

- C = floor(A)

## 📥 Argument d'entrée

- A - une variable

## 📤 Argument de sortie

- C - résultat de floor.

## 📄 Description

<b>floor</b> renvoie une matrice d'entiers obtenue en arrondissant chaque élément vers le bas.

Les entrees sparse single et sparse single complexes sont prises en charge. Seules les entrees non nulles stockees sont arrondies et le resultat conserve le stockage sparse.

## 💡 Exemples

```matlab
floor(pi)
```

Arrondi vers le bas d'une matrice sparse single.

```matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = floor(S)
```

## 🔗 Voir aussi

[round](../../elementary_functions/round.md), [fix](../../elementary_functions/fix.md), [ceil](../../elementary_functions/ceil.md).

## 🕔 Historique

| Version | 📄 Description                                                        |
| ------- | --------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                      |
| 2.0.0   | prise en charge des entrees sparse single et sparse single complexes. |

<!--
## 👤 Auteur

Allan CORNET
-->
