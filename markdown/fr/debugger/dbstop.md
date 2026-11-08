# dbstop

Définir des points d'arrêt pour le débogage.

## 📝 Syntaxe

- dbstop in file
- dbstop in file at location
- dbstop in file if expression
- dbstop in file at location if expression
- dbstop if error
- dbstop if caught error
- dbstop(b)

## 📥 Argument d'entrée

- file - nom du fichier où le point d'arrêt est défini, spécifié en tant que vecteur de caractères ou chaîne de caractères. Le fichier doit être accessible dans le chemin de recherche ou dans le dossier courant. Un marqueur de fichier (>) peut être utilisé pour spécifier une fonction locale. Il ne peut pas être combiné avec <b>at location</b>.
- location - emplacement du point d'arrêt dans le fichier : un numéro de ligne ou le nom d'une fonction locale (sa première ligne exécutable est utilisée). Un point d'arrêt demandé sur un commentaire, une ligne vide ou une déclaration de fonction est déplacé vers la ligne exécutable suivante. La ligne <b>end</b> d'une boucle for ou while est un emplacement à part entière : l'exécution s'y arrête à chaque itération.
- expression - condition évaluée dans l'espace de travail de la fonction arrêtée chaque fois que la ligne est atteinte. L'exécution ne s'arrête que si l'expression vaut un scalaire logique ou numérique vrai. Une valeur non scalaire ou une expression qui échoue émet un avertissement et arrête quand même l'exécution. Une erreur de syntaxe est refusée à la pose du point d'arrêt. Reposer un point d'arrêt sur la même ligne remplace sa condition.
- b - tableau de structures précédemment renvoyé par <b>dbstatus</b>, contenant les points d'arrêt sauvegardés à restaurer. Les sept champs <b>name</b>, <b>file</b>, <b>line</b>, <b>anonymous</b>, <b>expression</b>, <b>cond</b> et <b>identifier</b> sont obligatoires ; les conditions et les points d'arrêt sur erreur sont aussi restaurés.

## 📄 Description


<b>dbstop</b> définit des points d'arrêt dans les programmes pour le débogage interactif. Lorsque l'exécution atteint un point d'arrêt, elle est suspendue, la ligne sur le point d'être exécutée est affichée et l'interpréteur entre en mode débogage (invite <b>K>></b>). 

<b>dbstop if error</b> suspend l'exécution sur la ligne qui lève une erreur d'exécution non attrapée par un bloc <b>try</b>/<b>catch</b>. L'erreur est affichée, les variables de la fonction arrêtée peuvent être inspectées, et <b>dbcont</b>, <b>dbstep</b> ou <b>dbquit</b> terminent l'exécution. 

<b>dbstop if caught error</b> suspend l'exécution sur une erreur levée dans la partie <b>try</b>d'un bloc <b>try</b>/<b>catch</b> ; <b>dbcont</b> reprend dans le bloc <b>catch</b>. Les conditions <b>warning</b> et <b>naninf</b> ne sont pas prises en charge. 

Les points d'arrêt sont conservés jusqu'à ce que <b>dbclear</b> les supprime ou que la session se termine. Cette fonction ne peut être appelée que depuis la ligne de commande. 

Les fonctionnalités de débogage prises en charge par l'éditeur de texte s'intègrent à ces fonctions pour le débogage interactif. 

Voir également le [Flux de travail de débogage](../text_editor/debugging_workflow.md) pour un aperçu du débogage dans Nelson.

## 💡 Exemples

        Suspendre l'exécution à la première ligne exécutable d'une fonction.

```matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy
buggy(1:5)

```
        Définir un point d'arrêt à une fonction locale.

```matlab

dbstop in myfile>myfunc
dbstop in myfile at myfunc

```
        S'arrêter seulement quand une condition est vraie.

```matlab

dbstop in buggy at 3 if n > 2
dbstatus

```
        S'arrêter sur la ligne qui lève une erreur non attrapée.

```matlab

dbstop if error
buggy(1:5)
dbquit
dbclear if error

```
        Restaurer les points d'arrêt précédemment sauvegardés.

```matlab

b = dbstatus();
dbclear all
dbstop(b)

```


## 🔗 Voir aussi

[dbclear](../debugger/dbclear.md), [dbcont](../debugger/dbcont.md), [dbquit](../debugger/dbquit.md), [dbstatus](../debugger/dbstatus.md), [dbstack](../debugger/dbstack.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.16.0   | version initiale |
| 2.0.0   | points d'arrêt conditionnels, dbstop if error, dbstop if caught error, fonction locale comme emplacement, structure dbstatus à sept champs |

<!--
## 👤 Auteur

Allan CORNET
-->
