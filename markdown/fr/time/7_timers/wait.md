# wait

Attendre l'arret d'objets timer.

## 📝 Syntaxe

- wait(t)

## 📥 Argument d'entrée

- t - Objet timer ou tableau d'objets timer.

## 📄 Description

<b>wait</b> bloque jusqu'a ce que chaque timer de <b>t</b> soit arrete. Pendant l'attente, Nelson continue de traiter les callbacks de timer afin que les callbacks planifies puissent se terminer.

Utilisez <b>wait</b> dans les scripts et les tests lorsque les commandes suivantes dependent de la fin des callbacks de timer.

## 💡 Exemple

Attendre qu'un timer repete termine toutes les taches demandees.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
get(t, 'Running')
get(t, 'TasksExecuted')
delete(t);
```

## 🔗 Voir aussi

[timer](../../time/timer.md), [start](../../time/start.md), [stop](../../time/stop.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
