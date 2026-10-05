#import "../nelson_help.typ": *

= assignment <nflow_blocks:utility.assignment>


#block-icon(image("assignment.svg"))

Ecrit des elements dans un signal : out \= base avec out\[Indices\] \= valeurs.

== Syntaxe

- #raw("Type de bloc : assignment");

== Argument d'entrée

/ ports d entree: 2 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Ecrit des elements dans un signal : out \= base avec out\[Indices\] \= valeurs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Utilitaires], 
  [Type], [#raw("assignment");], 
  [Libelle], [Assignment], 
)
  #strong[Description];

 Ecrit des elements dans un signal (Assignment). Le port 0 est le signal de base ; sa largeur fixe la largeur de sortie ; le port 1 porte les valeurs de remplacement. #raw("Indices"); (base 1) choisit quels elements de base sont ecrases par les valeurs successives : #raw("out = base");, puis #raw("out[Indices[k]] = values[k]");. Les elements non listes passent inchanges. Simulation seule (routage a forme vectorielle, comme reshape \/ selector) : pas de chemin de generation de code scalaire.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=20], 
  [Port\_2], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=40], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=90, y\=30], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("Indices");], [\[1\]], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [assignment], 
  [Famille], [Utilitaires], 
  [Taille rendue], [90 x 60], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : out \= base ; pour chaque k, out\[Indices\[k\]-1\] \= values\[k\]. #strong[Capacites etendues];

 Execution native seulement (ce bloc n'est pas genere en code).

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/assignment.cpp", title: "Runtime")


== Exemple

base \[1 2 3 4\], valeurs \[90 70\], Indices \[2 4\] -\> \[1 90 3 70\].

``````matlab
d.blocks={ struct('id','b','type','constant','inputs',0,'outputs',1,'params',struct('Value',[1 2 3 4])), struct('id','v','type','constant','inputs',0,'outputs',1,'params',struct('Value',[90 70])), struct('id','a','type','assignment','inputs',2,'outputs',1,'params',struct('Indices',[2 4])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','b','to','a','fromIndex',0,'toIndex',0), struct('from','v','to','a','fromIndex',0,'toIndex',1), struct('from','a','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.1; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:utility.selector>)[selector];, #nlink(<nflow_blocks:utility.reshape>)[reshape];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
