# asserts.notEqual

Verifie que deux valeurs ne sont pas egales.

## 📝 Syntaxe

- asserts.notEqual(computed, expected)
- [res, msg] = asserts.notEqual(computed, expected)

## 📥 Argument d'entrée

- computed - Valeur calculee.
- expected - Valeur qui ne doit pas etre egale a computed.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque asserts.isequal echouerait. 

Elle sert aux controles negatifs d'egalite dans les tests.

## 💡 Exemples

Different values

```matlab
asserts.notEqual(1, 2);
```
Capture an equality failure

```matlab
[res, msg] = asserts.notEqual(1, 1);
```


## 🔗 Voir aussi

[asserts.isequal](../assert_functions/asserts.isequal.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
