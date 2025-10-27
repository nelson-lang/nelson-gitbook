# gettext

Obtient le texte traduit pour la locale courante.

## 📝 Syntaxe

- translated_string = gettext(your_string)
- translated*string = *(your_string))

## 📥 Argument d'entrée

- your_string - une chaîne : message à traduire.

## 📤 Argument de sortie

- translated_string - une chaîne : message traduit.

## 📄 Description

<b>translated_string = gettext(your_string)</b> obtient la traduction d'une chaîne <b>your_string</b> pour la locale courante dans le domaine Nelson.

<b>\_(your_string)</b> est un alias de <b>gettext(your_string)</b>.

## 💡 Exemple

```matlab
disp(_('function not found.'))
```

## 🔗 Voir aussi

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
