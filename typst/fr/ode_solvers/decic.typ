#import "nelson_help.typ": *

= decic <ode_solvers:decic>

Calcule des conditions initiales coherentes pour les EDO implicites.

== Syntaxe

- #raw("[y0new, yp0new] = decic(odefun, t0, y0, fixed_y0, yp0, fixed_yp0)");
- #raw("[y0new, yp0new, resnrm] = decic(odefun, t0, y0, fixed_y0, yp0, fixed_yp0, options)");

== Description

#strong[decic]; ajuste les composantes libres de #strong[y0]; et #strong[yp0]; afin que le residu #strong[odefun(t0,y0,yp0)]; soit petit. Les composantes marquees par #strong[fixed\_y0]; et #strong[fixed\_yp0]; restent fixes.

 

#table(
  columns: 2,
  [Element], [Details], 
  [Forme du probleme], [Residuel totalement implicite #strong[F(t,y,yp) \= 0];.], 
  [Composantes fixes], [#strong[fixed\_y0]; et #strong[fixed\_yp0]; marquent les valeurs a conserver.], 
  [Sorties], [Conditions initiales coherentes #strong[y0mod]; et #strong[yp0mod];.], 
  [Utilise avec], [#strong[ode15i]; ou un objet #strong[ode]; de type totalement implicite.], 
)

== Exemple

``````matlab
f = @(t,y,yp) yp + y;
[y0, yp0] = decic(f, 0, 1, 1, 0, 0);
[t, y] = ode15i(f, [0 1], y0, yp0)
``````


== Voir aussi

#nlink(<ode_solvers:ode15i>)[ode15i];, #nlink(<ode_solvers:odeset>)[odeset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
