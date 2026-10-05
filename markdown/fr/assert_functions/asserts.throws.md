# asserts.throws

Verifie qu'une commande genere une erreur contenant le texte attendu.

## 📝 Syntaxe

- asserts.throws(command, expectedSubstring)
- asserts.throws(command, expectedSubstring, expectedIdentifier)
- [res, msg] = asserts.throws(command, expectedSubstring)

## 📥 Argument d'entrée

- command - Commande texte evaluee dans le contexte courant.
- expectedSubstring - Sous-chaine attendue dans le message d'erreur.
- expectedIdentifier - Identifiant d'erreur attendu optionnel.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque la commande leve une erreur dont le message contient expectedSubstring. 

Utiliser asserts.checkerror lorsque le message complet doit correspondre.

## 💡 Exemples

Expected error substring

```matlab
asserts.throws('cos', _('Wrong number of input arguments.'));
```
Capture missing error

```matlab
[res, msg] = asserts.throws('1 + 1', 'unused');
```


## 🔗 Voir aussi

[asserts.checkerror](../assert_functions/asserts.checkerror.md), [asserts.noError](../assert_functions/asserts.noError.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
