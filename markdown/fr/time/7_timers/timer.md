# timer

Creer un objet timer qui execute des commandes apres un delai ou a intervalles repetes.

## 📝 Syntaxe

- t = timer()
- t = timer('PropertyName', PropertyValue, ...)

## 📥 Argument d'entrée

- PropertyName - Nom de propriete de timer.
- PropertyValue - Valeur affectee a la propriete de timer.

## 📤 Argument de sortie

- t - Objet timer.

## 📄 Description


<b>timer</b> cree un objet timer. Un objet timer peut executer un callback une seule fois, apres un delai, a une date future, ou de maniere repetee jusqu'a atteindre le nombre de taches demande ou jusqu'a son arret. 

Le callback a executer est stocke dans la propriete <b>TimerFcn</b>. Le callback peut etre un handle de fonction, un tableau de cellules dont le premier element est un handle de fonction, un vecteur de caracteres ou une chaine scalaire. Les callbacks par handle de fonction recoivent l'objet timer et une structure d'evenement. 

Les objets timer restent enregistres apres la sortie de portee de la variable qui les contenait. Utilisez <b>delete</b> lorsqu'un timer n'est plus necessaire. 

Les proprietes importantes d'un timer sont listees ci-dessous. 

| Propriete | Description | 
| --- | --- | 
| BusyMode | Action utilisee lorsque les callbacks d'un timer a cadence fixe ne peuvent pas s'executer immediatement : **drop**, **queue** ou **error**. | 
| ExecutionMode | Mode de planification : **singleShot**, **fixedRate**, **fixedDelay** ou **fixedSpacing**. | 
| Period | Temps en secondes entre deux executions repetees du timer. | 
| StartDelay | Delai en secondes avant la premiere execution du timer. | 
| TasksToExecute | Nombre de fois ou **TimerFcn** doit etre execute. La valeur par defaut est **Inf**. | 
| TasksExecuted | Compteur en lecture seule des executions de callback terminees. | 
| Running | Valeur en lecture seule, **on** lorsque le timer est actif et **off** sinon. | 
| ObjectVisibility | Visibilite utilisee par **timerfind**. Les timers caches sont quand meme retournes par **timerfindall**. | 

 

Utilisez <b>start</b> pour demarrer un timer immediatement, <b>startat</b> pour le demarrer a une date et une heure donnees, <b>stop</b> pour l'arreter, <b>wait</b> pour bloquer jusqu'a son arret et <b>delete</b> pour le supprimer lorsqu'il n'est plus necessaire.

## 💡 Exemples

Creer un timer a execution unique apres un court delai.

```matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('timer fired'));
start(t);
wait(t);
delete(t);
```
Creer un timer qui s'execute trois fois et affiche le compteur d'execution.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp(get(src, 'TasksExecuted')));
start(t);
wait(t);
get(t, 'TasksExecuted')
delete(t);
```


## 🔗 Voir aussi

[start](../../time/7_timers/start.md), [startat](../../time/7_timers/startat.md), [stop](../../time/7_timers/stop.md), [wait](../../time/7_timers/wait.md), [timerfind](../../time/7_timers/timerfind.md), [timerfindall](../../time/7_timers/timerfindall.md), [Fonctions de callback de timer](../../time/7_timers/timer_callback_functions.md), [Conflits de file de timers](../../time/7_timers/timer_queuing_conflicts.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
