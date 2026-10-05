#import "nelson_help.typ": *

= Resolution d'EDO

Le module ODE Solvers fournit des fonctions d'integration en temps pour les problemes differentiels explicites, raides et implicites dans Nelson.

 Il inclut les points d'entree des solveurs, les wrappers pour equations a retard et problemes aux limites, la gestion des options, l'interpolation, l'extension des solutions, la detection d'evenements et les definitions de problemes orientees objet.

 Quand le backend optionnel SUNDIALS est construit, le workflow objet peut aussi selectionner des valeurs de solveur CVODES et IDAS.

 Le module vise les experiences numeriques, les simulations et les exemples pedagogiques qui demandent une configuration compacte et des objets de resultats reproductibles.

 Les tutoriels couvrent le choix du solveur, les evenements, les tolerances, les matrices de masse, les equations implicites, les equations a retard, les problemes aux limites, l'interpolation, l'extension, les workflows objet et les etats complexes.

 
#table(
  columns: 2,
  table.header([Domaine], [Entrees principales], ),
  [Problemes a valeur initiale], [#strong[ode23];, #strong[ode45];, #strong[ode78];, #strong[ode89];, #strong[ode113];, #strong[ode15s];, #strong[ode15i];], 
  [Equations a retard et problemes aux limites], [#strong[dde23];, #strong[ddesd];, #strong[ddensd];, #strong[bvp4c];, #strong[bvp5c];], 
  [Utilitaires], [#strong[odeset];, #strong[deval];, #strong[odextend];, #strong[ode];, #strong[odeEvent];, #strong[odeSensitivity];], 
)
== Functions

- #nlink(<ode_solvers:1_ode_workflows>)[workflows EDO]: Exemples EDO et interface objet.
- #nlink(<ode_solvers:2_ode_solver_selection>)[choix solveur EDO]: Choisir un solveur EDO.
- #nlink(<ode_solvers:3_ode_events_tutorial>)[tutoriel evenements edo]: Localiser des evenements pendant une integration EDO.
- #nlink(<ode_solvers:4_ode_tolerances_tutorial>)[tutoriel tolerances edo]: Controler la precision et les statistiques EDO.
- #nlink(<ode_solvers:5_ode_mass_implicit_tutorial>)[tutoriel masse implicite edo]: Resoudre des problemes EDO avec matrice de masse ou forme implicite.
- #nlink(<ode_solvers:6_ode_interpolation_extension_tutorial>)[tutoriel interpolation extension edo]: Interpoler et prolonger des solutions EDO.
- #nlink(<ode_solvers:7_ode_object_workflow_tutorial>)[tutoriel objet edo]: Definir et resoudre des problemes EDO avec des objets.
- #nlink(<ode_solvers:8_ode_complex_workflow_tutorial>)[tutoriel edo complexe]: Resoudre des problemes EDO objet avec des etats complexes.
- #nlink(<ode_solvers:bvp4c>)[bvp4c]: Resout des problemes aux limites par collocation d'ordre quatre.
- #nlink(<ode_solvers:bvp5c>)[bvp5c]: Resout des problemes aux limites avec raffinement de maillage.
- #nlink(<ode_solvers:bvpget>)[bvpget]: Recupere une option BVP.
- #nlink(<ode_solvers:bvpinit>)[bvpinit]: Cree une estimation initiale BVP.
- #nlink(<ode_solvers:bvpset>)[bvpset]: Cree ou met a jour des options BVP.
- #nlink(<ode_solvers:bvpxtend>)[bvpxtend]: Etend une estimation de solution BVP.
- #nlink(<ode_solvers:dde23>)[dde23]: Resout des equations a retard constant.
- #nlink(<ode_solvers:ddeget>)[ddeget]: Recupere une option DDE.
- #nlink(<ode_solvers:ddensd>)[ddensd]: Resout des equations a retard neutres.
- #nlink(<ode_solvers:ddesd>)[ddesd]: Resout des equations a temps retardes dependants de l'etat.
- #nlink(<ode_solvers:ddeset>)[ddeset]: Cree ou met a jour des options DDE.
- #nlink(<ode_solvers:decic>)[decic]: Calcule des conditions initiales coherentes pour les EDO implicites.
- #nlink(<ode_solvers:deval>)[deval]: Evaluer une solution EDO.
- #nlink(<ode_solvers:nelson.ode.ODEResults>)[nelson.ode.ODEResults]: Objet resultat retourne par solve sur un objet ode.
- #nlink(<ode_solvers:nelson.ode.Options>)[nelson.ode.Options]: Classe de base des classes d'options de solveur.
- #nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff]: Objet d'options pour le solveur CVODES Adams optionnel.
- #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff]: Objet d'options pour le solveur CVODES BDF optionnel.
- #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS]: Objet d'options pour le solveur IDAS BDF optionnel.
- #nlink(<ode_solvers:nelson.ode.options.ODE113>)[nelson.ode.options.ODE113]: Objet d'options pour le solveur ode113.
- #nlink(<ode_solvers:nelson.ode.options.ODE15i>)[nelson.ode.options.ODE15i]: Objet d'options pour le solveur ode15i.
- #nlink(<ode_solvers:nelson.ode.options.ODE15s>)[nelson.ode.options.ODE15s]: Objet d'options pour le solveur ode15s.
- #nlink(<ode_solvers:nelson.ode.options.ODE23>)[nelson.ode.options.ODE23]: Objet d'options pour le solveur ode23.
- #nlink(<ode_solvers:nelson.ode.options.ODE23s>)[nelson.ode.options.ODE23s]: Objet d'options pour le solveur ode23s.
- #nlink(<ode_solvers:nelson.ode.options.ODE23t>)[nelson.ode.options.ODE23t]: Objet d'options pour le solveur ode23t.
- #nlink(<ode_solvers:nelson.ode.options.ODE23tb>)[nelson.ode.options.ODE23tb]: Objet d'options pour le solveur ode23tb.
- #nlink(<ode_solvers:nelson.ode.options.ODE45>)[nelson.ode.options.ODE45]: Objet d'options pour le solveur ode45.
- #nlink(<ode_solvers:nelson.ode.options.ODE78>)[nelson.ode.options.ODE78]: Objet d'options pour le solveur ode78.
- #nlink(<ode_solvers:nelson.ode.options.ODE89>)[nelson.ode.options.ODE89]: Objet d'options pour le solveur ode89.
- #nlink(<ode_solvers:ode>)[ode]: Interface objet pour problemes EDO.
- #nlink(<ode_solvers:ode113>)[ode113]: Entree de solveur EDO non raide a ordre variable.
- #nlink(<ode_solvers:ode15i>)[ode15i]: Entree de solveur EDO implicite.
- #nlink(<ode_solvers:ode15s>)[ode15s]: Entree de solveur EDO raide.
- #nlink(<ode_solvers:ode23>)[ode23]: Solveur EDO non raide bas ordre.
- #nlink(<ode_solvers:ode23s>)[ode23s]: Entree de solveur EDO raide.
- #nlink(<ode_solvers:ode23t>)[ode23t]: Entree de solveur EDO moderement raide.
- #nlink(<ode_solvers:ode23tb>)[ode23tb]: Entree de solveur EDO raide.
- #nlink(<ode_solvers:ode45>)[ode45]: Solveur EDO non raide.
- #nlink(<ode_solvers:ode78>)[ode78]: Solveur EDO non raide haut ordre.
- #nlink(<ode_solvers:ode89>)[ode89]: Solveur EDO non raide haut ordre.
- #nlink(<ode_solvers:odeDelay>)[odeDelay]: Objet de definition des delais pour les workflows EDO.
- #nlink(<ode_solvers:odeEvent>)[odeEvent]: Description d'evenement pour le flux objet EDO.
- #nlink(<ode_solvers:odeJacobian>)[odeJacobian]: Description de jacobien pour solveurs EDO.
- #nlink(<ode_solvers:odeMassMatrix>)[odeMassMatrix]: Description de matrice de masse pour solveurs EDO.
- #nlink(<ode_solvers:odeSensitivity>)[odeSensitivity]: Objet de definition des sensibilites pour les workflows EDO.
- #nlink(<ode_solvers:odeexamples>)[odeexamples]: Point d'entree des exemples EDO.
- #nlink(<ode_solvers:odeget>)[odeget]: Lire une option EDO.
- #nlink(<ode_solvers:odephas2>)[odephas2]: Fonction de sortie EDO pour portrait de phase 2D.
- #nlink(<ode_solvers:odephas3>)[odephas3]: Fonction de sortie EDO pour portrait de phase 3D.
- #nlink(<ode_solvers:odeplot>)[odeplot]: Fonction de sortie EDO pour le trace de solution.
- #nlink(<ode_solvers:odeprint>)[odeprint]: Fonction de sortie EDO pour la console.
- #nlink(<ode_solvers:odeset>)[odeset]: Creer ou modifier des options EDO.
- #nlink(<ode_solvers:odextend>)[odextend]: Prolonger une solution EDO.


#nested[
#pagebreak(weak: true)
#include "1_ode_workflows.typ"
#pagebreak(weak: true)
#include "2_ode_solver_selection.typ"
#pagebreak(weak: true)
#include "3_ode_events_tutorial.typ"
#pagebreak(weak: true)
#include "4_ode_tolerances_tutorial.typ"
#pagebreak(weak: true)
#include "5_ode_mass_implicit_tutorial.typ"
#pagebreak(weak: true)
#include "6_ode_interpolation_extension_tutorial.typ"
#pagebreak(weak: true)
#include "7_ode_object_workflow_tutorial.typ"
#pagebreak(weak: true)
#include "8_ode_complex_workflow_tutorial.typ"
#pagebreak(weak: true)
#include "bvp4c.typ"
#pagebreak(weak: true)
#include "bvp5c.typ"
#pagebreak(weak: true)
#include "bvpget.typ"
#pagebreak(weak: true)
#include "bvpinit.typ"
#pagebreak(weak: true)
#include "bvpset.typ"
#pagebreak(weak: true)
#include "bvpxtend.typ"
#pagebreak(weak: true)
#include "dde23.typ"
#pagebreak(weak: true)
#include "ddeget.typ"
#pagebreak(weak: true)
#include "ddensd.typ"
#pagebreak(weak: true)
#include "ddesd.typ"
#pagebreak(weak: true)
#include "ddeset.typ"
#pagebreak(weak: true)
#include "decic.typ"
#pagebreak(weak: true)
#include "deval.typ"
#pagebreak(weak: true)
#include "nelson.ode.ODEResults.typ"
#pagebreak(weak: true)
#include "nelson.ode.Options.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.CVODESNonstiff.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.CVODESStiff.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.IDAS.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE113.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE15i.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE15s.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE23.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE23s.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE23t.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE23tb.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE45.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE78.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE89.typ"
#pagebreak(weak: true)
#include "ode.typ"
#pagebreak(weak: true)
#include "ode113.typ"
#pagebreak(weak: true)
#include "ode15i.typ"
#pagebreak(weak: true)
#include "ode15s.typ"
#pagebreak(weak: true)
#include "ode23.typ"
#pagebreak(weak: true)
#include "ode23s.typ"
#pagebreak(weak: true)
#include "ode23t.typ"
#pagebreak(weak: true)
#include "ode23tb.typ"
#pagebreak(weak: true)
#include "ode45.typ"
#pagebreak(weak: true)
#include "ode78.typ"
#pagebreak(weak: true)
#include "ode89.typ"
#pagebreak(weak: true)
#include "odeDelay.typ"
#pagebreak(weak: true)
#include "odeEvent.typ"
#pagebreak(weak: true)
#include "odeJacobian.typ"
#pagebreak(weak: true)
#include "odeMassMatrix.typ"
#pagebreak(weak: true)
#include "odeSensitivity.typ"
#pagebreak(weak: true)
#include "odeexamples.typ"
#pagebreak(weak: true)
#include "odeget.typ"
#pagebreak(weak: true)
#include "odephas2.typ"
#pagebreak(weak: true)
#include "odephas3.typ"
#pagebreak(weak: true)
#include "odeplot.typ"
#pagebreak(weak: true)
#include "odeprint.typ"
#pagebreak(weak: true)
#include "odeset.typ"
#pagebreak(weak: true)
#include "odextend.typ"
]
