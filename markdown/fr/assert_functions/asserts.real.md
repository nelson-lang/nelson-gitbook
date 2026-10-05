# asserts.real

Verifie qu'une valeur est reelle.

## 📝 Syntaxe

- asserts.real(value)
- [res, msg] = asserts.real(value)

## 📥 Argument d'entrée

- value - Valeur a tester.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque value n'a pas de partie complexe. 

Les diagnostics incluent la classe et les dimensions calculees.

## 💡 Exemples

Real value

```matlab
asserts.real([1 2]);
```
Capture a complex value

```matlab
[res, msg] = asserts.real(1 + i);
```


## 🔗 Voir aussi

[asserts.finite](../assert_functions/asserts.finite.md), [asserts.nonNan](../assert_functions/asserts.nonNan.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
