# nelson.ode.Options

Classe de base des classes d'options de solveur.

## 📝 Syntaxe

- options = nelson.ode.Options.makeSolverOptions(solveur)
- options = nelson.ode.Options.makeSolverOptions(solveur, nom, valeur)
- tf = isDefault(options)
- s = struct(options)

## 📄 Description


<b>nelson.ode.Options</b> est la classe de base de toutes les classes <b>nelson.ode.options.\*</b> utilisees par la propriete <b>SolverOptions</b> du workflow objet <b>ode</b>. Elle n'est pas destinee a etre instanciee directement ; utilisez une de ses sous-classes ou la methode statique de fabrique <b>makeSolverOptions</b>. 

| Membre | Nature | Role | 
| --- | --- | --- | 
| **makeSolverOptions** | methode statique | Cree la sous-classe d'options correspondant a un nom de solveur. | 
| **isDefault** | methode | Retourne vrai lorsque chaque option publique garde sa valeur par defaut. | 
| **struct** | methode | Convertit l'objet d'options en une structure d'options. | 
| **Refine** | propriete cachee | Facteur de raffinement de sortie, un scalaire entier positif (par defaut vide, c'est-a-dire la valeur par defaut du solveur). | 
| **ID** | propriete cachee | Identifiant du solveur stocke dans la structure d'options (par defaut **'ode45'**). | 
| **DefaultRefine** | propriete cachee | Facteur de raffinement utilise lorsque **Refine** est vide (par defaut 1). | 

 

<b>makeSolverOptions(solveur, nom, valeur, ...)</b> retourne une instance de la sous-classe d'options correspondant a <b>solveur</b> et transmet les paires nom-valeur a son constructeur. Les noms de solveur acceptes sont <b>'ode45'</b>, <b>'ode23'</b>, <b>'ode78'</b>, <b>'ode89'</b>, <b>'ode113'</b>, <b>'ode15s'</b>, <b>'ode23s'</b>, <b>'ode23t'</b>, <b>'ode23tb'</b>, <b>'ode15i'</b>, <b>'autoswitch'</b>, <b>'cvodesnonstiff'</b>, <b>'cvodesstiff'</b> et <b>'idas'</b>. Tout autre nom declenche une erreur. <b>'autoswitch'</b> et <b>'cvodesnonstiff'</b> correspondent tous deux a <b>nelson.ode.options.CVODESNonstiff</b>. 

<b>isDefault(options)</b> retourne vrai lorsque toutes les proprietes publiques de l'objet d'options conservent leurs valeurs par defaut. 

<b>struct(options)</b> retourne une structure d'options avec les memes noms de champs que <b>odeset</b>, remplie a partir des proprietes publiques de l'objet d'options, plus le champ <b>ID</b> et la valeur <b>Refine</b> resolue.

## 💡 Exemple

Creer des options de solveur avec la methode de fabrique et les inspecter.

```matlab
options = nelson.ode.Options.makeSolverOptions('ode15s', 'MaxStep', 0.5);
class(options)
isDefault(options)
s = struct(options);
s.ID
s.MaxStep
```


## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [nelson.ode.options.ODE45](../ode_solvers/nelson.ode.options.ODE45.md), [nelson.ode.options.ODE15s](../ode_solvers/nelson.ode.options.ODE15s.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
