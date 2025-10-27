# mustBeFile

Vérifie que le chemin d'entrée correspond à un fichier.

## 📝 Syntaxe

- mustBeFile(var)
- mustBeFile(var, argPosition)
- C++: void mustBeFile(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : un tableau scalaire de chaînes ou un vecteur ligne de caractères.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeFile</b> vérifie que le chemin d'entrée correspond à un fichier ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeFile(tempdir())
 mustBeFile([nelsonroot(), '/etc/startup.m'])
```

## 🔗 Voir aussi

[isfile](../files_folders_functions/isfile.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
