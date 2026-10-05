# asserts.length

Verifie la longueur d'une valeur.

## 📝 Syntaxe

- asserts.length(value, n)
- [res, msg] = asserts.length(value, n)

## 📥 Argument d'entrée

- value - Valeur a tester.
- n - Longueur attendue, scalaire entier fini non negatif.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque la plus grande dimension de value est egale a n. 

Un n invalide leve immediatement une erreur d'argument.

## 💡 Exemples

Length three

```matlab
asserts.length(ones(2, 3), 3);
```
Capture a length failure

```matlab
[res, msg] = asserts.length(ones(2, 3), 2);
```


## 🔗 Voir aussi

[asserts.numel](../assert_functions/asserts.numel.md), [asserts.size](../assert_functions/asserts.size.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
