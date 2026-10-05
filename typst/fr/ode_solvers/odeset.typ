#import "nelson_help.typ": *

= odeset <ode_solvers:odeset>

Creer ou modifier des options EDO.

== Syntaxe

- #raw("options = odeset()");
- #raw("options = odeset(nom, valeur)");
- #raw("options = odeset(anciennesOptions, nom, valeur)");

== Description

#strong[odeset]; cree une structure d'options pour les solveurs EDO.

 

#table(
  columns: 3,
  [Groupe], [Options], [Role], 
  [Tolerances], [#strong[RelTol];, #strong[AbsTol];, #strong[NormControl];], [Controle l erreur adaptative.], 
  [Pas et sorties], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[Refine];, #strong[OutputFcn];, #strong[OutputSel];, #strong[Stats];], [Controle les pas publics, les callbacks de sortie et les statistiques.], 
  [Evenements et contraintes], [#strong[Events];, #strong[NonNegative];], [Localise les zeros et contraint certaines composantes.], 
  [Systemes raides], [#strong[Mass];, #strong[Jacobian];, #strong[JPattern];, #strong[JConstant];, #strong[BDF];, #strong[MaxOrder];, #strong[MassSingular];, #strong[MStateDependence];, #strong[MvPattern];], [Donne des informations structurelles aux solveurs raides ou implicites.], 
)
 Les options courantes incluent #strong[RelTol];, #strong[AbsTol];, #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[Refine];, #strong[Stats];, #strong[Events];, #strong[OutputFcn];, #strong[OutputSel];, #strong[NonNegative];, #strong[Mass];, #strong[Jacobian];, #strong[JPattern];, #strong[JConstant];, #strong[BDF];, #strong[MaxOrder];, #strong[MassSingular];, #strong[MStateDependence]; et #strong[MvPattern];. Les options explicites de taille de pas doivent etre positives.

 Quand l'intervalle de temps contient seulement deux valeurs, #strong[Refine]; ajoute des points de sortie dans chaque pas accepte. Avec des intervalles plus longs, les points de temps demandes definissent les points de sortie publics. #strong[OutputFcn]; est appelee sur ces points raffines ou demandes; retourner un scalaire #strong[true]; arrete l'integration au point de sortie courant. #strong[Stats]; a #strong[on]; affiche les compteurs de pas et d'evaluations. #strong[NormControl]; a #strong[on]; utilise une norme vectorielle dans le test d'erreur adaptatif. #strong[Vectorized]; a #strong[on]; autorise les appels vectorises du membre de droite pendant la construction du jacobien par differences finies. #strong[JPattern]; fournit le motif non nul utilise par les entrees raides et l'entree implicite quand un jacobien par differences finies est necessaire. #strong[JConstant]; a #strong[on]; reutilise le jacobien dans chaque pas lineairement implicite.


== Exemples

Points de sortie raffines.

``````matlab
options = odeset('Refine', 4, 'MaxStep', 0.5);
[t, y] = ode45(@(t,y) y, [0 1], 1, options)
``````

Statistiques et jacobien pour une entree raide.

``````matlab
f = @(t,y) -1000 * (y - cos(t)) - sin(t);
options = odeset('Jacobian', -1000, 'Stats', 'on');
[t, y] = ode15s(f, [0 0.5], 1, options)
``````

Controle par norme vectorielle.

``````matlab
options = odeset('NormControl', 'on');
[t, y] = ode45(@(t,y) [y(1); -2*y(2)], [0 1], [1; 1], options)
``````

Motif de jacobien par differences finies.

``````matlab
pattern = [1 0; 0 1];
options = odeset('JPattern', pattern, 'Vectorized', 'on');
[t, y] = ode15s(@(t,y) [-10*y(1,:); -20*y(2,:)], [0 0.2], [1; 2], options)
``````

Indication de jacobien constant.

``````matlab
options = odeset('Jacobian', -25, 'JConstant', 'on');
[t, y] = ode15s(@(t,y) -25*y, [0 0.2], 1, options)
``````

Fonction de sortie aux points demandes.

``````matlab
out = @(t,y,flag) false;
options = odeset('OutputFcn', out);
[t, y] = ode45(@(t,y) y, [0 0.25 0.5], 1, options)
``````


== Voir aussi

#nlink(<ode_solvers:odeget>)[odeget];, #nlink(<ode_solvers:ode45>)[ode45];, #nlink(<ode_solvers:ode15s>)[ode15s];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
