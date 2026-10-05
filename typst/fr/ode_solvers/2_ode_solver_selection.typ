#import "nelson_help.typ": *

= choix solveur EDO <ode_solvers:2_ode_solver_selection>

Choisir un solveur EDO.

== Description

Utilisez #strong[ode45]; d'abord pour les problemes non raides lisses. Utilisez #strong[ode23]; pour une precision moderee ou des essais rapides.

 

#table(
  columns: 3,
  [Type de probleme], [Premiers choix], [Notes], 
  [Non raide], [#strong[ode45];, #strong[ode23];, #strong[ode113];], [Point de depart pour les problemes de valeur initiale lisses.], 
  [Raide ou matrice de masse], [#strong[ode15s];, #strong[ode23s];, #strong[ode23t];, #strong[ode23tb];], [Utiliser les options jacobien ou matrice de masse si disponibles.], 
  [Totalement implicite], [#strong[ode15i];, #strong[idas]; optionnel], [Utiliser la forme residuelle #strong[F(t,y,yp)\=0];.], 
  [Workflow objet automatique], [#strong['auto'];, #strong['autoswitch'];], [Selectionne ou bascule entre solveurs internes disponibles.], 
)
 Utilisez les entrees raides #strong[ode15s];, #strong[ode23s];, #strong[ode23t]; ou #strong[ode23tb]; quand la solution contient des modes rapides, une matrice de masse ou un jacobien utile. Ces entrees utilisent un noyau lineairement implicite leger inclus dans le module.

 Utilisez #strong[ode15i]; quand l'equation est ecrite comme un residu #strong[F(t,y,yp)\=0];.

 Quand Nelson est construit avec le backend optionnel SUNDIALS, #strong[cvodesnonstiff]; utilise CVODES Adams pour les problemes non raides, #strong[cvodesstiff]; utilise CVODES BDF pour les problemes raides ou avec matrice de masse, et #strong[idas]; utilise IDAS BDF pour les problemes residuels totalement implicites. Une demande explicite d'une de ces valeurs de solveur signale une erreur quand le backend n'est pas disponible. Si un #strong[JPattern]; creux est fourni et que la bibliotheque SPGMR est disponible, le backend utilise un solveur lineaire iteratif; sinon il utilise le solveur lineaire dense. Les matrices #strong[JPattern]; creuses et les valeurs #strong[Jacobian]; double creuses sont consommees directement par ce chemin de selection et de preconditionnement. Les objets d'options SUNDIALS peuvent aussi demander les valeurs #strong[LinearSolver];#strong['dense'];, #strong['spgmr'];, #strong['spfgmr'];, #strong['spbcgs'];, #strong['sptfqmr'];, #strong['pcg']; ou #strong['klu'];, et les valeurs #strong[Preconditioner];#strong['none'];, #strong['jacobi'];, #strong['banded']; ou #strong['ilu0'];. Le preconditionneur #strong['auto']; choisit #strong['jacobi']; pour les motifs creux diagonaux, #strong['banded']; pour les bandes etroites et #strong['ilu0']; pour les motifs creux plus larges. La valeur #strong['banded']; construit un preconditionneur par differences finies limite a une bande et utilise #strong[JPattern]; pour restreindre cette bande quand il est disponible. La valeur #strong['ilu0']; construit un preconditionneur LU incomplet compact sur le meme motif creux. La valeur #strong['klu']; est conditionnelle et n'est pas fournie par les binaires Windows actuels. Les stats SUNDIALS renseignent #strong[linearSolver];, #strong[preconditioner];, #strong[sensitivityMethod];, #strong[linearSetupCount];, #strong[linearIterations];, #strong[linearConvergenceFailures];, #strong[preconditionerSetupCount]; et #strong[preconditionerSolveCount];.

 Le workflow objet actuel prend en charge les sensibilites directes avant, les gradients adjoints CVODES pour objectifs scalaires, les gradients adjoints IDAS natifs pour objectifs scalaires et les gradients adjoints scalaires projetes pour les equations avec retard. Les adjoints IDAS natifs indiquent #strong[sensitivityBackend]; avec la valeur #strong['idasAdjoint'];. Les equations avec retard prennent en charge les retards de valeur et de pente positifs, y compris les retards fonctions causaux; les retards dependants de l'etat recalculent des chunks internes de methode des pas depuis le retard courant et reessaient avec des chunks plus petits quand un chunk d'essai demande un historique futur. Les stats de retard indiquent le nombre de chunks via #strong[nchunks];. Les residus avec retard totalement implicites sont pris en charge avec #strong[ode15i]; et, quand le backend optionnel est disponible, #strong[idas];. #strong['autoswitch']; fonctionne dans la boucle de pas adaptative et peut basculer entre #strong[ode45]; et #strong[ode15s]; quand la pression de raideur apparait ou disparait, tout en conservant la sortie solution, les evenements et les statistiques. Les stats autoswitch incluent #strong[autoSwitchInitialSolver];, #strong[autoSwitchSelectedSolver];, #strong[autoSwitchSwitched];, #strong[autoSwitchReason];, #strong[autoSwitchLastReason];, #strong[autoSwitchMode];, #strong[autoSwitchSwitchTime];, #strong[autoSwitchSwitchCount];, #strong[autoSwitchStiffnessIndicator];, #strong[autoSwitchReleaseIndicator]; et #strong[autoSwitchStiffnessCriterion];.


== Exemples

Probleme non raide.

``````matlab
options = odeset('RelTol', 1e-5);
[t, y] = ode45(@(t,y) -y, [0 1], 1, options)
``````

Probleme raide avec jacobien.

``````matlab
f = @(t,y) -1000 * (y - cos(t)) - sin(t);
options = odeset('Jacobian', -1000);
[t, y] = ode23s(f, [0 0.5], 1, options)
``````


== Voir aussi

#nlink(<ode_solvers:ode45>)[ode45];, #nlink(<ode_solvers:ode23>)[ode23];, #nlink(<ode_solvers:ode15s>)[ode15s];, #nlink(<ode_solvers:ode15i>)[ode15i];, #nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];, #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
