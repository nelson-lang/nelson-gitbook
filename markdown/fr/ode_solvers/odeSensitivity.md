# odeSensitivity

Objet de definition des sensibilites pour les workflows EDO.

## 📝 Syntaxe

- S = odeSensitivity()
- S = odeSensitivity(name, value)

## 📄 Description


<b>odeSensitivity</b> stocke les reglages de sensibilite pour le workflow objet <b>ode</b>. Nelson resout les sensibilites directes avant pour les problemes explicites et totalement implicites avec un vecteur numerique de parametres. 

| Objet | Role | Utilise par | 
| --- | --- | --- | 
| **odeSensitivity** | Stocke une definition reutilisable pour le workflow objet **ode**. | La propriete correspondante de **ode** et **solve**. | 
| Validation | Verifie les noms et formes supportes au moment de la construction. | Les tests et erreurs restent explicites avant integration. | 

 

Quand le backend SUNDIALS optionnel est disponible, <b>cvodesnonstiff</b>, <b>cvodesstiff</b> et <b>idas</b> utilisent le support natif des sensibilites directes avant pour les problemes sans callback d'evenement. <b>cvodesnonstiff</b>, <b>cvodesstiff</b> et <b>idas</b> prennent aussi en charge les gradients adjoints pour les objectifs finals scalaires et les objectifs integraux scalaires optionnels. 

Le resultat direct <b>Sensitivity</b> est un tableau dimensions etat-par-parametre-par-temps. Les localisations d'evenements sans callback renseignent aussi <b>EventSensitivity</b>. Le resultat adjoint est <b>AdjointGradient</b>, un vecteur ligne ordonne comme <b>ParameterIndices</b>. Les fonctions de sortie recoivent seulement l'etat physique. Les matrices de masse, contraintes d'etat non negatif et equations a retard sont supportees pour les sensibilites directes explicites. Les callbacks d'evenement, parties complexes separees, fonctions de sortie retardees et adjoints retardes ne sont pas encore pris en charge. 

<b>Method</b> vaut <b>direct</b> par defaut. La valeur <b>forward</b> est acceptee comme alias de <b>direct</b>. Avec <b>Method</b> egal a <b>adjoint</b>, fournissez <b>ObjectiveFcn</b>, <b>QuadratureFcn</b>, ou les deux. Ces fonctions sont appelees comme <b>f(t,y,p)</b> et doivent retourner un scalaire reel. <b>ObjectiveTime</b> est reserve aux objectifs au temps final et doit correspondre au temps final de resolution quand il est fourni. <b>AdjointRelativeTolerance</b> et <b>AdjointAbsoluteTolerance</b> remplacent les tolerances du probleme backward.

## 💡 Exemples


```matlab
F = ode('ODEFcn', @(t,y,p) p(1) * y, ...
  'InitialValue', 1, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity('ParameterIndices', 1));
R = solve(F, 0, 0.2);
Sfinal = R.Sensitivity(1, 1, length(R.Time))
```

```matlab
F = ode('ODEFcn', @(t,y,p) p(1), ...
  'InitialValue', 0, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity(), ...
  'EventDefinition', odeEvent('EventFcn', @(t,y) y - 0.5, 'Response', 'stop'));
R = solve(F, 0, 1);
R.EventSensitivity(1, 1, 1)
```

```matlab
F = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp,p) yp + p(1) * y, ...
  'InitialValue', 1, ...
  'InitialSlope', -2, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity());
R = solve(F, 0, 0.2);
Sfinal = R.Sensitivity(1, 1, length(R.Time))
```

```matlab
F = ode('ODEFcn', @(t,y,p) p(1) * y, ...
  'InitialValue', 1, ...
  'Parameters', 2, ...
  'Sensitivity', odeSensitivity('Method', 'adjoint', ...
    'ObjectiveFcn', @(t,y,p) y(1)), ...
  'Solver', 'cvodesnonstiff');
R = solve(F, 0, 0.5);
R.AdjointGradient
```


## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [odeJacobian](../ode_solvers/odeJacobian.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
