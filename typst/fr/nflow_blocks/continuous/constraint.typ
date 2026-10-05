#import "../nelson_help.typ": *

= constraint <nflow_blocks:continuous.constraint>


#block-icon(image("constraint.svg"))

Etat algebrique (differentiel-algebrique) resolu par le solveur DAE.

== Syntaxe

- #raw("Type de bloc : constraint");

== Argument d'entrée

/ ports d entree: 1 port d entree : le residu de contrainte g.

== Argument de sortie

/ ports de sortie: 1 port de sortie : l etat algebrique z.

== Description

Etat algebrique (differentiel-algebrique) resolu par le solveur DAE.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs continus], 
  [Type], [#raw("constraint");], 
  [Etiquette], [Constraint], 
)
  #strong[Description];

 Le bloc Constraint introduit un etat #strong[algebrique]; #strong[z]; (sa sortie). Il n a pas de derivee propre ; le solveur DAE ajuste #strong[z]; pour annuler le signal d entree #strong[g];. Cablez le diagramme pour que l entree calcule le residu de contrainte #strong[g(z, x) \= 0]; (typiquement en utilisant la sortie z du bloc), et le solveur maintient le systeme sur cette variete.

 Ce bloc n a de sens que sous le solveur differentiel-algebrique : mettez le #raw("solver"); du modele a #raw("dae");. Sous un autre solveur, ou en code C \/ Rust genere, il est rejete avec un message clair (pas de lowering explicite pour un systeme differentiel-algebrique).

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Le residu de contrainte g, annule par le solveur.], [gauche], [x\=0, y\=40], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [L etat algebrique z determine par le solveur.], [droite], [x\=80, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("InitialCondition");], [0], 
)
 La condition initiale n est qu une estimation de depart pour z ; le solveur la raffine vers une valeur coherente avec IDACalcIC.

 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [constraint], 
  [Famille], [Blocs continus], 
  [Taille rendue], [80 x 80], 
  [Phases], [INIT, OUTPUT, DERIVATIVE], 
  [Etat interne ou historique], [un etat algebrique (masse-0)], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Equation ou regle];

 #latex("0 = g(z, x),\\qquad y = z"); #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/constraint.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:continuous.integrator>)[integrator];, #nlink(<nflow_blocks:continuous.stateSpace>)[stateSpace];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
