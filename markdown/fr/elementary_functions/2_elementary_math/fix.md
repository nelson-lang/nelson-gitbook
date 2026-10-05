# fix

Arrondir vers zéro

## 📝 Syntaxe

- C = fix(A)

## 📥 Argument d'entrée

- A - une variable

## 📤 Argument de sortie

- C - résultat de fix.

## 📄 Description


<b>fix</b> renvoie une matrice d'entiers obtenue en arrondissant chaque élément vers zéro. 

Les entrees sparse single et sparse single complexes sont prises en charge. Seules les entrees non nulles stockees sont arrondies et le resultat conserve le stockage sparse.

## 💡 Exemples



```matlab
fix(pi)
```
Arrondi vers zero d'une matrice sparse single.

```matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = fix(S)
```


## 🔗 Voir aussi

[floor](../../elementary_functions/2_elementary_math/floor.md), [round](../../elementary_functions/2_elementary_math/round.md), [ceil](../../elementary_functions/2_elementary_math/ceil.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | prise en charge des entrees sparse single et sparse single complexes. |

<!--
## 👤 Auteur

Allan CORNET
-->
