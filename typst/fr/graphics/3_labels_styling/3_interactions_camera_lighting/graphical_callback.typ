#import "../../nelson_help.typ": *

= Gestion des interruptions de callback dans Nelson <graphics:3_labels_styling.3_interactions_camera_lighting.graphical_callback>



== Description

Vous pouvez affecter une fonction de rappel (callback) à une propriété de callback en utilisant l'une des méthodes suivantes :

 #strong[Handle de fonction]; : Utilisez cette approche lorsque votre callback n'a pas besoin d'arguments supplémentaires.

 #strong[Cellule]; : Idéal lorsque votre callback nécessite des arguments supplémentaires. La cellule doit inclure le handle de fonction comme premier élément, suivi des arguments d'entrée.

 #strong[Fonction anonyme]; : Cette méthode convient pour un code de callback simple ou si vous souhaitez réutiliser une fonction qui n'est pas exclusivement utilisée comme callback.

 #strong[Vecteur de caractères ou chaîne scalaire]; contenant des commandes.

 

 Nelson permet de contrôler si une fonction de callback peut être interrompue pendant son exécution. Dans certains cas, autoriser les interruptions peut être souhaitable, par exemple pour permettre à l'utilisateur d'arrêter une boucle d'animation via un callback interrompant. Cependant, dans des scénarios où l'ordre d'exécution des callbacks est crucial, il peut être nécessaire d'empêcher les interruptions pour garantir le comportement attendu, comme assurer la réactivité dans des applications qui réagissent aux mouvements du pointeur.

 

 Comportement d'interruption des callbacks :

 

 Les callbacks sont exécutés dans l'ordre où ils sont mis en file d'attente. Lorsqu'un callback est en cours d'exécution et qu'une autre action utilisateur déclenche un second callback, ce second callback tente d'interrompre le premier. Le premier est appelé « callback en cours d'exécution », le second « callback interrompant ».

 

 Dans certains cas, des commandes spécifiques dans le callback en cours invitent Nelson à traiter les callbacks en attente dans la file.

 Lorsque Nelson rencontre l'une de ces commandes comme #strong[drawnow];, #strong[figure];, #strong[waitfor]; ou#strong[pause];, il évalue si une interruption doit avoir lieu.

 

 Pas d'interruption : Si le callback en cours n'inclut aucune de ces commandes, Nelson termine ce callback avant d'exécuter le callback interrompant.

 

 Conditions d'interruption : Si le callback en cours inclut l'une de ces commandes, le comportement dépend de la propriété Interruptible de l'objet propriétaire du callback :

 

 Si #strong[Interruptible]; est à#strong['on'];, Nelson autorise l'interruption. Le callback en cours est mis en pause, le callback interrompant est exécuté, puis Nelson reprend l'exécution du callback initial.

 Si #strong[Interruptible]; est à#strong['off'];, l'interruption est bloquée. La propriété #strong[BusyAction]; du callback interrompant détermine alors la suite :

 Si #strong[BusyAction]; est #strong['queue'];, le callback interrompant sera exécuté après la fin du callback en cours.

 Si #strong[BusyAction]; est #strong['cancel'];, le callback interrompant est ignoré et non exécuté.

 Par défaut, la propriété #strong[Interruptible]; est à #strong['on']; et #strong[BusyAction]; à #strong['queue'];.

 

 À noter : certains callbacks, notamment #strong[DeleteFcn];, #strong[CloseRequestFcn]; et #strong[SizeChangedFcn];, interrompent le callback en cours quel que soit la valeur de la propriété Interruptible.


== Exemple

Démo uicontrol Interruptible

``````matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo_interruptible
uicontrol_demo_interruptible

``````


#align(center)[#image("uicontrol_6.png")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.3_ui_controls.uicontrol>)[uicontrol];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.drawnow>)[drawnow];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.waitfor>)[waitfor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
