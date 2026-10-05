#import "../nelson_help.typ": *

= hitCrossing <nflow_blocks:nonlinear.hitCrossing>


#block-icon(image("hitCrossing.svg"))

Sort 1 au pas ou l entree franchit HitCrossingOffset.

== Syntaxe

- #raw("Type de bloc : hitCrossing");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Sort 1 au pas ou l entree franchit HitCrossingOffset.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Non lineaire], 
  [Type], [#raw("hitCrossing");], 
  [Libelle], [Hit Crossing], 
)
  #strong[Description];

 Detecte quand l'entree scalaire atteint #raw("HitCrossingOffset"); dans la direction configuree et sort 1 au pas ou le franchissement se produit, sinon 0. #raw("HitCrossingDirection"); vaut "rising", "falling" ou "either". Avec etat : l'entree precedente (relative a l'offset) est memorisee pour detecter un chevauchement, et le premier pas est amorce pour ne jamais declencher a tort.

 Comme l'entree est lue en phase OUTPUT, pilotez ce bloc depuis une source plutot qu'a travers un bloc ALGEBRAIC transparent (dont la sortie serait en retard d'un pas).

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=40], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=80, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("HitCrossingOffset");], [0], 
  [#raw("HitCrossingDirection");], [either], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [hitCrossing], 
  [Famille], [Non lineaire], 
  [Taille rendue], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Etat interne ou historique], [oui], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : out \= franchissement(prev - offset, u - offset, direction) ? 1 : 0. UPDATE : prev \= u. #strong[Equation ou regle];

 #latex("y_k = [\\,(u_{k-1}-\\text{off})\\,\\text{and}\\,(u_k-\\text{off})\\ \\text{straddle } 0\\,]"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/hitCrossing.cpp", title: "Runtime")


== Exemple

Detecter un franchissement montant de 0.5 par une source echelon.

``````matlab
d.blocks={ struct('id','s','type','step','inputs',0,'outputs',1,'params',struct('Time',0.45)), struct('id','hc','type','hitCrossing','inputs',1,'outputs',1,'params',struct('HitCrossingOffset',0.5,'HitCrossingDirection','rising')), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','hc','fromIndex',0,'toIndex',0), struct('from','hc','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:discrete.detectChange>)[detectChange];, #nlink(<nflow_blocks:logic.intervalTest>)[intervalTest];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
