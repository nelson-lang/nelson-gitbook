#import "../nelson_help.typ": *

= wrapToZero <nflow_blocks:math.wrapToZero>


#block-icon(image("wrapToZero.svg"))

Sort 0 quand l entree atteint Threshold, sinon la transmet telle quelle.

== Syntaxe

- #raw("Type de bloc : wrapToZero");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Sort 0 quand l entree atteint Threshold, sinon la transmet telle quelle.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Operations mathematiques], 
  [Type], [#raw("wrapToZero");], 
  [Libelle], [Wrap To Zero], 
)
  #strong[Description];

 Sort 0 quand l'entree atteint ou depasse #raw("Threshold");, sinon transmet l'entree inchangee (Wrap To Zero). Retour algebrique pur, element par element.

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
  [#raw("Threshold");], [255], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [wrapToZero], 
  [Famille], [Operations mathematiques], 
  [Taille rendue], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : out \= (u \>\= Threshold) ? 0 : u. #strong[Equation ou regle];

 #latex("y = \\begin{cases} 0 & u \\ge \\text{Threshold} \\\\ u & \\text{otherwise} \\end{cases}"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/wrapToZero.cpp", title: "Runtime")


== Exemple

Avec Threshold \= 5 : l'entree 7 est ramenee a 0, l'entree 3 passe.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',7)), struct('id','g','type','wrapToZero','inputs',1,'outputs',1,'params',struct('Threshold',5)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','g','fromIndex',0,'toIndex',0), struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:nonlinear.saturation>)[saturation];, #nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
