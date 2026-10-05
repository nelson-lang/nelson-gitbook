# stop

Arreter un objet timer en cours d'execution.

## 📝 Syntaxe

- stop(t)

## 📥 Argument d'entrée

- t - Objet timer ou tableau d'objets timer.

## 📄 Description


<b>stop</b> arrete les timers en cours d'execution. Si un timer a une propriete <b>StopFcn</b>, Nelson l'execute lorsque le timer passe de l'etat en cours a l'etat arrete. 

L'appel de <b>stop</b> sur un timer deja arrete laisse le timer arrete.

## 💡 Exemple

Arreter un timer repete avant qu'il atteigne sa limite de taches.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.2, ...
  'TasksToExecute', Inf, ...
  'TimerFcn', @(src, event) disp('tick'), ...
  'StopFcn', @(src, event) disp('stopped'));
start(t);
sleep(0.35);
stop(t);
delete(t);
```


## 🔗 Voir aussi

[timer](../../time/7_timers/timer.md), [start](../../time/7_timers/start.md), [wait](../../time/7_timers/wait.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
