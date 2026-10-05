# sleep

Met en pause l'exécution du code.

## 📝 Syntaxe

- sleep(sec)

## 📥 Argument d'entrée

- n - un double : durée de la pause en secondes (nombre décimal).

## 📄 Description


<b>sleep</b> met en pause l'exécution de Nelson pendant un nombre spécifié de secondes. 

Une interruption CTRL-C arrête la fonction <b>sleep</b>.

## 💡 Exemple



```matlab
tic();sleep(1);toc()
tic();sleep(0.1);toc()
tic();sleep(0.01);toc()
```


## 🔗 Voir aussi

[tic](../../time/7_timers/tic.md), [toc](../../time/7_timers/toc.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
