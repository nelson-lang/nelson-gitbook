# nelson.ode.options.ODE15s

Objet d'options pour le solveur ode15s.

## 📝 Syntaxe

- options = nelson.ode.options.ODE15s()
- options = nelson.ode.options.ODE15s(nom, valeur)

## 📄 Description


<b>nelson.ode.options.ODE15s</b> cree une classe d'options compatible pour la valeur de solveur <b>'ode15s'</b> utilisee par le workflow objet <b>ode</b>. 

| Groupe d'options | Noms | Role | 
| --- | --- | --- | 
| Pas | **InitialStep**, **MaxStep**, **MinStep** | Borne la selection adaptative du pas. | 
| Controle d'erreur | **NormControl** | Bascule entre un controle d'erreur par composante et par norme. | 
| Methode | **BDF**, **MaxOrder** | Selectionne les formules de differentiation retrograde et borne l'ordre de la methode. | 
| Evaluation | **Vectorization** | Declare que la fonction EDO accepte des matrices d'etats. | 
| Sortie | **OutputFcn**, **OutputSelection** | Choisit les callbacks de sortie et les composantes retournees. | 

 

La valeur de solveur <b>'ode15s'</b> utilise une methode multipas implicite pour les problemes raides et les equations algebro-differentielles avec matrice de masse. 

Les proprietes prises en charge sont <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>NormControl</b>, <b>OutputFcn</b>, <b>OutputSelection</b>, <b>Vectorization</b>, <b>BDF</b> et <b>MaxOrder</b>. <b>InitialStep</b>, <b>MaxStep</b> et <b>MinStep</b> sont des scalaires positifs bornant le pas adaptatif ; leur valeur par defaut est vide, ce qui laisse le solveur les choisir automatiquement. <b>NormControl</b> accepte <b>'on'</b> ou <b>'off'</b> (par defaut <b>'off'</b>) et active un controle d'erreur base sur la norme de la solution au lieu d'un controle par composante. <b>Vectorization</b> accepte <b>'on'</b> ou <b>'off'</b> (par defaut <b>'off'</b>) et declare que la fonction EDO peut evaluer plusieurs colonnes d'etats a la fois. <b>BDF</b> accepte <b>'on'</b> ou <b>'off'</b> (par defaut <b>'off'</b>) et selectionne les formules de differentiation retrograde au lieu des formules de differentiation numerique par defaut. <b>MaxOrder</b> est un entier entre 1 et 5 (par defaut 5) bornant l'ordre des formules. <b>OutputFcn</b> est un handle de fonction appele sur chaque point de sortie (par defaut vide). <b>OutputSelection</b> est un vecteur d'indices selectionnant les composantes de la solution transmises a la fonction de sortie (par defaut vide, toutes les composantes). La valeur <b>Refine</b> par defaut pour ce solveur est 1.

## 💡 Exemple

Creer un probleme raide resolu avec les options ode15s.

```matlab
options = nelson.ode.options.ODE15s('BDF', 'on', 'MaxOrder', 4);
problem = ode('ODEFcn', @(t,y) -1000 * (y - cos(t)), 'InitialValue', 0, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```


## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [ode15s](../ode_solvers/ode15s.md), [nelson.ode.options.ODE23s](../ode_solvers/nelson.ode.options.ODE23s.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
