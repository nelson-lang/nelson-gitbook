# dbclear

Supprimer les points d'arrêt lors du débogage.

## 📝 Syntaxe

- dbclear
- dbclear all
- dbclear in file
- dbclear all in file
- dbclear in file at location
- dbclear if error
- dbclear if caught error

## 📥 Argument d'entrée

- file - Nom du fichier dans lequel les points d'arrêt doivent être supprimés, spécifié en tant que vecteur de caractères ou chaîne de caractères. Un marqueur de fichier (>) peut être utilisé pour spécifier une fonction locale.
- location - Numéro de ligne du point d'arrêt à supprimer. La ligne est ajustée comme le fait <b>dbstop</b>, si bien que la ligne utilisée avec <b>dbstop</b> supprime le point d'arrêt.

## 📄 Description


<b>dbclear</b> supprime les points d'arrêt définis pour le débogage. Vous pouvez supprimer tous les points d'arrêt, les points d'arrêt d'un fichier, un point d'arrêt à un emplacement donné, ou les points d'arrêt sur erreur. 

<b>dbclear</b> et <b>dbclear all</b> suppriment tous les points d'arrêt de tous les fichiers, y compris <b>dbstop if error</b> et <b>dbstop if caught error</b>. 

<b>dbclear in file</b> et <b>dbclear all in file</b> suppriment tous les points d'arrêt du fichier spécifié ; les points d'arrêt sur erreur sont conservés. 

<b>dbclear in file at location</b> supprime le point d'arrêt à l'emplacement spécifié dans le fichier. 

<b>dbclear if error</b> et <b>dbclear if caught error</b> suppriment le point d'arrêt sur erreur correspondant. 

Rien n'est signalé quand aucun point d'arrêt ne correspond.

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
        Ne plus s'arrêter sur les erreurs.

```matlab

dbstop if error
dbstatus
dbclear if error
dbstatus

```


## 🔗 Voir aussi

[dbstop](../debugger/dbstop.md), [dbstatus](../debugger/dbstatus.md), [dbquit](../debugger/dbquit.md), [dbstack](../debugger/dbstack.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.16.0   | version initiale |
| 2.0.0   | dbclear all in file, dbclear if error, dbclear if caught error ; ajustement de ligne ; silencieux quand aucun point d'arrêt ne correspond |

<!--
## 👤 Auteur

Allan CORNET
-->
