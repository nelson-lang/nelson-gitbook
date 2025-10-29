# mustBeFolder

Vérifie que le chemin d'entrée correspond à un dossier.

## 📝 Syntaxe

- mustBeFolder(var)
- mustBeFolder(var, argPosition)
- C++: void mustBeFolder(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : un tableau scalaire de chaînes ou un vecteur ligne de caractères.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeFolder</b> vérifie que le chemin d'entrée correspond à un dossier ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeFolder(tempdir())
mustBeFolder('hello_nelson')
```

## 🔗 Voir aussi

[isdir](../files_folders_functions/isdir.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
