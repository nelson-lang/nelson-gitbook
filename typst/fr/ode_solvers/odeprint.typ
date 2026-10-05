#import "nelson_help.typ": *

= odeprint <ode_solvers:odeprint>

Fonction de sortie EDO pour la console.

== Syntaxe

- #raw("status = odeprint(t, y, flag)");

== Description

#strong[odeprint]; est un callback de sortie pour les solveurs EDO. Il affiche les points de sortie acceptes et retourne #strong[0]; pour poursuivre l'integration.

 

#table(
  columns: 3,
  [Flag], [Moment d'appel], [Valeur retournee], 
  [#strong['init'];], [Avant le debut des sorties d'integration.], [#strong[0]; ou #strong[false]; pour continuer.], 
  [#strong[''];], [Aux points de sortie acceptes.], [#strong[0]; ou #strong[false]; pour continuer; #strong[1]; ou #strong[true]; arrete l'integration.], 
  [#strong['done'];], [Apres la fin de l'integration.], [La valeur retournee est ignoree.], 
)

== Voir aussi

#nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:odeplot>)[odeplot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
