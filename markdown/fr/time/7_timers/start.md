# start

Demarrer un objet timer.

## 📝 Syntaxe

- start(t)

## 📥 Argument d'entrée

- t - Objet timer ou tableau d'objets timer.

## 📄 Description


<b>start</b> demarre le timer en utilisant ses proprietes <b>StartDelay</b>, <b>ExecutionMode</b>, <b>Period</b> et <b>TasksToExecute</b>. Le timer doit avoir une propriete <b>TimerFcn</b> non vide. 

<b>start</b> retourne immediatement apres la planification du timer. Utilisez <b>wait</b> lorsque la sequence de commandes courante doit bloquer jusqu'a la fin du timer.

## 💡 Exemples

Demarrer un timer a execution unique.

```matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('started and fired'));
start(t);
wait(t);
delete(t);
```
Demarrer un timer repete.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
delete(t);
```


## 🔗 Voir aussi

[timer](../../time/7_timers/timer.md), [startat](../../time/7_timers/startat.md), [stop](../../time/7_timers/stop.md), [wait](../../time/7_timers/wait.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
