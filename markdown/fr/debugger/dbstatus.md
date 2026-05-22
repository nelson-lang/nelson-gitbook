# dbstatus

Lister tous les points d'arrêt lors du débogage.

## 📝 Syntaxe

- dbstatus
- b = dbstatus()

## 📤 Argument de sortie

- b - Tableau de structures listant les points d'arrêt actuellement en vigueur.

## 📄 Description

<b>dbstatus</b> liste tous les points d'arrêt actuellement définis.

L'affectation de la sortie à une variable <b>b</b> vous permet de sauvegarder et de restaurer les points d'arrêt ultérieurement en utilisant <b>dbstop(b)</b>.

Chaque élément de la structure <b>b</b> contient les champs suivants :

- <b>name</b>: Nom de la fonction
- <b>file</b>: Chemin complet vers le fichier contenant les points d'arrêt
- <b>line</b>: Vecteur des numéros de ligne des points d'arrêt

## 💡 Exemples

        Lister tous les points d'arrêt en vigueur.

```matlab

dbstop in myfile
dbstatus

```

        Sauvegarder les points d'arrêt actuels et les restaurer ultérieurement.

```matlab

b = dbstatus();
save saved_breakpoints b
dbclear all
load saved_breakpoints
dbstop(b)

```

## 🔗 Voir aussi

[dbstop](../debugger/dbstop.md), [dbclear](../debugger/dbclear.md), [dbquit](../debugger/dbquit.md), [dbstack](../debugger/dbstack.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
