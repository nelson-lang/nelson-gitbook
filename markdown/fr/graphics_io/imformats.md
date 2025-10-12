# imformats

Gère les formats d'image pris en charge.

## Syntaxe

- imformats ()
- formats = imformats()
- format = imformats(ext)

## Argument d'entrée

- ext - extension du format de fichier : vecteur de caractères ou chaîne scalaire.

## Argument de sortie

- formats - tableau de structures : formats d'image pris en charge.
- format - structure : format d'image pris en charge.

## Description

<p>imformats renvoie la liste des formats d'image pris en charge.</p>

<p>formats = imformats() renvoie la liste des formats d'image pris en charge sous la forme d'un tableau de structures.</p>

<p>format = imformats(ext) renvoie la structure du format d'image correspondant à l'extension ext.</p>

<p>Chaque élément du tableau de structures contient les champs :</p>

            ext : extension du format de fichier
            isa : function handle pour tester si le format est pris en charge
            info : function handle pour obtenir des informations sur le format
            description : description du format
            read : function handle pour lire le format
            write : function handle pour écrire le format
            alpha : scalaire booléen indiquant si le format supporte la transparence
            multipage : scalaire booléen indiquant si le format supporte les images multipages

## Exemple

```matlab
imformats()
```

## Voir aussi

[imwrite](../graphics_io/imwrite.md), [imread](../graphics_io/imread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.13.0  | version initiale |

## Auteur

Allan CORNET
