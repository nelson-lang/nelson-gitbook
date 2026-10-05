# diff\_file

Compare deux fichiers ou chaînes.

## 📝 Syntaxe

- res = diff(filename\_1, filename\_2, with\_eol)

## 📥 Argument d'entrée

- filename\_1 - a string: nom de fichier.
- filename\_2 - a string: nom de fichier.
- with\_eol - a logical: prendre en compte la fin de ligne ou non (true par défaut).

## 📤 Argument de sortie

- res - a string: ' ' si aucune différence détectée.
- msg - a string: message d'erreur

## 📄 Description


<b>diff\_file</b> compare deux fichiers et renvoie le diff au format unified. 

Si les fichiers comparés sont identiques, <b>res</b> est une chaîne vide.

## 💡 Exemple



```matlab
res = diff_file([nelsonroot(), '/etc/startup.m'], [nelsonroot(), '/etc/startup.m'])
res = diff_file([nelsonroot(), '/etc/startup.m'], [nelsonroot(), '/etc/finish.m'])
```


## 🔗 Voir aussi

[isdir](../files_folders_functions/isdir.md), [isfile](../files_folders_functions/isfile.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
