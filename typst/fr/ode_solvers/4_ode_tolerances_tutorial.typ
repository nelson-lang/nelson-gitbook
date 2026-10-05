#import "nelson_help.typ": *

= tutoriel tolerances edo <ode_solvers:4_ode_tolerances_tutorial>

Controler la precision et les statistiques EDO.

== Description

Utilisez #strong[RelTol]; pour la precision relative et #strong[AbsTol]; pour les composantes de petite amplitude. Utilisez #strong[InitialStep];, #strong[MaxStep]; et #strong[MinStep]; pour borner le controle de pas adaptatif.

 

#table(
  columns: 3,
  [Option], [Effet], [Usage typique], 
  [#strong[RelTol];], [Adapte le test d'erreur a la taille de la solution.], [Controle principal de precision.], 
  [#strong[AbsTol];], [Fixe un plancher pour les petites composantes.], [Protege les variables proches de zero.], 
  [#strong[NormControl];], [Utilise une norme vectorielle dans le test adaptatif.], [Systemes couples avec echelle partagee.], 
  [#strong[Stats];], [Affiche les compteurs solveur.], [Diagnostics et tests de regression.], 
)
 Placez #strong[Stats]; a #strong[on]; pour afficher les compteurs, ou lisez le champ #strong[stats]; d'une structure de solution.


== Exemples

Comparer deux tolerances.

``````matlab
loose = odeset('RelTol', 1e-3, 'AbsTol', 1e-6);
tight = odeset('RelTol', 1e-6, 'AbsTol', 1e-9);
solLoose = ode45(@(t,y) y, [0 1], 1, loose);
solTight = ode45(@(t,y) y, [0 1], 1, tight);
[solLoose.stats.nsteps solTight.stats.nsteps] 
``````

Afficher les statistiques.

``````matlab
options = odeset('Stats', 'on', 'MaxStep', 0.1);
[t, y] = ode45(@(t,y) -y, [0 1], 1, options);
``````


== Voir aussi

#nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:odeget>)[odeget];, #nlink(<ode_solvers:ode>)[ode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
