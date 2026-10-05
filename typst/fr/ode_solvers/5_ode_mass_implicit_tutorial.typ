#import "nelson_help.typ": *

= tutoriel masse implicite edo <ode_solvers:5_ode_mass_implicit_tutorial>

Resoudre des problemes EDO avec matrice de masse ou forme implicite.

== Description

Utilisez l'option #strong[Mass]; quand le systeme est ecrit #strong[M(t,y)y'\=f(t,y)];. Une matrice constante, un scalaire ou un handle de fonction peut definir la matrice de masse.

 

#table(
  columns: 3,
  [Forme du probleme], [Entree], [Donnees requises], 
  [#strong[M(t,y)y' \= f(t,y)];], [#strong[ode15s];, #strong[ode23t];, #strong[ode23tb];], [Option #strong[Mass]; et valeur initiale.], 
  [#strong[F(t,y,yp) \= 0];], [#strong[ode15i];], [Valeur initiale et pente initiale.], 
  [Workflow objet], [#strong[ode]; avec #strong[EquationType];], [Fonction residuelle, valeur initiale et pente initiale optionnelle.], 
)
 Utilisez #strong[ode15i]; pour les equations residuelles implicites #strong[F(t,y,yp)\=0];. La forme fonction utilise la valeur initiale et la pente initiale fournies. Dans le workflow objet, #strong[ComputeConsistentInitialConditions]; peut ajuster la pente initiale en gardant la valeur initiale fixe.


== Exemples

Matrice de masse constante.

``````matlab
options = odeset('Mass', 2, 'Jacobian', 1);
[t, y] = ode15s(@(t,y) y, [0 0.5], 1, options)
``````

Equation residuelle implicite.

``````matlab
f = @(t,y,yp) yp + y;
[t, y] = ode15i(f, [0 1], 1, -1)
``````


== Voir aussi

#nlink(<ode_solvers:ode15s>)[ode15s];, #nlink(<ode_solvers:ode15i>)[ode15i];, #nlink(<ode_solvers:odeMassMatrix>)[odeMassMatrix];, #nlink(<ode_solvers:odeJacobian>)[odeJacobian];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
