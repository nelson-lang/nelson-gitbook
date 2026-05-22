# lastwarn

Renvoie le dernier message d'avertissement enregistré.

## 📝 Syntaxe

- last_message = lastwarn()
- [last\_message, last\_identifier] = lastwarn()
- lastwarn(' ')
- lastwarn(new_message)
- lastwarn(new_message, new_identifier)
- [last\_message, last\_identifier] = lastwarn(' ')
- [last\_message, last\_identifier] = lastwarn(new_message)
- [last\_message, last\_identifier] = lastwarn(new_message, new_identifier)

## 📤 Argument de sortie

- last_message - chaîne : dernier message d'avertissement.
- last_identifier - chaîne : identifiant.

## 📄 Description

<b>last_message = lastwarn()</b> renvoie une chaîne contenant le dernier message d'avertissement.

<b>lastwarn('
')</b> efface le dernier avertissement.

## 💡 Exemple

```matlab

    [1:3]:3
    lastwarn
    [msg, id] = lastwarn()
    lastwarn('')
    [msg, id] = lastwarn()

```

## 🔗 Voir aussi

[error](../error_manager/error.md), [warning](../error_manager/warning.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
