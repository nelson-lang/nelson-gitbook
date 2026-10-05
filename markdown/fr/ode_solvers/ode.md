# ode

Interface objet pour problemes EDO.

## 📝 Syntaxe

- problem = ode(nom, valeur)
- result = solve(problem, tfinal)
- result = solve(problem, t0, tfinal)
- [f, data] = solutionFcn(problem, tfinal)

## 📄 Description


<b>ode</b> stocke un probleme differentiel et les reglages utilises par <b>solve</b> et <b>solutionFcn</b>. 

| Appel | Role | 
| --- | --- | 
| **solve(problem, tfinal)** | Integre de **InitialTime** a **tfinal**. | 
| **solve(problem, t0, tfinal)** | Integre depuis **t0**; ce temps de depart remplace **InitialTime** pour cet appel. | 
| **solutionFcn(problem, tfinal)** | Retourne une fonction d'interpolation et l'objet resultat correspondant. | 

 

Principales proprietes de l'objet: 

| Propriete | Valeurs acceptees | Effet | 
| --- | --- | --- | 
| **EquationType** | **'standard'**, **'fullyimplicit'** | **'standard'** utilise **ODEFcn(t,y)**. **'fullyimplicit'** utilise des residus **ODEFcn(t,y,yp)**. | 
| **Solver** | **'auto'**, **'autoswitch'**, **'nonstiff'**, **'stiff'**, noms de solveurs | Selectionne la methode d'integration. **'auto'** choisit selon le type de probleme. **'autoswitch'** peut redemarrer avec une methode raide quand une raideur est detectee. | 
| **SolverOptions** | Objet d'options correspondant au solveur | Stocke les tolerances, la fonction de sortie, les bornes de pas et les reglages propres au solveur. | 
| **Parameters** | Vecteur numerique ou tableau de cellules | Passe apres les arguments standards aux callbacks d'equation, d'evenement, de sortie et de reponse d'evenement. Un tableau de cellules est developpe en un argument par cellule. | 
| **SeparateComplexParts** | **'off'**, **'on'** | Avec **'on'**, les etats complexes sont integres via parties reelles et imaginaires separees, tandis que les resultats retournent a la forme complexe d'origine. | 

 

Familles de solveurs: 

| Famille | Valeurs de solveur | Notes | 
| --- | --- | --- | 
| Non raide | **'ode23'**, **'ode45'**, **'ode78'**, **'ode89'**, **'ode113'** | Pour les problemes explicites lisses. | 
| Raide ou matrice de masse | **'ode15s'**, **'ode23s'**, **'ode23t'**, **'ode23tb'** | Pour les modes rapides amortis, les matrices de masse ou les jacobiens utiles. | 
| Totalement implicite | **'ode15i'**, **'idas'** | **'idas'** est disponible seulement quand Nelson est construit avec le backend optionnel SUNDIALS. | 
| Backend optionnel | **'cvodesnonstiff'**, **'cvodesstiff'**, **'idas'** | **NELSON\_SUNDIALS\_RUNTIME** peut valoir **OFF** pour forcer le fallback interne ou **ON** pour autoriser le backend quand il est compile. | 



## 💡 Exemples

Utiliser InitialTime avec un temps final.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialTime', 2, 'InitialValue', 1);
result = solve(problem, 3)
```
Construire une fonction d'interpolation.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
f = solutionFcn(problem, 1);
yhalf = f(0.5)
```
Resoudre un probleme residuel totalement implicite.

```matlab
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1);
result = solve(problem, 1)
```
Passer des parametres supplementaires a une fonction de probleme.

```matlab
problem = ode('ODEFcn', @(t,y,a) a .* y, ...
  'InitialValue', 1, ...
  'Parameters', 2);
result = solve(problem, 0, 1)
```
Resoudre un probleme en separant les parties complexes en interne.

```matlab
problem = ode('ODEFcn', @(t,y) y .* t + 2 * 1i, ...
  'InitialValue', 1 + 1i, ...
  'SeparateComplexParts', 'on');
result = solve(problem, 0, 2)
```


## 🔗 Voir aussi

[nelson.ode.options.CVODESNonstiff](../ode_solvers/nelson.ode.options.CVODESNonstiff.md), [nelson.ode.options.CVODESStiff](../ode_solvers/nelson.ode.options.CVODESStiff.md), [nelson.ode.options.IDAS](../ode_solvers/nelson.ode.options.IDAS.md), [odeJacobian](../ode_solvers/odeJacobian.md), [odeMassMatrix](../ode_solvers/odeMassMatrix.md), [odeEvent](../ode_solvers/odeEvent.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
