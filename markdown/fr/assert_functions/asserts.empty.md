# asserts.empty

Verifie qu'une valeur est vide.

## 📝 Syntaxe

- asserts.empty(value)
- [res, msg] = asserts.empty(value)

## 📥 Argument d'entrée

- value - Valeur a tester.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque value n'a aucun element. 

Les diagnostics incluent les dimensions calculees.

## 💡 Exemples

Empty value

```matlab
asserts.empty([]);
```
Capture a non-empty value

```matlab
[res, msg] = asserts.empty(1);
```


## 🔗 Voir aussi

[asserts.notempty](../assert_functions/asserts.notempty.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
