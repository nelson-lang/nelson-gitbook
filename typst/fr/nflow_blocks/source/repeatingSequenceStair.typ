#import "../nelson_help.typ": *

= repeatingSequenceStair <nflow_blocks:source.repeatingSequenceStair>


#block-icon(image("repeatingSequenceStair.svg"))

Escalier periodique : une entree de OutValues par echantillon, en boucle.

== Syntaxe

- #raw("Type de bloc : repeatingSequenceStair");

== Argument d'entrée

/ ports d entree: Aucun port d entree (ce bloc n en a aucun).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Escalier periodique : une entree de OutValues par echantillon, en boucle.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Source], 
  [Type], [#raw("repeatingSequenceStair");], 
  [Libelle], [Repeating Sequence Stair], 
)
  #strong[Description];

 Une source en escalier periodique sans entree. Emet une valeur du vecteur #raw("OutValues"); par echantillon, chacune maintenue un pas, et reboucle depuis le debut une fois la fin atteinte. Un vecteur vide sort 0 ; une seule valeur agit comme une constante.

 #strong[Ports];

 Ce bloc n'a aucun port d'entree.

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
  [#raw("OutValues");], [\[0 1 2 3 2 1\]], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [repeatingSequenceStair], 
  [Famille], [Source], 
  [Taille rendue], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Etat interne ou historique], [oui], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : out \= OutValues\[index\]. UPDATE : index \= (index + 1) mod N. #strong[Equation ou regle];

 #latex("y_k = \\text{OutValues}[k \\bmod N]"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/repeatingSequenceStair.cpp", title: "Runtime")


== Exemple

Repeter la sequence 10, 20, 30.

``````matlab
d.blocks={ struct('id','r','type','repeatingSequenceStair','inputs',0,'outputs',1,'params',struct('OutValues',[10 20 30])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:source.repeatingSequenceInterpolated>)[repeatingSequenceInterpolated];, #nlink(<nflow_blocks:source.counterLimited>)[counterLimited];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
