#import "nelson_help.typ": *

= tutoriel interpolation extension edo <ode_solvers:6_ode_interpolation_extension_tutorial>

Interpoler et prolonger des solutions EDO.

== Description

Appelez un solveur avec une sortie pour obtenir une structure de solution. Cette structure stocke les pas internes acceptes; les sorties tableau comme #strong[\[t, y\]]; utilisent les points demandes ou raffines. Utilisez #strong[deval]; pour evaluer cette structure a d'autres instants.

 

#table(
  columns: 3,
  [Tache], [Appel], [Notes], 
  [Interpoler], [#strong[deval(sol, tq)];], [Les points doivent rester dans l'intervalle de solution.], 
  [Obtenir les derivees], [#strong[\[y, yp\] \= deval(sol, tq)];], [La derivee suit la meme disposition en colonnes que #strong[y];.], 
  [Continuer], [#strong[odextend(sol, odefun, tfinal)];], [Construit une nouvelle structure sur l'intervalle etendu.], 
)
 Utilisez #strong[odextend]; pour continuer une integration depuis l'etat final tout en conservant les metadonnees et les evenements.


== Exemples

Evaluer une solution a des points demandes.

``````matlab
sol = ode45(@(t,y) -y, [0 1], 1);
values = deval(sol, [0 0.25 0.5 1])
``````

Prolonger une solution.

``````matlab
sol = ode45(@(t,y) -y, [0 0.5], 1);
extended = odextend(sol, @(t,y) -y, 1);
value = deval(extended, 1)
``````


== Voir aussi

#nlink(<ode_solvers:deval>)[deval];, #nlink(<ode_solvers:odextend>)[odextend];, #nlink(<ode_solvers:ode45>)[ode45];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
