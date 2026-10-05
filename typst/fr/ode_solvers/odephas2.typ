#import "nelson_help.typ": *

= odephas2 <ode_solvers:odephas2>

Fonction de sortie EDO pour portrait de phase 2D.

== Syntaxe

- #raw("status = odephas2(t, y, flag)");

== Description

#strong[odephas2]; trace la deuxieme composante de la solution en fonction de la premiere pendant l'execution d'un solveur EDO.

 

#table(
  columns: 3,
  [Flag], [Moment d'appel], [Valeur retournee], 
  [#strong['init'];], [Avant le debut des sorties d'integration.], [#strong[0]; ou #strong[false]; pour continuer.], 
  [#strong[''];], [Aux points de sortie acceptes.], [#strong[0]; ou #strong[false]; pour continuer; #strong[1]; ou #strong[true]; arrete l'integration.], 
  [#strong['done'];], [Apres la fin de l'integration.], [La valeur retournee est ignoree.], 
)
 La fonction accepte le protocole de callback de sortie avec #strong[flag]; egal a #strong['init'];, #strong['']; ou #strong['done'];. Elle retourne #strong[0]; pour poursuivre l'integration.


== Voir aussi

#nlink(<ode_solvers:odephas3>)[odephas3];, #nlink(<ode_solvers:odeplot>)[odeplot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
