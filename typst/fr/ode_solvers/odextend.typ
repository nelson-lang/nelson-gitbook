#import "nelson_help.typ": *

= odextend <ode_solvers:odextend>

Prolonger une solution EDO.

== Syntaxe

- #raw("solout = odextend(sol, odefun, tfinal)");
- #raw("solout = odextend(sol, odefun, tfinal, options)");

== Description

#strong[odextend]; continue une solution depuis son dernier point calcule jusqu'a un nouveau temps final.

 

#table(
  columns: 2,
  [Element], [Details], 
  [Solution en entree], [Structure #strong[sol]; existante retournee par un solveur ODE.], 
  [Continuation], [Etend la solution vers un nouveau temps final avec la meme definition du probleme.], 
  [Options], [Les options peuvent ajuster tolerances, evenements, callbacks de sortie et limites de pas.], 
  [Resultat], [Nouvelle structure #strong[sol]; compatible avec #strong[deval];.], 
)
 Quand #strong[odefun]; est vide, la fonction stockee dans la solution d'entree est reutilisee. Si le temps final demande est deja couvert par l'intervalle de solution, la solution d'entree est retournee. Prolonger dans la direction opposee est une erreur. Les champs d'evenements sont conserves et prolonges quand des donnees d'evenements existent. Les solutions sans donnees d'evenements ne recoivent pas de champs #strong[xe];, #strong[ye]; ou #strong[ie]; vides.


== Exemple

``````matlab
sol = ode45(@(t,y) -y, [0 0.5], 1);
sol = odextend(sol, [], 1)
``````


== Voir aussi

#nlink(<ode_solvers:deval>)[deval];, #nlink(<ode_solvers:odeset>)[odeset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
