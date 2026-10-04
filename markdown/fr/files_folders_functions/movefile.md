# movefile

Deplace un fichier ou un dossier.

## 📝 Syntaxe

- movefile(source, destination)
- [status, msg] = movefile(source, destination)
- movefile(source, destination, 'f')

## 📥 Argument d'entrée

- source - Fichier, dossier ou liste source.
- destination - Chemin de destination.

## 📤 Argument de sortie

- status - Indicateur logique de succes.
- msg - Message d'erreur lorsque l'operation echoue.

## 📄 Description

<b>movefile</b> copie la source vers la destination puis supprime la source lorsque la copie reussit.

## 💡 Exemple

```matlab
[status, msg] = movefile('source.txt', 'destination.txt')
```

## 🔗 Voir aussi

[copyfile](../files_folders_functions/copyfile.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
