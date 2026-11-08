#import "nelson_help.typ": *

= nflow\_tutorial\_dashboard <nflow_gui:3_nflow_tutorial_dashboard>

Tutoriel 3 sur 3 : ajouter des commandes dashboard interactives et exécuter en temps réel.

== Syntaxe

- #raw("Tutoriel : lier un slider, un afficheur et une jauge, puis exécuter et ajuster en direct.");

== Description

Ce troisième tutoriel ajoute des commandes interactives à un modèle en cours d'exécution. Vous posez un Slider, un Display et un Gauge, vous les liez au modèle, et vous exécutez en temps réel pour changer un paramètre et observer la réponse. Il fait suite au modèle construit dans #strong[nflow\_tutorial\_continuous];, mais tout modèle avec un paramètre ajustable et un signal de sortie convient.

 #strong[Poser les blocs dashboard];

 

+ Depuis le groupe #strong[Dashboard];, faites glisser un #strong[Slider]; sur le diagramme.
+ Faites glisser un #strong[Display]; à côté.
+ Faites glisser un #strong[Gauge]; à côté du Display. Les blocs dashboard n'ont ni port d'entrée ni port de sortie. Chacun lit ou écrit une cible que vous choisissez dans l'inspecteur, ils se posent donc n'importe où sur le diagramme sans fils.

 
#image("nflow_tutorial_dashboard_diagram.png")


 #strong[Lier les commandes];

 

+ Sélectionnez le #strong[Slider];. Dans la section #strong[Liaison]; de l'inspecteur, réglez le type sur #strong[Paramètre];, puis choisissez un bloc et l'un de ses paramètres ajustables, par exemple le Gain du modèle. Réglez les limites du slider.
+ Sélectionnez le #strong[Display];. Réglez le type de liaison sur #strong[Signal];, puis choisissez une sortie de bloc et son port en numérotation à partir de un.
+ Sélectionnez le #strong[Gauge];. Liez-le à un signal de la même façon et réglez ses limites. L'état sous le sélecteur de liaison indique si la liaison est valide ou pourquoi elle ne l'est pas. Les liaisons utilisent des identifiants de bloc stables : renommer ou déplacer un bloc ne les casse pas. Voir #strong[nflow\_dashboard]; pour toutes les commandes et tous les afficheurs, ainsi que pour les cibles de type signal, paramètre et variable.

 
#image("nflow_tutorial_dashboard_binding.png")


 #strong[Régler le mode d'exécution];

 Ne sélectionnez rien pour afficher l'onglet Modèle, puis ouvrez #strong[Simulation]; et réglez #strong[Exécution];. #strong[Temps réel]; cadence l'exécution sur l'horloge réelle, donc une seconde de temps simulé prend environ une seconde, ce qui est utile pour ajuster les commandes à la main. #strong[Rapide]; exécute aussi vite que la machine le permet. #strong[Auto]; laisse le modèle décider.

 Le mode d'exécution est lu au démarrage de l'exécution. Réglez-le avant d'appuyer sur #strong[Exécuter];. Le changer pendant qu'une simulation tourne n'a pas d'effet sur cette exécution ; il s'applique à la suivante. C'est différent d'une commande dashboard liée à un paramètre, dont le changement est pris en compte pendant l'exécution, au pas suivant.

 #strong[Exécuter et interagir];

 Appuyez sur #strong[Exécuter];. Pendant l'exécution, faites glisser le Slider pour changer son paramètre lié. Le Display et le Gauge se mettent à jour à chaque pas majeur, et le Scope montre comment la réponse change. Un geste de pointeur qui commence sur une commande reste attaché à cette commande jusqu'au relâchement, ce qui permet de glisser un slider sans déplacer le bloc. Pour déplacer le bloc à la place, faites glisser son corps en dehors de la zone de commande.

 #strong[Pour aller plus loin];

 Ajoutez un #strong[Lamp]; ou un #strong[Gauge]; avec des plages colorées pour signaler un seuil, ou un #strong[Push Button]; pour basculer un paramètre entre deux états. Ouvrez les exemples exécutables ci-dessous pour voir un panneau interactif complet.


== Exemples

Ouvrir un modèle avec des afficheurs de signaux en direct et un Slider lié.

``````matlab
open_system([modulepath('nflow_blocks', 'root'), '/examples/dashboard/Dashboard_Runtime_Demo.nflow']);
``````

Ouvrir la galerie contenant tous les blocs dashboard.

``````matlab
open_system([modulepath('nflow_blocks', 'root'), '/examples/dashboard/Dashboard_Gallery_Demo.nflow']);
``````


== Voir aussi

#nlink(<nflow_gui:nflow_dashboard>)[nflow\_dashboard];, #nlink(<nflow_gui:nflow_workspace>)[nflow\_workspace];, #nlink(<nflow_gui:1_nflow_tutorial_first_model>)[nflow\_tutorial\_first\_model];, #nlink(<nflow_gui:2_nflow_tutorial_continuous>)[nflow\_tutorial\_continuous];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
