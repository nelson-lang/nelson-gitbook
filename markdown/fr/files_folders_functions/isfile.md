# isfile

Retourne vrai si l'argument est un fichier.

## 📝 Syntaxe

- r = isfile(name)

## 📥 Argument d'entrée

- name - a string: nom du fichier à vérifier.

## 📤 Argument de sortie

- r - un booléen: vrai si c'est un fichier.

## 📄 Description

<b>isfile(name)</b> renvoie <b>true</b> si <b>name</b> est un fichier.

## 💡 Exemple

```matlab
isfile(nelsonroot())
isfile([nelsonroot(), '/etc/finish.m'])
```

## 🔗 Voir aussi

[mkdir](../files_folders_functions/mkdir.md), [isfolder](../files_folders_functions/isfolder.md).

## 🕔 Historique

| Version | 📄 Description                                   |
| ------- | ------------------------------------------------ |
| 1.0.0   | initial version                                  |
| 1.4.0   | input arguments support scalar string array type |

<!--
## 👤 Auteur

Allan CORNET
-->
