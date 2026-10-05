#import "../nelson_help.typ": *

= timer <time:7_timers.timer>

Creer un objet timer qui execute des commandes apres un delai ou a intervalles repetes.

== Syntaxe

- #raw("t = timer()");
- #raw("t = timer('PropertyName', PropertyValue, ...)");

== Argument d'entrée

/ PropertyName: Nom de propriete de timer.
/ PropertyValue: Valeur affectee a la propriete de timer.

== Argument de sortie

/ t: Objet timer.

== Description

#strong[timer]; cree un objet timer. Un objet timer peut executer un callback une seule fois, apres un delai, a une date future, ou de maniere repetee jusqu'a atteindre le nombre de taches demande ou jusqu'a son arret.

 Le callback a executer est stocke dans la propriete #strong[TimerFcn];. Le callback peut etre un handle de fonction, un tableau de cellules dont le premier element est un handle de fonction, un vecteur de caracteres ou une chaine scalaire. Les callbacks par handle de fonction recoivent l'objet timer et une structure d'evenement.

 Les objets timer restent enregistres apres la sortie de portee de la variable qui les contenait. Utilisez #strong[delete]; lorsqu'un timer n'est plus necessaire.

 Les proprietes importantes d'un timer sont listees ci-dessous.

 

#table(
  columns: 2,
  [Propriete], [Description], 
  [BusyMode], [Action utilisee lorsque les callbacks d'un timer a cadence fixe ne peuvent pas s'executer immediatement : #strong[drop];, #strong[queue]; ou #strong[error];.], 
  [ExecutionMode], [Mode de planification : #strong[singleShot];, #strong[fixedRate];, #strong[fixedDelay]; ou #strong[fixedSpacing];.], 
  [Period], [Temps en secondes entre deux executions repetees du timer.], 
  [StartDelay], [Delai en secondes avant la premiere execution du timer.], 
  [TasksToExecute], [Nombre de fois ou #strong[TimerFcn]; doit etre execute. La valeur par defaut est #strong[Inf];.], 
  [TasksExecuted], [Compteur en lecture seule des executions de callback terminees.], 
  [Running], [Valeur en lecture seule, #strong[on]; lorsque le timer est actif et #strong[off]; sinon.], 
  [ObjectVisibility], [Visibilite utilisee par #strong[timerfind];. Les timers caches sont quand meme retournes par #strong[timerfindall];.], 
)
 Utilisez #strong[start]; pour demarrer un timer immediatement, #strong[startat]; pour le demarrer a une date et une heure donnees, #strong[stop]; pour l'arreter, #strong[wait]; pour bloquer jusqu'a son arret et #strong[delete]; pour le supprimer lorsqu'il n'est plus necessaire.


== Exemples

Creer un timer a execution unique apres un court delai.

``````matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('timer fired'));
start(t);
wait(t);
delete(t);
``````

Creer un timer qui s'execute trois fois et affiche le compteur d'execution.

``````matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp(get(src, 'TasksExecuted')));
start(t);
wait(t);
get(t, 'TasksExecuted')
delete(t);
``````


== Voir aussi

#nlink(<time:7_timers.start>)[start];, #nlink(<time:7_timers.startat>)[startat];, #nlink(<time:7_timers.stop>)[stop];, #nlink(<time:7_timers.wait>)[wait];, #nlink(<time:7_timers.timerfind>)[timerfind];, #nlink(<time:7_timers.timerfindall>)[timerfindall];, #nlink(<time:7_timers.timer_callback_functions>)[Fonctions de callback de timer];, #nlink(<time:7_timers.timer_queuing_conflicts>)[Conflits de file de timers];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
