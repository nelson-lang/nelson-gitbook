# asserts.match

Verifie qu'un texte correspond a une expression reguliere.

## 📝 Syntaxe

- asserts.match(text, pattern)
- [res, msg] = asserts.match(text, pattern)

## 📥 Argument d'entrée

- text - Vecteur de caracteres ou scalaire string a tester.
- pattern - Motif d'expression reguliere.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque pattern correspond a text. 

Les expressions regulieres invalides levent immediatement une erreur d'argument.

## 💡 Exemples

Regular expression match

```matlab
asserts.match('abc123', '^abc[0-9]+$');
```
Capture a missing match

```matlab
[res, msg] = asserts.match('abc', '[0-9]+');
```


## 🔗 Voir aussi

[asserts.matchesAll](../assert_functions/asserts.matchesAll.md), [asserts.matchesAny](../assert_functions/asserts.matchesAny.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
