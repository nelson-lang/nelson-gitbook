#import "nelson_help.typ": *

= odeplot <ode_solvers:odeplot>

Fonction de sortie EDO pour le trace de solution.

== Syntaxe

- #raw("status = odeplot(t, y, flag)");

== Description

#strong[odeplot]; trace les composantes de la solution en fonction du temps pendant l'execution d'un solveur EDO.

 

#table(
  columns: 3,
  [Flag], [Moment d'appel], [Valeur retournee], 
  [#strong['init'];], [Avant le debut des sorties d'integration.], [#strong[0]; ou #strong[false]; pour continuer.], 
  [#strong[''];], [Aux points de sortie acceptes.], [#strong[0]; ou #strong[false]; pour continuer; #strong[1]; ou #strong[true]; arrete l'integration.], 
  [#strong['done'];], [Apres la fin de l'integration.], [La valeur retournee est ignoree.], 
)
 La fonction accepte le protocole de callback de sortie avec #strong[flag]; egal a #strong['init'];, #strong['']; ou #strong['done'];. Elle retourne #strong[0]; pour poursuivre l'integration.


== Voir aussi

#nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:odephas2>)[odephas2];, #nlink(<ode_solvers:odephas3>)[odephas3];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
