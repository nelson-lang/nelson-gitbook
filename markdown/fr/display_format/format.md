# format

Format d'affichage et impression des nombres.

## 📝 Syntaxe

- fmt = format()
- format()
- format('default')
- format(new_style)

## 📥 Argument d'entrée

- new_style - une chaîne

## 📤 Argument de sortie

- fmt - Objet DisplayFormatOptions : format utilisé

## 📄 Description

<b>format(new_style)</b> modifie le format d'affichage et l'impression des nombres pour la session courante.

<b>format('default')</b> réinitialise le format par défaut (short, loose).

Styles pris en charge :

<b>short</b>

<b>long</b>

<b>shortE</b>

<b>longE</b>

<b>shortEng</b>

<b>longEng</b>

<b>plus</b>

<b>rational</b>

<b>hex</b>

Formats d'espacement de ligne pris en charge :

<b>loose</b>

<b>compact</b>

## 💡 Exemple

an example

```matlab
current_style = format()
pi
format('short')
pi
format('long')
pi
format('shortE')
pi
format('longE')
pi
format('hex')
pi
format('+')
pi
format('rational')
pi
format('compact')
pi
format(current_style)
pi
```

## 🔗 Voir aussi

[disp](../display_format/disp.md), [display](../display_format/display.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
