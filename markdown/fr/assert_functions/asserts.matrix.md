# asserts.matrix

Verifie qu'une valeur est bidimensionnelle.

## 📝 Syntaxe

- asserts.matrix(value)
- [res, msg] = asserts.matrix(value)

## 📥 Argument d'entrée

- value - Valeur a tester.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque value est un tableau bidimensionnel. 

Utiliser asserts.squareMatrix pour les controles de matrice carree.

## 💡 Exemples

Matrix value

```matlab
asserts.matrix(ones(2, 2));
```
Capture a non-matrix value

```matlab
[res, msg] = asserts.matrix(ones(2, 2, 2));
```


## 🔗 Voir aussi

[asserts.squareMatrix](../assert_functions/asserts.squareMatrix.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
