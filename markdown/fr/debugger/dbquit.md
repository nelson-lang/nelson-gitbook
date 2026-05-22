# dbquit

Quitter le mode débogage.

## 📝 Syntaxe

- dbquit
- dbquit all

## 📥 Argument d'entrée

- all - mot-clé optionnel pour quitter le mode débogage pour toutes les fonctions en pause.

## 📄 Description

<b>dbquit</b> termine le mode débogage. La fenêtre de commande revient à l'invite standard (<code> > >
</code>). Le fichier en cours d'exécution n'est pas terminé et aucun argument de sortie n'est renvoyé. Tous les points d'arrêt restent actifs.

Si le débogueur est actif dans plus d'une fonction, <b>dbquit</b> quitte le mode débogage uniquement pour la fonction active. Les autres fonctions en pause restent en mode débogage jusqu'à ce que <b>dbquit</b> soit appelé à nouveau.

Si l'exécution est en pause dans une fonction atteinte en entrant dans une autre fonction, <b>dbquit</b> termine le débogage pour les deux fonctions.

<b>dbquit all</b> termine le débogage pour tous les fichiers simultanément.

Cette fonction ne peut être appelée que depuis la ligne de commande en mode débogage.

## 💡 Exemples

         Quitter le mode débogage pour la fonction active.

```matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy
buggy(5)
dbquit

```

         Quitter le mode débogage pour toutes les fonctions en pause.

```matlab

dbquit all

```

## 🔗 Voir aussi

[dbcont](../debugger/dbcont.md), [dbclear](../debugger/dbclear.md), [dbstack](../debugger/dbstack.md), [dbstatus](../debugger/dbstatus.md), [dbstop](../debugger/dbstop.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
