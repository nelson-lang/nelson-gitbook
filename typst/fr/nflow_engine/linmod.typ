#import "nelson_help.typ": *

= linmod <nflow_engine:linmod>

Linéarisation numérique d'un modèle nflow.

== Syntaxe

- #raw("[A, B, C, D] = linmod(model)");
- #raw("[A, B, C, D] = linmod(model, x0, u0)");
- #raw("A = linmod(model)");

== Argument d'entrée

/ model: un système chargé (nom ou handle) ou le chemin d'un fichier .nflow.
/ x0: état du point de fonctionnement (longueur nx), optionnel. Absent : état après INIT.
/ u0: entrées du point de fonctionnement (longueur nu), optionnel. Absent : zéro.

== Argument de sortie

/ A: la jacobienne d'état nx-par-nx d(xdot)\/dx au point de fonctionnement.
/ B: la jacobienne d'entrée nx-par-nu d(xdot)\/du au point de fonctionnement.
/ C: la jacobienne de sortie ny-par-nx dy\/dx au point de fonctionnement.
/ D: la jacobienne de transmission directe ny-par-nu dy\/du au point de fonctionnement.

== Description

#strong[linmod]; renvoie la linéarisation d'état continue de #strong[model]; autour de son point de fonctionnement après INIT.

 Les jacobiennes sont obtenues par différences finies centrées du même second membre global que le solveur #strong[ode4]; \/ à pas variable assemble : l'état continu #strong[x]; rassemble l'état de chaque bloc continu, les entrées #strong[u]; sont les blocs Label Source de port externe (#strong[isExternalPort];), #strong[xdot \= f(x, u)]; est la dérivée du graphe et #strong[y]; les sorties Label Sink du modèle. Un modèle linéaire se linéarise en lui-même.

 Une entrée qui doit participer à #strong[B]; \/ #strong[D]; doit être un Label Source de port externe ; un simple Label Source de routage goto\/from interne n'est pas une entrée du modèle.

 Les modèles plats (niveau supérieur) comme les états continus imbriqués dans des sous-systèmes sont supportés : le couplage d'un état imbriqué aux entrées externes (#strong[B];) et aux sorties à travers la frontière du sous-système (#strong[C];) est capturé.


== Exemple

Linéariser un modèle d'état du premier ordre

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
f = [tempdir(), 'linmod_demo.nflow'];
fid = fopen(f,'wt'); fwrite(fid, jsonencode(d)); fclose(fid);
[A, B, C, D] = linmod(f)  % A = -2, B = 1, C = 1, D = 0
``````


== Voir aussi

#nlink(<nflow_engine:trim>)[trim];, #nlink(<nflow_engine:sim>)[sim];, #nlink(<nflow_engine:load_system>)[load\_system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
