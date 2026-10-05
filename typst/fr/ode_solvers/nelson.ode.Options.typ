#import "nelson_help.typ": *

= nelson.ode.Options <ode_solvers:nelson.ode.Options>

Classe de base des classes d'options de solveur.

== Syntaxe

- #raw("options = nelson.ode.Options.makeSolverOptions(solveur)");
- #raw("options = nelson.ode.Options.makeSolverOptions(solveur, nom, valeur)");
- #raw("tf = isDefault(options)");
- #raw("s = struct(options)");

== Description

#strong[nelson.ode.Options]; est la classe de base de toutes les classes #strong[nelson.ode.options.\*]; utilisees par la propriete #strong[SolverOptions]; du workflow objet #strong[ode];. Elle n'est pas destinee a etre instanciee directement ; utilisez une de ses sous-classes ou la methode statique de fabrique #strong[makeSolverOptions];.

 

#table(
  columns: 3,
  [Membre], [Nature], [Role], 
  [#strong[makeSolverOptions];], [methode statique], [Cree la sous-classe d'options correspondant a un nom de solveur.], 
  [#strong[isDefault];], [methode], [Retourne vrai lorsque chaque option publique garde sa valeur par defaut.], 
  [#strong[struct];], [methode], [Convertit l'objet d'options en une structure d'options.], 
  [#strong[Refine];], [propriete cachee], [Facteur de raffinement de sortie, un scalaire entier positif (par defaut vide, c'est-a-dire la valeur par defaut du solveur).], 
  [#strong[ID];], [propriete cachee], [Identifiant du solveur stocke dans la structure d'options (par defaut #strong['ode45'];).], 
  [#strong[DefaultRefine];], [propriete cachee], [Facteur de raffinement utilise lorsque #strong[Refine]; est vide (par defaut 1).], 
)
 #strong[makeSolverOptions(solveur, nom, valeur, ...)]; retourne une instance de la sous-classe d'options correspondant a #strong[solveur]; et transmet les paires nom-valeur a son constructeur. Les noms de solveur acceptes sont #strong['ode45'];, #strong['ode23'];, #strong['ode78'];, #strong['ode89'];, #strong['ode113'];, #strong['ode15s'];, #strong['ode23s'];, #strong['ode23t'];, #strong['ode23tb'];, #strong['ode15i'];, #strong['autoswitch'];, #strong['cvodesnonstiff'];, #strong['cvodesstiff']; et #strong['idas'];. Tout autre nom declenche une erreur. #strong['autoswitch']; et #strong['cvodesnonstiff']; correspondent tous deux a #strong[nelson.ode.options.CVODESNonstiff];.

 #strong[isDefault(options)]; retourne vrai lorsque toutes les proprietes publiques de l'objet d'options conservent leurs valeurs par defaut.

 #strong[struct(options)]; retourne une structure d'options avec les memes noms de champs que #strong[odeset];, remplie a partir des proprietes publiques de l'objet d'options, plus le champ #strong[ID]; et la valeur #strong[Refine]; resolue.


== Exemple

Creer des options de solveur avec la methode de fabrique et les inspecter.

``````matlab
options = nelson.ode.Options.makeSolverOptions('ode15s', 'MaxStep', 0.5);
class(options)
isDefault(options)
s = struct(options);
s.ID
s.MaxStep
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:nelson.ode.options.ODE45>)[nelson.ode.options.ODE45];, #nlink(<ode_solvers:nelson.ode.options.ODE15s>)[nelson.ode.options.ODE15s];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
