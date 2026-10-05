# nelson.ode.options.CVODESNonstiff

Objet d'options pour le solveur CVODES Adams optionnel.

## 📝 Syntaxe

- options = nelson.ode.options.CVODESNonstiff()
- options = nelson.ode.options.CVODESNonstiff(nom, valeur)

## 📄 Description


<b>nelson.ode.options.CVODESNonstiff</b> cree un objet d'options pour la valeur de solveur <b>'cvodesnonstiff'</b> utilisee par le workflow objet <b>ode</b>. 

| Groupe d'options | Noms | Role | 
| --- | --- | --- | 
| Pas et tolerances | **InitialStep**, **MaxStep**, **MinStep**, **RelTol**, **AbsTol**, **MaxOrder** | Controle l'integration Adams adaptative. | 
| Sortie | **Refine**, **OutputFcn**, **OutputSelection** | Choisit les points retournes et les callbacks de sortie optionnels. | 
| Algebre lineaire | **LinearSolver**, **Preconditioner** | Choisit le support dense, iteratif ou sparse disponible et le preconditionnement. | 
| Disponibilite | **'cvodesnonstiff'** | Utilise le backend Adams optionnel quand il est compile et active. | 

 

Cette valeur de solveur est disponible uniquement quand Nelson est construit avec le backend optionnel SUNDIALS. Elle utilise CVODES avec la methode Adams pour les problemes EDO standards non raides. 

Les options prises en charge incluent <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>RelTol</b>, <b>AbsTol</b>, <b>Refine</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>MaxOrder</b>, <b>LinearSolver</b> et <b>Preconditioner</b>. <b>OutputFcn</b> est appelee sur les points de sortie retournes par le backend. <b>LinearSolver</b> accepte les valeurs SUNDIALS denses, iteratives et directes creuses optionnelles quand la bibliotheque correspondante est disponible. <b>Preconditioner</b> accepte <b>'auto'</b>, <b>'none'</b>, <b>'jacobi'</b>, <b>'banded'</b> ou <b>'ilu0'</b>. Avec un <b>JPattern</b> creux, <b>'ilu0'</b> construit un preconditionneur LU incomplet creux compact sans workspace dense.

## 💡 Exemple

Creer un probleme CVODES non raide.

```matlab
options = nelson.ode.options.CVODESNonstiff('RelTol', 1e-6);
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```


## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [nelson.ode.options.CVODESStiff](../ode_solvers/nelson.ode.options.CVODESStiff.md), [nelson.ode.options.IDAS](../ode_solvers/nelson.ode.options.IDAS.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
