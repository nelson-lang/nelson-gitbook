# edit

éditeur de fonctions.

## 📝 Syntaxe

- edit()
- edit filename
- edit function\_name

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier à ouvrir.
- function\_name - une chaîne : nom de la fonction

## 📄 Description


<b>edit</b> ouvre un nouveau fichier nommé untitled.m dans l'éditeur intégré de Nelson. 

Si <b>function\_name</b> est le nom d'une fonction Nelson définie,<b>edit(function\_name)</b> tente d'ouvrir le fichier associé function\_name.m. 

<b>edit(dirname)</b> ouvre tous les fichiers .m disponibles dans <b>dirname</b>.

## 💡 Exemple



```matlab
edit('edit')
```


## 🔗 Voir aussi

[smartindent](../interpreter/smartindent.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.5.0   | edit(dirname) added |

<!--
## 👤 Auteur

Allan CORNET
-->
