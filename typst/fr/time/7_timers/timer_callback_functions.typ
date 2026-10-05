#import "../nelson_help.typ": *

= Fonctions de callback de timer <time:7_timers.timer_callback_functions>

Definir les commandes executees lors des evenements de timer.

== Description

Les callbacks de timer peuvent etre retardes lorsqu'un autre callback ou une tache couteuse en CPU est deja en cours.

 Un objet timer possede quatre proprietes de callback. #strong[StartFcn]; s'execute lorsque le timer demarre. #strong[TimerFcn]; s'execute lorsque le timer se declenche. #strong[StopFcn]; s'execute lorsque le timer s'arrete normalement ou apres une erreur. #strong[ErrorFcn]; s'execute lorsqu'un callback de timer signale une erreur.

 Definissez une propriete de callback avec l'une des valeurs suivantes :

 

#table(
  columns: 2,
  [Valeur], [Utilisation], 
  [Handle de fonction], [Utilise une fonction qui accepte l'objet timer et une structure d'evenement, par exemple #strong[\@myTimerFcn]; ou #strong[\@(src,event)disp(event.Type)];.], 
  [Tableau de cellules], [Passe des arguments supplementaires apres l'objet timer et la structure d'evenement. Le premier element de la cellule est le handle de fonction, suivi des arguments supplementaires.], 
  [Vecteur de caracteres ou chaine scalaire], [Evalue directement des commandes Nelson. Ces callbacks ne recoivent pas l'objet timer ni la structure d'evenement comme arguments d'entree.], 
)
 Les callbacks specifies par handle de fonction ou tableau de cellules recoivent l'objet timer comme premier argument d'entree et une structure d'evenement comme second argument d'entree. La structure d'evenement possede les champs #strong[Type]; et #strong[Data];. #strong[Type]; vaut #strong[StartFcn];, #strong[TimerFcn];, #strong[StopFcn]; ou #strong[ErrorFcn];. #strong[Data.time]; contient l'heure de l'evenement sous forme de numero de date serie.

 Pour les callbacks avec des arguments propres a l'application, utilisez un tableau de cellules. Nelson appelle la fonction avec l'objet timer, la structure d'evenement, puis les arguments supplementaires dans l'ordre ou ils apparaissent dans le tableau de cellules.


== Exemples

Afficher le type d'evenement depuis un callback de timer.

``````matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp(event.Type));
start(t);
wait(t);
delete(t);
``````

Passer un argument supplementaire a un callback avec un tableau de cellules.

``````matlab
t = timer('TimerFcn', {@dispTimerMessage, 'timer fired'});
start(t);
wait(t);
delete(t);

function dispTimerMessage(src, event, message)
  disp([event.Type, ': ', message]);
end
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.start>)[start];, #nlink(<time:7_timers.stop>)[stop];, #nlink(<time:7_timers.wait>)[wait];, #nlink(<time:7_timers.timer_queuing_conflicts>)[Conflits de file de timers];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
