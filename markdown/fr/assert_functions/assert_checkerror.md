# assert\_checkerror

Nom historique de asserts.checkerror.

## 📝 Syntaxe

- assert\_checkerror(command, expectedMessage)
- assert\_checkerror(command, expectedMessage, expectedIdentifier)
- [res, msg] = assert\_checkerror(command, expectedMessage)

## 📥 Argument d'entrée

- command - Commande texte evaluee dans le contexte courant.
- expectedMessage - Message d'erreur complet attendu.
- expectedIdentifier - Identifiant d'erreur attendu optionnel.

## 📤 Argument de sortie

- res - true si l'erreur attendue est produite, false sinon.
- msg - Message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


<b>assert\_checkerror</b> est conservee pour compatibilite. 

Pour la documentation complete, utiliser [asserts.checkerror](../assert_functions/asserts.checkerror.md). 

Utiliser [asserts.throws](../assert_functions/asserts.throws.md) lorsque seule une sous-chaine du message doit correspondre.

## 💡 Exemples

Appel historique

```matlab
assert_checkerror('cos', _('Wrong number of input arguments.'));
```
Appel canonique

```matlab
asserts.checkerror('cos', _('Wrong number of input arguments.'));
```


## 🔗 Voir aussi

[asserts.checkerror](../assert_functions/asserts.checkerror.md), [asserts.throws](../assert_functions/asserts.throws.md), [asserts.noError](../assert_functions/asserts.noError.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | documentee comme nom historique de asserts.checkerror |

<!--
## 👤 Auteur

Allan CORNET
-->
