# gettext

Obtient le texte traduit pour la locale courante.

## 📝 Syntaxe

- translated\_string = gettext(your\_string)
- translated\_string = \_(your\_string))

## 📥 Argument d'entrée

- your\_string - une chaîne : message à traduire.

## 📤 Argument de sortie

- translated\_string - une chaîne : message traduit.

## 📄 Description


<b>translated\_string = gettext(your\_string)</b> obtient la traduction d'une chaîne <b>your\_string</b> pour la locale courante dans le domaine Nelson. 

<b>\_(your\_string)</b> est un alias de <b>gettext(your\_string)</b>.

## 💡 Exemple



```matlab
disp(_('function not found.'))
```


## 🔗 Voir aussi

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
