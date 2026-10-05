# Resolution d'EDO


    
Le module ODE Solvers fournit des fonctions d'integration en temps pour les problemes differentiels explicites, raides et implicites dans Nelson.

    
Il inclut les points d'entree des solveurs, les wrappers pour equations a retard et problemes aux limites, la gestion des options, l'interpolation, l'extension des solutions, la detection d'evenements et les definitions de problemes orientees objet.

    
Quand le backend optionnel SUNDIALS est construit, le workflow objet peut aussi selectionner des valeurs de solveur CVODES et IDAS.

    
Le module vise les experiences numeriques, les simulations et les exemples pedagogiques qui demandent une configuration compacte et des objets de resultats reproductibles.

    
Les tutoriels couvrent le choix du solveur, les evenements, les tolerances, les matrices de masse, les equations implicites, les equations a retard, les problemes aux limites, l'interpolation, l'extension, les workflows objet et les etats complexes.

    
| Domaine | Entrees principales |
| --- | --- |
| Problemes a valeur initiale | **ode23**, **ode45**, **ode78**, **ode89**, **ode113**, **ode15s**, **ode15i** |
| Equations a retard et problemes aux limites | **dde23**, **ddesd**, **ddensd**, **bvp4c**, **bvp5c** |
| Utilitaires | **odeset**, **deval**, **odextend**, **ode**, **odeEvent**, **odeSensitivity** |


  

## Functions

- [workflows EDO](1_ode_workflows.md) - Exemples EDO et interface objet.
- [choix solveur EDO](2_ode_solver_selection.md) - Choisir un solveur EDO.
- [tutoriel evenements edo](3_ode_events_tutorial.md) - Localiser des evenements pendant une integration EDO.
- [tutoriel tolerances edo](4_ode_tolerances_tutorial.md) - Controler la precision et les statistiques EDO.
- [tutoriel masse implicite edo](5_ode_mass_implicit_tutorial.md) - Resoudre des problemes EDO avec matrice de masse ou forme implicite.
- [tutoriel interpolation extension edo](6_ode_interpolation_extension_tutorial.md) - Interpoler et prolonger des solutions EDO.
- [tutoriel objet edo](7_ode_object_workflow_tutorial.md) - Definir et resoudre des problemes EDO avec des objets.
- [tutoriel edo complexe](8_ode_complex_workflow_tutorial.md) - Resoudre des problemes EDO objet avec des etats complexes.
- [bvp4c](bvp4c.md) - Resout des problemes aux limites par collocation d'ordre quatre.
- [bvp5c](bvp5c.md) - Resout des problemes aux limites avec raffinement de maillage.
- [bvpget](bvpget.md) - Recupere une option BVP.
- [bvpinit](bvpinit.md) - Cree une estimation initiale BVP.
- [bvpset](bvpset.md) - Cree ou met a jour des options BVP.
- [bvpxtend](bvpxtend.md) - Etend une estimation de solution BVP.
- [dde23](dde23.md) - Resout des equations a retard constant.
- [ddeget](ddeget.md) - Recupere une option DDE.
- [ddensd](ddensd.md) - Resout des equations a retard neutres.
- [ddesd](ddesd.md) - Resout des equations a temps retardes dependants de l'etat.
- [ddeset](ddeset.md) - Cree ou met a jour des options DDE.
- [decic](decic.md) - Calcule des conditions initiales coherentes pour les EDO implicites.
- [deval](deval.md) - Evaluer une solution EDO.
- [nelson.ode.ODEResults](nelson.ode.ODEResults.md) - Objet resultat retourne par solve sur un objet ode.
- [nelson.ode.Options](nelson.ode.Options.md) - Classe de base des classes d'options de solveur.
- [nelson.ode.options.CVODESNonstiff](nelson.ode.options.CVODESNonstiff.md) - Objet d'options pour le solveur CVODES Adams optionnel.
- [nelson.ode.options.CVODESStiff](nelson.ode.options.CVODESStiff.md) - Objet d'options pour le solveur CVODES BDF optionnel.
- [nelson.ode.options.IDAS](nelson.ode.options.IDAS.md) - Objet d'options pour le solveur IDAS BDF optionnel.
- [nelson.ode.options.ODE113](nelson.ode.options.ODE113.md) - Objet d'options pour le solveur ode113.
- [nelson.ode.options.ODE15i](nelson.ode.options.ODE15i.md) - Objet d'options pour le solveur ode15i.
- [nelson.ode.options.ODE15s](nelson.ode.options.ODE15s.md) - Objet d'options pour le solveur ode15s.
- [nelson.ode.options.ODE23](nelson.ode.options.ODE23.md) - Objet d'options pour le solveur ode23.
- [nelson.ode.options.ODE23s](nelson.ode.options.ODE23s.md) - Objet d'options pour le solveur ode23s.
- [nelson.ode.options.ODE23t](nelson.ode.options.ODE23t.md) - Objet d'options pour le solveur ode23t.
- [nelson.ode.options.ODE23tb](nelson.ode.options.ODE23tb.md) - Objet d'options pour le solveur ode23tb.
- [nelson.ode.options.ODE45](nelson.ode.options.ODE45.md) - Objet d'options pour le solveur ode45.
- [nelson.ode.options.ODE78](nelson.ode.options.ODE78.md) - Objet d'options pour le solveur ode78.
- [nelson.ode.options.ODE89](nelson.ode.options.ODE89.md) - Objet d'options pour le solveur ode89.
- [ode](ode.md) - Interface objet pour problemes EDO.
- [ode113](ode113.md) - Entree de solveur EDO non raide a ordre variable.
- [ode15i](ode15i.md) - Entree de solveur EDO implicite.
- [ode15s](ode15s.md) - Entree de solveur EDO raide.
- [ode23](ode23.md) - Solveur EDO non raide bas ordre.
- [ode23s](ode23s.md) - Entree de solveur EDO raide.
- [ode23t](ode23t.md) - Entree de solveur EDO moderement raide.
- [ode23tb](ode23tb.md) - Entree de solveur EDO raide.
- [ode45](ode45.md) - Solveur EDO non raide.
- [ode78](ode78.md) - Solveur EDO non raide haut ordre.
- [ode89](ode89.md) - Solveur EDO non raide haut ordre.
- [odeDelay](odeDelay.md) - Objet de definition des delais pour les workflows EDO.
- [odeEvent](odeEvent.md) - Description d'evenement pour le flux objet EDO.
- [odeJacobian](odeJacobian.md) - Description de jacobien pour solveurs EDO.
- [odeMassMatrix](odeMassMatrix.md) - Description de matrice de masse pour solveurs EDO.
- [odeSensitivity](odeSensitivity.md) - Objet de definition des sensibilites pour les workflows EDO.
- [odeexamples](odeexamples.md) - Point d'entree des exemples EDO.
- [odeget](odeget.md) - Lire une option EDO.
- [odephas2](odephas2.md) - Fonction de sortie EDO pour portrait de phase 2D.
- [odephas3](odephas3.md) - Fonction de sortie EDO pour portrait de phase 3D.
- [odeplot](odeplot.md) - Fonction de sortie EDO pour le trace de solution.
- [odeprint](odeprint.md) - Fonction de sortie EDO pour la console.
- [odeset](odeset.md) - Creer ou modifier des options EDO.
- [odextend](odextend.md) - Prolonger une solution EDO.

