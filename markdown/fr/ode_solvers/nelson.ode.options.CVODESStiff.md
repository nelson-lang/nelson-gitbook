# nelson.ode.options.CVODESStiff

Objet d'options pour le solveur CVODES BDF optionnel.

## 📝 Syntaxe

- options = nelson.ode.options.CVODESStiff()
- options = nelson.ode.options.CVODESStiff(nom, valeur)

## 📄 Description

<b>nelson.ode.options.CVODESStiff</b> cree un objet d'options pour la valeur de solveur <b>'cvodesstiff'</b> utilisee par le workflow objet <b>ode</b>.

| Groupe d'options  | Noms                                                                            | Role                                                                          |
| ----------------- | ------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| Pas et tolerances | **InitialStep**, **MaxStep**, **MinStep**, **RelTol**, **AbsTol**, **MaxOrder** | Controle l'integration BDF adaptative.                                        |
| Sortie            | **Refine**, **OutputFcn**, **OutputSelection**                                  | Choisit les points retournes et les callbacks de sortie optionnels.           |
| Algebre lineaire  | **LinearSolver**, **Preconditioner**, **Jacobian**, **JPattern**                | Donne la structure du systeme raide et les indications de preconditionnement. |
| Disponibilite     | **'cvodesstiff'**                                                               | Utilise le backend BDF optionnel quand il est compile et active.              |

Cette valeur de solveur est disponible uniquement quand Nelson est construit avec le backend optionnel SUNDIALS. Elle utilise CVODES avec la methode BDF pour les problemes EDO standards raides et les problemes standards avec matrice de masse non singuliere.

Les options prises en charge incluent <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>RelTol</b>, <b>AbsTol</b>, <b>Refine</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>MaxOrder</b>, <b>LinearSolver</b> et <b>Preconditioner</b>. <b>OutputFcn</b> est appelee sur les points de sortie retournes par le backend. <b>LinearSolver</b> accepte <b>'auto'</b>, <b>'dense'</b>, <b>'spgmr'</b>, <b>'spfgmr'</b>, <b>'spbcgs'</b>, <b>'sptfqmr'</b>, <b>'pcg'</b> ou <b>'klu'</b> quand la bibliotheque SUNDIALS correspondante est disponible. <b>Preconditioner</b> accepte <b>'auto'</b>, <b>'none'</b>, <b>'jacobi'</b>, <b>'banded'</b> ou <b>'ilu0'</b>. Avec un <b>JPattern</b> creux, <b>'ilu0'</b> construit un preconditionneur LU incomplet creux compact sans workspace dense.

## 💡 Exemple

Creer un probleme CVODES raide.

```matlab
options = nelson.ode.options.CVODESStiff('MaxOrder', 5);
problem = ode('ODEFcn', @(t,y) -20 * y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```

## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [nelson.ode.options.CVODESNonstiff](../ode_solvers/nelson.ode.options.CVODESNonstiff.md), [nelson.ode.options.IDAS](../ode_solvers/nelson.ode.options.IDAS.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
