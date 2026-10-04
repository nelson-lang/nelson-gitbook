# mpower

Puissance matricielle, opérateur ^

## 📝 Syntaxe

- C = mpower(A, B)
- C = A ^ B

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- C - résultat de A^B

## 📄 Description

<b>C = mpower(A, B)</b> effectue l'opération de puissance matricielle : A^B

Les matrices carrees sparse single et sparse single complexes sont prises en charge pour les exposants entiers scalaires. Le resultat conserve le stockage sparse quand la puissance peut etre calculee sans convertir la matrice en pleine.

Pour les exposants scalaires non entiers, Nelson utilise un repli par fonction matricielle dense lorsque la classe sparse d'entree le permet.

## 💡 Exemples

```matlab
mpower(3, 4)
3^4
```

Puissance matricielle sparse single.

```matlab
S = sparse(single([2 1; 0 3]));
C = S ^ 2
```

## 🔗 Voir aussi

[power](../operators/power.md).

## 🕔 Historique

| Version | 📄 Description                                                         |
| ------- | ---------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                       |
| 2.0.0   | prise en charge des matrices sparse single et sparse single complexes. |

<!--
## 👤 Auteur

Allan CORNET
-->
