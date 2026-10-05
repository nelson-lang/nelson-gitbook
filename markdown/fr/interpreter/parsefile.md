# parsefile

Analyser un fichier Nelson.

## 📝 Syntaxe

- status = parsefile(filename)

## 📥 Argument d'entrée

- filename - une chaîne : un nom de fichier à analyser.

## 📤 Argument de sortie

- status - une chaîne : 'script', 'function', 'error'.

## 📄 Description


<b>parsefile</b> analyse un fichier et renvoie s'il s'agit d'un script valide, d'une fonction valide ou d'une erreur.

## 💡 Exemple



```matlab
parsefile([nelsonroot(), '/etc/startup.m'])
parsefile([nelsonroot(), '/modules/data_structures/functions/cellstr.m'])
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
