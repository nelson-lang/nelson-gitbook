#import "../nelson_help.typ": *

= pulse <nflow_blocks:source.pulse>


#block-icon(image("pulse.svg"))

Générateur d'impulsions : train d'impulsions périodique (Amplitude, Period, Width, StartTime, Offset).

== Syntaxe

- #raw("Type de bloc : pulse");

== Argument d'entrée

/ ports d'entrée: Aucun port d'entrée (ce bloc n'en a pas).

== Argument de sortie

/ ports de sortie: 1 port de sortie déclaré.

== Description

Générateur d'impulsions : un train d'impulsions périodique.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliothèque], [Source], 
  [Type], [#raw("pulse");], 
  [Libellé], [Pulse Generator], 
)
  #strong[Description];

 Un train d'impulsions périodique sans entrée. À partir de #raw("StartTime");, la sortie vaut #raw("Offset + Amplitude"); pendant les premiers #raw("Width"); pour cent de chaque #raw("Period");, et #raw("Offset"); sinon. Sans état (fonction pure du temps).

 #strong[Ports];

 Ce bloc n'a pas de port d'entrée.

 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Rôle], [Côté], [Position], ),
  [Port\_1], [Signal numérique produit par le bloc.], [droite], [x\=80, y\=40], 
)
 #strong[Paramètres];

 

#table(
  columns: 2,
  table.header([Paramètre], [Valeur par défaut], ),
  [#raw("Amplitude");], [1], 
  [#raw("Period");], [1], 
  [#raw("Width");], [50], 
  [#raw("StartTime");], [0], 
  [#raw("Offset");], [0], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [pulse], 
  [Famille], [Source], 
  [Taille de rendu], [80 x 80], 
  [Phases], [OUTPUT], 
  [État interne ou historique], [non], 
  [Type de données du signal], [valeurs numériques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : évalue le train d'impulsions à l'instant courant. #strong[Équation ou règle];

 #latex("y(t) = \\text{Offset} + \\begin{cases} A & \\bmod(t-t_0, T) < \\frac{W}{100} T \\\\ 0 & \\text{sinon} \\end{cases}"); #strong[Capacités étendues];

 Génération de code : supportée pour C et Rust.

 #strong[Sources d'implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/periodic.cpp", title: "Runtime")


== Exemple

Générer un train d'impulsions (amplitude 1, période 1, rapport cyclique 50%).

``````matlab
d.blocks={ struct('id','p','type','pulse','inputs',0,'outputs',1,'params',struct('Amplitude',1,'Period',1,'Width',50,'StartTime',0,'Offset',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','p','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.05; d.duration=2.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:source.signalGenerator>)[signalGenerator];, #nlink(<nflow_blocks:source.step>)[step];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
