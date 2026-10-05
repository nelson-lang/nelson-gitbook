# asserts.endsWith

Verifie qu'un texte se termine par un suffixe.

## 📝 Syntaxe

- asserts.endsWith(text, suffix)
- [res, msg] = asserts.endsWith(text, suffix)

## 📥 Argument d'entrée

- text - Vecteur de caracteres ou scalaire string a tester.
- suffix - Suffixe attendu.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque text se termine par suffix. 

Avec sorties, un suffixe manquant est retourne comme echec d'assertion.

## 💡 Exemples

Expected suffix

```matlab
asserts.endsWith('Nelson language', 'language');
```
Capture a suffix failure

```matlab
[res, msg] = asserts.endsWith('Nelson language', 'Nelson');
```


## 🔗 Voir aussi

[asserts.startsWith](../assert_functions/asserts.startsWith.md), [asserts.contains](../assert_functions/asserts.contains.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
