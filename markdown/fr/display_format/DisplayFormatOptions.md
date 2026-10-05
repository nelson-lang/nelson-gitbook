# nelson.display.DisplayFormatOptions

Objet d'options de format d'affichage.

## 📝 Syntaxe

- fmt = nelson.display.DisplayFormatOptions()
- fmt = nelson.display.DisplayFormatOptions(Name, Value)

## 📥 Argument d'entrée

- Name, Value - paires nom-valeur pour NumericFormat, LineSpacing et TruncateMatrices

## 📤 Argument de sortie

- fmt - objet d'options de format d'affichage

## 📄 Description


<b>nelson.display.DisplayFormatOptions</b> stocke les options de format d'affichage utilisees par <b>format</b>. 

L'objet a trois proprietes publiques : <b>NumericFormat</b>, <b>LineSpacing</b> et <b>TruncateMatrices</b>. 

<b>NumericFormat</b> peut valoir <b>short</b>, <b>long</b>, <b>shortE</b>, <b>longE</b>, <b>shortG</b>, <b>longG</b>, <b>shortEng</b>, <b>longEng</b>, <b>+</b>, <b>bank</b>, <b>hex</b> ou <b>rational</b>. 

<b>LineSpacing</b> peut valoir <b>compact</b> ou <b>loose</b>. 

<b>TruncateMatrices</b> peut valoir <b>on</b> ou <b>off</b>. Dans la fenetre de commande graphique, <b>on</b> tronque les grandes matrices 2D numeriques, logiques et sparse lorsque leur affichage complet depasse la zone visible.

## 💡 Exemple

Sauvegarder et restaurer le format d'affichage.

```matlab
oldFormat = format();
fmt = nelson.display.DisplayFormatOptions('NumericFormat', 'longE', 'LineSpacing', 'compact', 'TruncateMatrices', 'on');
format(fmt)
format(oldFormat)
```


## 🔗 Voir aussi

[format](../display_format/format.md), [disp](../display_format/disp.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
