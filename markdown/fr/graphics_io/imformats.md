# imformats

Gère les formats d'image pris en charge.

## 📝 Syntaxe

- imformats ()
- formats = imformats()
- format = imformats(ext)

## 📥 Argument d'entrée

- ext - extension du format de fichier : vecteur de caractères ou chaîne scalaire.

## 📤 Argument de sortie

- formats - tableau de structures : formats d'image pris en charge.
- format - structure : format d'image pris en charge.

## 📄 Description

<b>imformats</b> renvoie la liste des formats d'image pris en charge.

<b>formats = imformats()</b> renvoie la liste des formats d'image pris en charge sous la forme d'un tableau de structures.

<b>format = imformats(ext)</b> renvoie la structure du format d'image correspondant à l'extension<b>ext</b>.

Chaque élément du tableau de structures contient les champs :

- <b>ext</b> : extension du format de fichier
- <b>isa</b> : function handle pour tester si le format est pris en charge
- <b>info</b> : function handle pour obtenir des informations sur le format
- <b>description</b> : description du format
- <b>read</b> : function handle pour lire le format
- <b>write</b> : function handle pour écrire le format
- <b>alpha</b> : scalaire booléen indiquant si le format supporte la transparence
- <b>multipage</b> : scalaire booléen indiquant si le format supporte les images multipages

## 💡 Exemple

```matlab
imformats()
```

## 🔗 Voir aussi

[imwrite](../graphics_io/imwrite.md), [imread](../graphics_io/imread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.13.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
