# asserts.columnVector

Verifie qu'une valeur est un vecteur colonne.

## 📝 Syntaxe

- asserts.columnVector(value)
- [res, msg] = asserts.columnVector(value)

## 📥 Argument d'entrée

- value - Valeur a tester.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque value a la forme d'un vecteur colonne. 

Les diagnostics indiquent la classe et les dimensions calculees.

## 💡 Exemples

Column vector

```matlab
asserts.columnVector([1; 2]);
```
Capture a shape failure

```matlab
[res, msg] = asserts.columnVector([1 2]);
```


## 🔗 Voir aussi

[asserts.rowVector](../assert_functions/asserts.rowVector.md), [asserts.vector](../assert_functions/asserts.vector.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
