#import "../nelson_help.typ": *

= hysteresis <nflow_blocks:nonlinear.hysteresis>


#block-icon(image("hysteresis.svg"))

Relais : bascule à deux seuils avec mémoire (uHigh, uLow, yHigh, yLow).

== Syntaxe

- #raw("Type de bloc : hysteresis");

== Argument d'entrée

/ ports d'entrée: 1 port d'entrée déclaré.

== Argument de sortie

/ ports de sortie: 1 port de sortie déclaré.

== Description

Relais : une bascule à mémoire avec deux seuils (hystérésis).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliothèque], [Nonlinear], 
  [Type], [#raw("hysteresis");], 
  [Libellé], [Relay], 
)
  #strong[Description];

 La sortie est mémorisée : elle bascule à #raw("yHigh"); quand l'entrée atteint ou dépasse #raw("uHigh");, à #raw("yLow"); quand elle atteint ou passe sous #raw("uLow");, et conserve sa valeur précédente entre les deux. Ce comportement à deux seuils est le relais classique avec hystérésis. Avec état (sortie mémorisée).

 #strong[Ports];

 

#table(
  columns: 4,
  table.header([Port], [Rôle], [Côté], [Position], ),
  [Port\_1], [Entrée de commande comparée aux seuils.], [gauche], [x\=0, y\=40], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Rôle], [Côté], [Position], ),
  [Port\_1], [Sortie relais mémorisée (yHigh ou yLow).], [droite], [x\=80, y\=40], 
)
 #strong[Paramètres];

 

#table(
  columns: 2,
  table.header([Paramètre], [Valeur par défaut], ),
  [#raw("uHigh");], [1], 
  [#raw("uLow");], [-1], 
  [#raw("yHigh");], [1], 
  [#raw("yLow");], [0], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [hysteresis], 
  [Famille], [Nonlinear], 
  [Taille de rendu], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [État interne ou historique], [oui (sortie mémorisée)], 
  [Type de données du signal], [valeurs numériques double], 
)
 #strong[Algorithmes];

 

- INIT : démarre à yLow.
- OUTPUT : émet la valeur mémorisée.
- UPDATE : bascule à yHigh au-dessus de uHigh, à yLow sous uLow, sinon conserve. #strong[Équation ou règle];

 #latex("y \\leftarrow \\begin{cases} y_{High} & u \\ge u_{High} \\\\ y_{Low} & u \\le u_{Low} \\\\ y & \\text{sinon} \\end{cases}"); #strong[Capacités étendues];

 Génération de code : supportée pour C et Rust.

 #strong[Sources d'implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/hysteresis.cpp", title: "Runtime")


== Exemple

Relais piloté par un sinus franchissant les deux seuils.

``````matlab
d.blocks={ struct('id','s','type','sine','inputs',0,'outputs',1,'params',struct('Amplitude',2,'Frequency',1)), struct('id','r','type','hysteresis','inputs',1,'outputs',1,'params',struct('uHigh',1,'uLow',-1,'yHigh',1,'yLow',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','r','fromIndex',0,'toIndex',0), struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.02; d.duration=2.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:nonlinear.saturation>)[saturation];, #nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
