#import "nelson_help.typ": *

= trim <nflow_engine:trim>

Trouver un point de fonctionnement d'équilibre d'un modèle nflow.

== Syntaxe

- #raw("[x, u, y, dx] = trim(model)");
- #raw("[x, u, y, dx] = trim(model, x0, u0)");

== Argument d'entrée

/ model: un système chargé (nom ou handle) ou le chemin d'un fichier .nflow.
/ x0: état continu initial (longueur nx) pour la recherche (optionnel).
/ u0: entrées fixées (longueur nu), blocs Label Source de port externe (optionnel).

== Argument de sortie

/ x: l'état continu d'équilibre.
/ u: les entrées à la solution (égales à u0).
/ y: les sorties à la solution.
/ dx: la dérivée d'état à la solution ; sa norme mesure la proximité de l'équilibre.

== Description

#strong[trim]; trouve un point de fonctionnement d'équilibre de #strong[model]; : un état continu #strong[x]; tel que #strong[xdot \= f(x, u0) \= 0]; pour les entrées fixées #strong[u0];.

 L'équation est résolue par une itération de Newton sur la jacobienne d'état #strong[A \= d(xdot)\/dx]; calculée par #strong[linmod];, à partir de #strong[x0];. Pour un modèle linéaire l'équilibre est #strong[x \= -A\\(B\*u0)];, atteint en une étape.


== Fonction(s) utilisée(s)

linmod

== Exemple

Équilibre d'un modèle d'état du premier ordre

``````matlab
d.blocks = { ...
  struct('id','u','type','labelSource','inputs',0,'outputs',1,'params',struct('label','u','isExternalPort',true)), ...
  struct('id','ss','type','stateSpace','inputs',1,'outputs',1,'params',struct('A',-2,'B',1,'C',1,'D',0)), ...
  struct('id','y','type','labelSink','inputs',1,'outputs',0,'params',struct('label','y')), ...
  struct('id','sc','type','scope','inputs',1,'outputs',0,'params',struct()) };
d.connections = { ...
  struct('from','u','to','ss','fromIndex',0,'toIndex',0), ...
  struct('from','ss','to','y','fromIndex',0,'toIndex',0), ...
  struct('from','ss','to','sc','fromIndex',0,'toIndex',0) };
f = [tempdir(), 'trim_demo.nflow'];
fid = fopen(f,'wt'); fwrite(fid, jsonencode(d)); fclose(fid);
[x, u, y, dx] = trim(f, 0, 2)  % x = 1 (xdot = 0)
``````


== Voir aussi

#nlink(<nflow_engine:linmod>)[linmod];, #nlink(<nflow_engine:sim>)[sim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
