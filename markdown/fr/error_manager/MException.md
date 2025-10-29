# MException

Informations sur l'exception MException.

## 📝 Syntaxe

- ME = MException(identifier, message)
- ME = MException('last')
- MException('reset')

## 📥 Argument d'entrée

- identifier - une chaîne : identifiant d'erreur.
- message - une chaîne de caractères.

## 📤 Argument de sortie

- ME - un objet MException.

## 📄 Description

Tout code Nelson qui détecte une erreur et lève une exception construit un objet MException.

L'identifiant inclut un ou plusieurs champs composants et un champ mnémonique (exemple : 'nelson:matrix:empty').

<b>ME = MException('last')</b> renvoie la dernière exception.

<b>MException('reset')</b> efface la dernière exception.

## 💡 Exemple

```matlab
ME = MException('nelson:identifier', 'your error message.')
throw(ME)
```

## 🔗 Voir aussi

[error](../error_manager/error.md), [try](../interpreter/try.md), [throw](../error_manager/throw.md), [rethrow](../error_manager/rethrow.md), [throwAsCaller](../error_manager/throwAsCaller.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
