# format

Format d'affichage et impression des nombres.

## 📝 Syntaxe

- fmt = format()
- format()
- format('default')
- format(new\_style)
- format('truncateMatrices', 'on')
- format('truncateMatrices', 'off')
- format(fmt)

## 📥 Argument d'entrée

- new\_style - une chaine ou un vecteur de caracteres
- fmt - un objet nelson.display.DisplayFormatOptions

## 📤 Argument de sortie

- fmt - objet nelson.display.DisplayFormatOptions : format d'affichage courant

## 📄 Description


<b>format(new\_style)</b> modifie le format d'affichage et l'impression des nombres pour la session courante. 

<b>format('default')</b> reinitialise le format par defaut (short, loose, truncateMatrices on). 

<b>fmt = format()</b> retourne un objet <b>nelson.display.DisplayFormatOptions</b> avec les valeurs courantes de <b>NumericFormat</b>, <b>LineSpacing</b> et <b>TruncateMatrices</b>. 

<b>format(fmt)</b> restaure le format d'affichage stocke dans un objet <b>nelson.display.DisplayFormatOptions</b>. 

 

Formats numeriques pris en charge : 

<b>short</b> 

<b>long</b> 

<b>shortE</b> 

<b>longE</b> 

<b>shortG</b> 

<b>longG</b> 

<b>shortEng</b> 

<b>longEng</b> 

<b>+</b> 

<b>bank</b> 

<b>rational</b> 

<b>hex</b> 

 

Formats d'espacement de ligne pris en charge : 

<b>loose</b> 

<b>compact</b> 

 

Formats de troncature de matrice pris en charge : 

<b>format('truncateMatrices', 'on')</b> 

<b>format('truncateMatrices', 'off')</b>

## 💡 Exemple

Sauvegarder et restaurer le format d'affichage.

```matlab
current_style = format()
pi
format('longE')
pi
format('compact')
pi
format(current_style)
pi
```


## 🔗 Voir aussi

[nelson.display.DisplayFormatOptions](../display_format/DisplayFormatOptions.md), [disp](../display_format/disp.md), [display](../display_format/display.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | format retourne et accepte des objets classdef nelson.display.DisplayFormatOptions. |

<!--
## 👤 Auteur

Allan CORNET
-->
