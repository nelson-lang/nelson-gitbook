# nelson.ode.options.IDAS

Objet d'options pour le solveur IDAS BDF optionnel.

## 📝 Syntaxe

- options = nelson.ode.options.IDAS()
- options = nelson.ode.options.IDAS(nom, valeur)

## 📄 Description


<b>nelson.ode.options.IDAS</b> cree un objet d'options pour la valeur de solveur <b>'idas'</b> utilisee par le workflow objet <b>ode</b>. 

| Groupe d'options | Noms | Role | 
| --- | --- | --- | 
| Pas et tolerances | **InitialStep**, **MaxStep**, **MinStep**, **RelTol**, **AbsTol**, **MaxOrder** | Controle l'integration BDF adaptative pour equations residuelles. | 
| Conditions initiales | **ComputeConsistentInitialConditions** | Demande des **y0** et **yp0** coherents pour les problemes totalement implicites. | 
| Algebre lineaire | **LinearSolver**, **Preconditioner**, **Jacobian**, **JPattern** | Donne la structure du systeme residuel et les indications de preconditionnement. | 
| Disponibilite | **'idas'** | Utilise le backend totalement implicite optionnel quand il est compile et active. | 

 

Cette valeur de solveur est disponible uniquement quand Nelson est construit avec le backend optionnel SUNDIALS. Elle utilise IDAS avec la methode BDF pour les problemes residuels totalement implicites <b>F(t,y,yp)=0</b>. 

Les options prises en charge incluent <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>RelTol</b>, <b>AbsTol</b>, <b>Refine</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>MaxOrder</b>, <b>ComputeConsistentInitialConditions</b>, <b>LinearSolver</b> et <b>Preconditioner</b>. <b>OutputFcn</b> est appelee sur les points de sortie retournes par le backend. <b>LinearSolver</b> accepte les valeurs SUNDIALS denses, iteratives et directes creuses optionnelles quand la bibliotheque correspondante est disponible. <b>Preconditioner</b> accepte <b>'auto'</b>, <b>'none'</b>, <b>'jacobi'</b>, <b>'banded'</b> ou <b>'ilu0'</b>. Avec un <b>JPattern</b> creux, <b>'ilu0'</b> construit un preconditionneur LU incomplet creux compact sans workspace dense.

## 💡 Exemple

Creer un probleme residuel IDAS.

```matlab
options = nelson.ode.options.IDAS();
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```


## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [nelson.ode.options.CVODESNonstiff](../ode_solvers/nelson.ode.options.CVODESNonstiff.md), [nelson.ode.options.CVODESStiff](../ode_solvers/nelson.ode.options.CVODESStiff.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
