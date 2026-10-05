#import "../nelson_help.typ": *

= signalGenerator <nflow_blocks:source.signalGenerator>


#block-icon(image("signalGenerator.svg"))

Source periodique configurable : sinus, carre ou dent de scie (Amplitude, Frequency).

== Syntaxe

- #raw("Type de bloc : signalGenerator");

== Argument d'entrée

/ ports d entree: Aucun port d entree (ce bloc n en a aucun).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Source periodique configurable : sinus, carre ou dent de scie (Amplitude, Frequency).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Source], 
  [Type], [#raw("signalGenerator");], 
  [Libelle], [Signal Generator], 
)
  #strong[Description];

 Une source periodique configurable sans entree. #raw("Waveform"); vaut "sine", "square" ou "sawtooth", mise a l'echelle par #raw("Amplitude");, avec #raw("Frequency"); en Hz. sine \= A\*sin(2\*pi\*f\*t) ; square \= A\*signe(sin(2\*pi\*f\*t)) ; sawtooth monte lineairement de -A a +A sur chaque periode. Sans etat (fonction pure du temps).

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
  [#raw("Waveform");], [sine], 
  [#raw("Amplitude");], [1], 
  [#raw("Frequency");], [1], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [signalGenerator], 
  [Famille], [Source], 
  [Taille rendue], [80 x 80], 
  [Phases], [OUTPUT], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : evalue la forme d'onde choisie au temps courant. #strong[Equation ou regle];

 #latex("y(t) = A\\,\\sin(2\\pi f t) \\quad(\\text{sine})"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/signalGenerator.cpp", title: "Runtime")


== Exemple

Generer un sinus 1 Hz d'amplitude 2.

``````matlab
d.blocks={ struct('id','g','type','signalGenerator','inputs',0,'outputs',1,'params',struct('Waveform','sine','Amplitude',2,'Frequency',1)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:source.sine>)[sine];, #nlink(<nflow_blocks:source.repeatingSequenceInterpolated>)[repeatingSequenceInterpolated];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
