#import "nelson_help.typ": *

= odeSensitivity <ode_solvers:odeSensitivity>

Objet de definition des sensibilites pour les workflows EDO.

== Syntaxe

- #raw("S = odeSensitivity()");
- #raw("S = odeSensitivity(name, value)");

== Description

#strong[odeSensitivity]; stocke les reglages de sensibilite pour le workflow objet #strong[ode];. Nelson resout les sensibilites directes avant pour les problemes explicites et totalement implicites avec un vecteur numerique de parametres.

 

#table(
  columns: 3,
  [Objet], [Role], [Utilise par], 
  [#strong[odeSensitivity];], [Stocke une definition reutilisable pour le workflow objet #strong[ode];.], [La propriete correspondante de #strong[ode]; et #strong[solve];.], 
  [Validation], [Verifie les noms et formes supportes au moment de la construction.], [Les tests et erreurs restent explicites avant integration.], 
)
 Quand le backend SUNDIALS optionnel est disponible, #strong[cvodesnonstiff];, #strong[cvodesstiff]; et #strong[idas]; utilisent le support natif des sensibilites directes avant pour les problemes sans callback d'evenement. #strong[cvodesnonstiff];, #strong[cvodesstiff]; et #strong[idas]; prennent aussi en charge les gradients adjoints pour les objectifs finals scalaires et les objectifs integraux scalaires optionnels.

 Le resultat direct #strong[Sensitivity]; est un tableau dimensions etat-par-parametre-par-temps. Les localisations d'evenements sans callback renseignent aussi #strong[EventSensitivity];. Le resultat adjoint est #strong[AdjointGradient];, un vecteur ligne ordonne comme #strong[ParameterIndices];. Les fonctions de sortie recoivent seulement l'etat physique. Les matrices de masse, contraintes d'etat non negatif et equations a retard sont supportees pour les sensibilites directes explicites. Les callbacks d'evenement, parties complexes separees, fonctions de sortie retardees et adjoints retardes ne sont pas encore pris en charge.

 #strong[Method]; vaut #strong[direct]; par defaut. La valeur #strong[forward]; est acceptee comme alias de #strong[direct];. Avec #strong[Method]; egal a #strong[adjoint];, fournissez #strong[ObjectiveFcn];, #strong[QuadratureFcn];, ou les deux. Ces fonctions sont appelees comme #strong[f(t,y,p)]; et doivent retourner un scalaire reel. #strong[ObjectiveTime]; est reserve aux objectifs au temps final et doit correspondre au temps final de resolution quand il est fourni. #strong[AdjointRelativeTolerance]; et #strong[AdjointAbsoluteTolerance]; remplacent les tolerances du probleme backward.


== Exemples

``````matlab
F = ode('ODEFcn', @(t,y,p) p(1) * y, ...
  'InitialValue', 1, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity('ParameterIndices', 1));
R = solve(F, 0, 0.2);
Sfinal = R.Sensitivity(1, 1, length(R.Time))
``````

``````matlab
F = ode('ODEFcn', @(t,y,p) p(1), ...
  'InitialValue', 0, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity(), ...
  'EventDefinition', odeEvent('EventFcn', @(t,y) y - 0.5, 'Response', 'stop'));
R = solve(F, 0, 1);
R.EventSensitivity(1, 1, 1)
``````

``````matlab
F = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp,p) yp + p(1) * y, ...
  'InitialValue', 1, ...
  'InitialSlope', -2, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity());
R = solve(F, 0, 0.2);
Sfinal = R.Sensitivity(1, 1, length(R.Time))
``````

``````matlab
F = ode('ODEFcn', @(t,y,p) p(1) * y, ...
  'InitialValue', 1, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity('Method', 'adjoint', ...
    'ObjectiveFcn', @(t,y,p) y(1)), ...
  'Solver', 'cvodesnonstiff');
R = solve(F, 0, 0.5);
R.AdjointGradient
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:odeJacobian>)[odeJacobian];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
