# isdir

Retourne vrai si l'argument est un répertoire.

## 📝 Syntaxe

- r = isdir(dirname)

## 📥 Argument d'entrée

- dirname - a string: nom du répertoire à vérifier.

## 📤 Argument de sortie

- r - un booléen: vrai si c'est un répertoire.

## 📄 Description

<b>isdir(dirname)</b> renvoie <b>true</b> si<b>dirname</b> est un répertoire.

<b>isdir</b> et <b>isfolder</b> sont équivalentes.

## 💡 Exemple

```matlab
isdir(nelsonroot())
isdir([nelsonroot(), '/not_exist_dir'])
```

## 🔗 Voir aussi

[mkdir](../files_folders_functions/mkdir.md), [isfile](../files_folders_functions/isfile.md), [isfolder](../files_folders_functions/isfolder.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
