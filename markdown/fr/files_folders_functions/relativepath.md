# relativepath

Renvoie le chemin relatif d'un chemin actuel vers un chemin cible.

## 📝 Syntaxe

- r = relativepath(path_1, path_2)

## 📥 Argument d'entrée

- path_1 - a string: fichier ou répertoire.
- path_2 - a string: fichier ou répertoire cible.

## 📤 Argument de sortie

- r - a string: chemin relatif.

## 📄 Description

Renvoie le chemin relatif d'un chemin actuel vers le chemin cible.

## 💡 Exemple

```matlab
relativepath(nelsonroot(), [nelsonroot(), '/lgpl-3.0.md'])
relativepath(nelsonroot(), [nelsonroot(), '/etc/finish.m'])
relativepath([nelsonroot(),'/bin'], [nelsonroot(), '/lgpl-3.0.md'])
relativepath('.', '.')
relativepath('.', '..')
relativepath('..', '.')
```

## 🔗 Voir aussi

[cd](../files_folders_functions/cd.md), [dir](../files_folders_functions/dir.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Auteur

Allan CORNET
