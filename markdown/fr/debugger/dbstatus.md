# dbstatus

Lister tous les points d'arrêt lors du débogage.

## 📝 Syntaxe

- dbstatus
- dbstatus file
- dbstatus -completenames
- dbstatus file -completenames
- b = dbstatus(...)

## 📥 Argument d'entrée

- file - Seuls les points d'arrêt de ce fichier sont listés ; les points d'arrêt sur erreur ne sont pas inclus.
- -completenames - Affiche le chemin complet du fichier suivi du nom de la fonction au lieu du nom de la fonction seul.

## 📤 Argument de sortie

- b - Tableau de structures listant les points d'arrêt actuellement en vigueur.

## 📄 Description


<b>dbstatus</b> liste tous les points d'arrêt actuellement définis, une ligne par fichier : <b>Breakpoint for buggy is on line 3.</b> ou <b>Breakpoints for buggy are on lines 2, 3.</b>, suivie de la condition de chaque point d'arrêt conditionnel, puis de <b>Stop if error.</b> et <b>Stop if caught error.</b> quand ces points d'arrêt sur erreur sont définis. 

L'affectation de la sortie à une variable <b>b</b> vous permet de sauvegarder et de restaurer les points d'arrêt ultérieurement en utilisant <b>dbstop(b)</b>. 

La structure <b>b</b> contient un élément par fichier ayant des points d'arrêt et un élément par point d'arrêt sur erreur. Chaque élément contient les champs suivants :

- <b>name</b> : nom de la fonction (vide pour un point d'arrêt sur erreur) 
- <b>file</b> : chemin complet vers le fichier contenant les points d'arrêt 
- <b>line</b> : vecteur ligne des numéros de ligne des points d'arrêt 
- <b>anonymous</b> : vecteur ligne de zéros (les points d'arrêt dans les fonctions anonymes ne sont pas pris en charge) 
- <b>expression</b> : cellule ligne des conditions, une par ligne, vide sans condition 
- <b>cond</b> : <b>'error'</b> ou <b>'caught error'</b> pour un point d'arrêt sur erreur, vide sinon 
- <b>identifier</b> : <b>{'all'}</b> pour un point d'arrêt sur erreur, vide sinon

## 💡 Exemples

        Lister tous les points d'arrêt en vigueur.

```matlab

dbstop in myfile
dbstatus
dbstatus -completenames

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.16.0   | version initiale |
| 2.0.0   | filtre par fichier, -completenames, structure à sept champs avec conditions et points d'arrêt sur erreur |

<!--
## 👤 Auteur

Allan CORNET
-->
