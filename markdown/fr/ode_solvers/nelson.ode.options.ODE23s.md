# nelson.ode.options.ODE23s

Objet d'options pour le solveur ode23s.

## 📝 Syntaxe

- options = nelson.ode.options.ODE23s()
- options = nelson.ode.options.ODE23s(nom, valeur)

## 📄 Description

<b>nelson.ode.options.ODE23s</b> cree une classe d'options compatible pour la valeur de solveur <b>'ode23s'</b> utilisee par le workflow objet <b>ode</b>.

| Groupe d'options  | Noms                                      | Role                                                            |
| ----------------- | ----------------------------------------- | --------------------------------------------------------------- |
| Pas               | **InitialStep**, **MaxStep**, **MinStep** | Borne la selection adaptative du pas.                           |
| Controle d'erreur | **NormControl**                           | Bascule entre un controle d'erreur par composante et par norme. |
| Evaluation        | **Vectorization**                         | Declare que la fonction EDO accepte des matrices d'etats.       |
| Sortie            | **OutputFcn**, **OutputSelection**        | Choisit les callbacks de sortie et les composantes retournees.  |

La valeur de solveur <b>'ode23s'</b> utilise une methode de Rosenbrock modifiee d'ordre 2, efficace pour les problemes raides avec des tolerances grossieres.

Les proprietes prises en charge sont <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b> et <b>Vectorization</b>. <b>InitialStep</b>, <b>MaxStep</b> et <b>MinStep</b> sont des scalaires positifs bornant le pas adaptatif ; leur valeur par defaut est vide, ce qui laisse le solveur les choisir automatiquement. <b>NormControl</b> accepte <b>'on'</b> ou <b>'off'</b> (par defaut <b>'off'</b>) et active un controle d'erreur base sur la norme de la solution au lieu d'un controle par composante. <b>Vectorization</b> accepte <b>'on'</b> ou <b>'off'</b> (par defaut <b>'off'</b>) et declare que la fonction EDO peut evaluer plusieurs colonnes d'etats a la fois. <b>OutputFcn</b> est un handle de fonction appele sur chaque point de sortie (par defaut vide). <b>OutputSelection</b> est un vecteur d'indices selectionnant les composantes de la solution transmises a la fonction de sortie (par defaut vide, toutes les composantes). La valeur <b>Refine</b> par defaut pour ce solveur est 1.

## 💡 Exemple

Creer un probleme raide resolu avec les options ode23s.

```matlab
options = nelson.ode.options.ODE23s('MaxStep', 0.05);
problem = ode('ODEFcn', @(t,y) -50 * y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```

## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [ode23s](../ode_solvers/ode23s.md), [nelson.ode.options.ODE15s](../ode_solvers/nelson.ode.options.ODE15s.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
