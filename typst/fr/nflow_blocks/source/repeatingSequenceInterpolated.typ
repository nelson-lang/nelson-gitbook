#import "../nelson_help.typ": *

= repeatingSequenceInterpolated <nflow_blocks:source.repeatingSequenceInterpolated>


#block-icon(image("repeatingSequenceInterpolated.svg"))

Source periodique lineaire par morceaux interpolant une table (TimeValues, OutValues).

== Syntaxe

- #raw("Type de bloc : repeatingSequenceInterpolated");

== Argument d'entrée

/ ports d entree: Aucun port d entree (ce bloc n en a aucun).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Source periodique lineaire par morceaux interpolant une table (TimeValues, OutValues).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Source], 
  [Type], [#raw("repeatingSequenceInterpolated");], 
  [Libelle], [Repeating Sequence Interpolated], 
)
  #strong[Description];

 Une source periodique lineaire par morceaux sans entree. La table #raw("TimeValues");\/#raw("OutValues"); definit une periode (periode \= dernier TimeValues) ; la sortie interpole lineairement la table a t ramene dans \[0, periode) et reboucle. Sans etat (fonction pure du temps).

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
  [#raw("TimeValues");], [\[0 1 2\]], 
  [#raw("OutValues");], [\[0 2 0\]], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [repeatingSequenceInterpolated], 
  [Famille], [Source], 
  [Taille rendue], [80 x 80], 
  [Phases], [OUTPUT], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : tm \= mod(t, periode) ; out \= interpolation lineaire de OutValues sur TimeValues en tm. #strong[Equation ou regle];

 #latex("y(t) = \\text{interp}\\big(\\text{TimeValues}, \\text{OutValues}, t \\bmod T\\big)"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/repeatingSequenceInterpolated.cpp", title: "Runtime")


== Exemple

Une onde triangulaire de periode 1 s de \[0 0.5 1\] -\> \[0 1 0\].

``````matlab
d.blocks={ struct('id','r','type','repeatingSequenceInterpolated','inputs',0,'outputs',1,'params',struct('TimeValues',[0 0.5 1],'OutValues',[0 1 0])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:source.repeatingSequenceStair>)[repeatingSequenceStair];, #nlink(<nflow_blocks:source.signalGenerator>)[signalGenerator];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
