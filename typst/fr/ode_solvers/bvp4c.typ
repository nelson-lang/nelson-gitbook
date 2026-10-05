#import "nelson_help.typ": *

= bvp4c <ode_solvers:bvp4c>

Resout des problemes aux limites par collocation d'ordre quatre.

== Syntaxe

- #raw("sol = bvp4c(odefun, bcfun, solinit)");
- #raw("sol = bvp4c(odefun, bcfun, solinit, options)");

== Description

#strong[bvp4c]; resout des problemes aux limites du premier ordre depuis un maillage et une estimation initiale produits par #strong[bvpinit];.

 

#table(
  columns: 2,
  [Element], [Details], 
  [Forme du probleme], [Systeme du premier ordre #strong[y' \= f(x,y)]; avec conditions aux limites #strong[bcfun(ya,yb)];.], 
  [Initialisation], [#strong[bvpinit]; fournit le maillage initial, l estimation de solution et les parametres inconnus optionnels.], 
  [Methode], [Collocation d ordre quatre.], 
  [Solution], [Structure #strong[sol]; avec #strong[x];, #strong[y];, #strong[yp];, #strong[parameters]; et #strong[stats];.], 
)
 Les options creees avec #strong[bvpset]; peuvent fournir #strong[FJacobian];, #strong[BCJacobian];, #strong[Vectorized]; et #strong[SingularTerm];. Quand les deux callbacks de jacobien sont fournis, l'iteration de Newton les utilise a la place des differences finies. Les stats de solution incluent #strong[niterations];, #strong[nmeshpoints];, #strong[residualNorm];, #strong[residualRms];, #strong[nrefinements];, #strong[maxDefect];, #strong[rmsDefect]; et, quand disponible, #strong[nfevals];.


== Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== Voir aussi

#nlink(<ode_solvers:bvp5c>)[bvp5c];, #nlink(<ode_solvers:bvpinit>)[bvpinit];, #nlink(<ode_solvers:bvpset>)[bvpset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
