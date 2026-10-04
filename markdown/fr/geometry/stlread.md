# stlread

Creer une triangulation depuis un fichier STL

## 📝 Syntaxe

- TR = stlread(filename)
- [TR, fileformat, attributes, solidID] = stlread(filename)

## 📄 Description

<b>stlread</b> lit les fichiers STL binaires ou texte et retourne un objet <b>triangulation</b>.

<b>fileformat</b> vaut <b>'binary'</b> ou <b>'text'</b>. Pour les fichiers binaires, <b>attributes</b> est un vecteur colonne <b>uint16</b>. Pour les fichiers texte, <b>attributes</b> est une matrice <b>uint16</b> vide avec une ligne par triangle. <b>solidID</b> est un vecteur colonne identifiant le groupe solide de chaque triangle.

## 💡 Exemple

Ecrire et lire un fichier STL simple.

```matlab
P = [0 0 0; 1 0 0; 0 1 0];
T = [1 2 3];
TR = triangulation(T, P);
filename = [tempdir(), 'simple.stl'];
stlwrite(TR, filename);
[TR2, fileformat, attributes, solidID] = stlread(filename)
```

## 🔗 Voir aussi

[stlwrite](../geometry/stlwrite.md), [triangulation](../geometry/triangulation.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
