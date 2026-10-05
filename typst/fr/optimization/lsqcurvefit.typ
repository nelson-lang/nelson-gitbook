#import "nelson_help.typ": *

= lsqcurvefit <optimization:lsqcurvefit>

Ajustement de courbe par moindres carres.

== Syntaxe

- #raw("x = lsqcurvefit(fun, x0, xdata, ydata)");
- #raw("x = lsqcurvefit(fun, x0, xdata, ydata, lb, ub, options)");

== Argument d'entrée

/ fun: Fonction modele.
/ x0: Point initial.
/ xdata: Donnees d'entree du modele.
/ ydata: Donnees observees.

== Argument de sortie

/ x: Parametres ajustes.

== Description

#strong[lsqcurvefit]; minimise #strong[fun(x, xdata) - ydata]; avec #strong[lsqnonlin];.


== Exemple

``````matlab
x = lsqcurvefit(@(p,t) p(1) * exp(p(2) * t), [1; 0], (0:3).', exp((0:3).'))
``````


== Voir aussi

#nlink(<optimization:lsqnonlin>)[lsqnonlin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
