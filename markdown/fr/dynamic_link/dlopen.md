# dlopen

Charge une bibliothèque dynamique

## 📝 Syntaxe

- lib = dlopen(libraryname)

## 📥 Argument d'entrée

- libraryname - une chaîne : nom de la bibliothèque dynamique.

## 📤 Argument de sortie

- lib - un handle dllib.

## 📄 Description

<b>dlopen</b> charge une bibliothèque dynamique.

<b>dlopen</b> renvoie un handle <b>dllib</b> possédant une propriété <b>Path</b>.

Les méthodes <b>get</b>, <b>ismethod</b>, <b>isprop</b>,<b>disp</b>, <b>delete</b>, <b>isvalid</b>, <b>used</b>, <b>eq</b>,<b>ne</b>, <b>isequal</b>, <b>horzcat</b>,<b>vertcat</b> sont surchargées pour le type <b>dllib</b>.

La bibliothèque est d'abord recherchée dans NELSON_LIBRARY_PATH puis dans PATH sous Windows ou LD_LIBRARY_PATH / DYLD_LIBRARY_PATH sur Linux/MacOS.

Le chemin NELSON_LIBRARY_PATH peut être modifié avec <b>setenv</b>.

## 💡 Exemple

```matlab
path_1 = modulepath('dynamic_link', 'builtin');
lib1 = dlopen(path_1)
isvalid(lib1)
dlclose(lib1)
isvalid(lib1)
clear lib1
```

## 🔗 Voir aussi

[dlclose](../dynamic_link/dlclose.md), [dllibisloaded](../dynamic_link/dllibisloaded.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
