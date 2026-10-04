# minute

Composante minutes de la date et de l'heure d'entrée.

## 📝 Syntaxe

- m = minute(t)
- m = minute(t, formatIn)

## 📥 Argument d'entrée

- t - numéro de date série ou chaînes de texte en entrée.
- formatIn - format de date valide

## 📤 Argument de sortie

- m - un double : valeur entière.

## 📄 Description

<b>m = minute(t)</b> extracts the minute component from each date and time specified in<b>t</b>.

The output<b>m</b> is a double array containing integer values ranging from 0 to 59.

## 💡 Exemple

```matlab
m = minute(738427.656845093)
m = minute("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

```

## 🔗 Voir aussi

[hour](../../time/hour.md), [second](../../time/second.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
