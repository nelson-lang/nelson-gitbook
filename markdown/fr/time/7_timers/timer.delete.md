# timer.delete

Arreter et invalider des objets timer.

## 📝 Syntaxe

- delete(t)

## 📥 Argument d'entrée

- t - Objet timer ou tableau d'objets timer.

## 📄 Description


<b>delete</b> arrete les objets timer et invalide leurs handles. Apres suppression, <b>isvalid</b> retourne false pour ces handles. 

Supprimez les timers lorsqu'ils ne sont plus necessaires. Un timer supprime ne peut pas etre redemarre.

## 💡 Exemples

Supprimer un timer apres la fin de son execution.

```matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('done'));
start(t);
wait(t);
delete(t);
isvalid(t)
```
Supprimer un timer en cours. Le timer est arrete avant que le handle soit invalide.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.2, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
delete(t);
isvalid(t)
```


## 🔗 Voir aussi

[timer](../../time/7_timers/timer.md), [isvalid](../../time/7_timers/timer.isvalid.md), [stop](../../time/7_timers/stop.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
