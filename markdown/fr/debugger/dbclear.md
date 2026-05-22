# dbclear

Supprimer les points d'arrêt lors du débogage.

## 📝 Syntaxe

- dbclear all
- dbclear in file
- dbclear in file at location

## 📥 Argument d'entrée

- file - Nom du fichier dans lequel les points d'arrêt doivent être supprimés, spécifié en tant que vecteur de caractères ou chaîne de caractères. Un marqueur de fichier (>) peut être utilisé pour spécifier une fonction locale ou imbriquée.
- location - Numéro de ligne, numéro de ligne avec indice de fonction anonyme (par exemple, 3@2), ou nom de fonction locale du point d'arrêt à supprimer.

## 📄 Description

<b>dbclear</b> supprime les points d'arrêt définis pour le débogage. Vous pouvez supprimer tous les points d'arrêt, les points d'arrêt dans un fichier spécifique, les points d'arrêt à un emplacement spécifique.

<b>dbclear all</b> supprime tous les points d'arrêt dans tous les fichiers et pour toutes les conditions.

<b>dbclear in file</b> supprime tous les points d'arrêt dans le fichier spécifié.

<b>dbclear in file at location</b> supprime le point d'arrêt à l'emplacement spécifié dans le fichier.

## 💡 Exemples

        Supprimer tous les points d'arrêt dans un fichier.

```matlab

dbstop in buggy at 2
dbstop in buggy at 3
dbstatus
dbclear in buggy
dbstatus

```

        Supprimer un point d'arrêt à un emplacement spécifique.

```matlab

dbstop in buggy at 2
dbstop in buggy at 3
dbclear in buggy at 3
dbstatus

```

## 🔗 Voir aussi

[dbstop](../debugger/dbstop.md), [dbstatus](../debugger/dbstatus.md), [dbquit](../debugger/dbquit.md), [dbstack](../debugger/dbstack.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
