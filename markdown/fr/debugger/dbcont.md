# dbcont

Reprendre l'exécution après un point d'arrêt.

## 📝 Syntaxe

- dbcont

## 📄 Description

<b>dbcont</b> reprend l'exécution du fichier après une pause à un point d'arrêt. L'exécution continue jusqu'à ce qu'un autre point d'arrêt soit rencontré, qu'une condition de pause soit remplie, qu'une erreur se produise ou que l'exécution se termine avec succès.

Utilisez <b>dbcont</b> pour continuer l'exécution après avoir examiné les variables de l'espace de travail ou débogué le code.

Remarque : Si vous souhaitez modifier un fichier pendant le débogage, il est recommandé de quitter d'abord le mode débogage en utilisant <b>dbquit</b> pour éviter un comportement inattendu.

## 💡 Exemple

        Reprendre l'exécution après un point d'arrêt dans une fonction.

```matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy at 2
buggy(5)
dbcont

```

## 🔗 Voir aussi

[dbquit](../debugger/dbquit.md), [dbclear](../debugger/dbclear.md), [dbstatus](../debugger/dbstatus.md), [dbstop](../debugger/dbstop.md), [dbstep](../debugger/dbstep.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
