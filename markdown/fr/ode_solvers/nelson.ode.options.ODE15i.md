# nelson.ode.options.ODE15i

Objet d'options pour le solveur ode15i.

## 📝 Syntaxe

- options = nelson.ode.options.ODE15i()
- options = nelson.ode.options.ODE15i(nom, valeur)

## 📄 Description

<b>nelson.ode.options.ODE15i</b> cree une classe d'options compatible pour la valeur de solveur <b>'ode15i'</b> utilisee par le workflow objet <b>ode</b>.

| Groupe d'options     | Noms                                      | Role                                                                              |
| -------------------- | ----------------------------------------- | --------------------------------------------------------------------------------- |
| Pas                  | **InitialStep**, **MaxStep**, **MinStep** | Borne la selection adaptative du pas.                                             |
| Controle d'erreur    | **NormControl**                           | Bascule entre un controle d'erreur par composante et par norme.                   |
| Methode              | **MaxOrder**                              | Borne l'ordre des formules de differentiation retrograde.                         |
| Conditions initiales | **ComputeConsistentInitialConditions**    | Demande des **y0** et **yp0** coherents avant l'integration.                      |
| Evaluation           | **Vectorization**                         | Declare la vectorisation de la fonction residuelle par rapport a **y** et **yp**. |
| Sortie               | **OutputFcn**, **OutputSelection**        | Choisit les callbacks de sortie et les composantes retournees.                    |

La valeur de solveur <b>'ode15i'</b> utilise une methode implicite d'ordre variable pour les problemes residuels totalement implicites <b>F(t,y,yp)=0</b>, y compris les equations algebro-differentielles raides.

Les proprietes prises en charge sont <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>MaxOrder</b> et <b>ComputeConsistentInitialConditions</b>. <b>InitialStep</b>, <b>MaxStep</b> et <b>MinStep</b> sont des scalaires positifs bornant le pas adaptatif ; leur valeur par defaut est vide, ce qui laisse le solveur les choisir automatiquement. <b>NormControl</b> accepte <b>'on'</b> ou <b>'off'</b> (par defaut <b>'off'</b>) et active un controle d'erreur base sur la norme de la solution au lieu d'un controle par composante. <b>Vectorization</b> est un tableau de cellules a deux elements tel que {<b>'off'</b>, <b>'off'</b>} (la valeur par defaut) declarant la vectorisation de la fonction residuelle par rapport a <b>y</b> et <b>yp</b> ; une seule valeur <b>'on'</b> ou <b>'off'</b> s'applique aux deux arguments. <b>MaxOrder</b> est un entier entre 1 et 5 (par defaut 5) bornant l'ordre des formules. <b>ComputeConsistentInitialConditions</b> est un scalaire logique (par defaut <b>true</b>) ; quand il est active, le solveur ajuste la valeur initiale et la pente initiale pour que le residu soit coherent a l'instant initial. <b>OutputFcn</b> est un handle de fonction appele sur chaque point de sortie (par defaut vide). <b>OutputSelection</b> est un vecteur d'indices selectionnant les composantes de la solution transmises a la fonction de sortie (par defaut vide, toutes les composantes). La valeur <b>Refine</b> par defaut pour ce solveur est 1.

## 💡 Exemple

Creer un probleme residuel totalement implicite resolu avec les options ode15i.

```matlab
options = nelson.ode.options.ODE15i('MaxOrder', 4);
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```

## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [ode15i](../ode_solvers/ode15i.md), [nelson.ode.options.ODE15s](../ode_solvers/nelson.ode.options.ODE15s.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
