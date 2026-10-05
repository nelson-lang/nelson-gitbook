#import "../nelson_help.typ": *

= intervalTestDynamic <nflow_blocks:logic.intervalTestDynamic>


#block-icon(image("intervalTestDynamic.svg"))

Comme intervalTest mais les bornes proviennent des ports d entree (lo, u, up).

== Syntaxe

- #raw("Type de bloc : intervalTestDynamic");

== Argument d'entrée

/ ports d entree: 3 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Comme intervalTest mais les bornes proviennent des ports d entree (lo, u, up).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Logique \/ Operations sur les bits], 
  [Type], [#raw("intervalTestDynamic");], 
  [Libelle], [Interval Test Dynamic], 
)
  #strong[Description];

 Variante pilotee par signaux de #raw("intervalTest"); : au lieu de parametres, la borne basse, la valeur et la borne haute proviennent des ports d'entree 1, 2 et 3, de sorte que la fenetre d'acceptation peut bouger a l'execution. Sortie 1 quand #raw("lo <= u <= up");. #raw("IntervalClosedLeft");\/#raw("IntervalClosedRight"); controlent l'inclusion des bornes. Element par element sur la largeur de la valeur ; les bornes scalaires sont diffusees.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=20], 
  [Port\_2], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=40], 
  [Port\_3], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=60], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=100, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("IntervalClosedLeft");], [1], 
  [#raw("IntervalClosedRight");], [1], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [intervalTestDynamic], 
  [Famille], [Logique \/ Operations sur les bits], 
  [Taille rendue], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : lit port 0 \= borne basse, port 1 \= valeur, port 2 \= borne haute ; out \= 1 si la valeur est dans l'intervalle (eventuellement ouvert). #strong[Equation ou regle];

 #latex("y = \\begin{cases} 1 & \\text{lo} \\le u \\le \\text{up} \\\\ 0 & \\text{otherwise} \\end{cases}"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/intervalTestDynamic.cpp", title: "Runtime")


== Exemple

Fournir lo\=1, u\=rampe, up\=3 et enregistrer quand la rampe entre dans la fenetre.

``````matlab
d.blocks={ struct('id','lo','type','constant','inputs',0,'outputs',1,'params',struct('Value',1)), struct('id','u','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','up','type','constant','inputs',0,'outputs',1,'params',struct('Value',3)), struct('id','it','type','intervalTestDynamic','inputs',3,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','lo','to','it','fromIndex',0,'toIndex',0), struct('from','u','to','it','fromIndex',0,'toIndex',1), struct('from','up','to','it','fromIndex',0,'toIndex',2), struct('from','it','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:logic.intervalTest>)[intervalTest];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
