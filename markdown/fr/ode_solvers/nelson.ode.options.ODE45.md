# nelson.ode.options.ODE45

Objet d'options pour le solveur ode45.

## 📝 Syntaxe

- options = nelson.ode.options.ODE45()
- options = nelson.ode.options.ODE45(nom, valeur)

## 📄 Description


<b>nelson.ode.options.ODE45</b> cree une classe d'options compatible pour la valeur de solveur <b>'ode45'</b> utilisee par le workflow objet <b>ode</b>. 

| Groupe d'options | Noms | Role | 
| --- | --- | --- | 
| Pas | **InitialStep**, **MaxStep**, **MinStep** | Borne la selection adaptative du pas. | 
| Controle d'erreur | **NormControl** | Bascule entre un controle d'erreur par composante et par norme. | 
| Sortie | **OutputFcn**, **OutputSelection** | Choisit les callbacks de sortie et les composantes retournees. | 

 

La valeur de solveur <b>'ode45'</b> utilise une paire Runge-Kutta explicite (4,5) et constitue le premier choix recommande pour les problemes non raides. C'est la valeur de solveur par defaut du workflow objet <b>ode</b>. 

Les proprietes prises en charge sont <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>NormControl</b>, <b>OutputFcn</b> et <b>OutputSelection</b>. <b>InitialStep</b>, <b>MaxStep</b> et <b>MinStep</b> sont des scalaires positifs bornant le pas adaptatif ; leur valeur par defaut est vide, ce qui laisse le solveur les choisir automatiquement. <b>NormControl</b> accepte <b>'on'</b> ou <b>'off'</b> (par defaut <b>'off'</b>) et active un controle d'erreur base sur la norme de la solution au lieu d'un controle par composante. <b>OutputFcn</b> est un handle de fonction appele sur chaque point de sortie (par defaut vide). <b>OutputSelection</b> est un vecteur d'indices selectionnant les composantes de la solution transmises a la fonction de sortie (par defaut vide, toutes les composantes). La valeur <b>Refine</b> par defaut pour ce solveur est 4.

## 💡 Exemple

Creer un probleme non raide resolu avec les options ode45.

```matlab
options = nelson.ode.options.ODE45('MaxStep', 0.1);
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
```


## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [ode45](../ode_solvers/ode45.md), [nelson.ode.options.ODE23](../ode_solvers/nelson.ode.options.ODE23.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
