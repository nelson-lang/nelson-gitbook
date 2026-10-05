#import "nelson_help.typ": *

= NFlow.exportfmu <nflow_engine:NFlow.exportfmu>

Exporte un modele nflow en FMU source FMI 3.0 Co-Simulation.

== Syntaxe

- #raw("fmuPath = NFlow.exportfmu(modelFile)");
- #raw("fmuPath = NFlow.exportfmu(modelFile, destinationDirectory)");

== Argument d'entrée

/ modelFile: une chaine : chemin du fichier .nflow.
/ destinationDirectory: une chaine : repertoire de destination. Defaut : le repertoire du modele.

== Argument de sortie

/ fmuPath: une chaine : chemin complet de l'archive .fmu generee.

== Description

#strong[NFlow.exportfmu]; genere le modele en C via le pipeline de generation partage (memes gates et diagnostics que #strong[nflow\_codegenerate];, passes interpreteur incluses, donc les ilots acausaux lineaires s'exportent aussi), l'enveloppe d'une interface FMI 3.0 Co-Simulation, et empaquete #raw("modelDescription.xml"); plus les sources C dans un FMU source #raw("<model>.fmu");.

 Les label sources externes deviennent des entrees FMU et les label sinks externes des sorties FMU. Seuls les signaux Float64 sont supportes a la frontiere du FMU ; les constructions conditionnelles au-dela des gates abaisses et les blocs FMU \/ nelsonFunction sont rejetes avec un message type.


== Exemple

Exporter un modele et recuperer le chemin de l'archive.

``````matlab
% fmu = NFlow.exportfmu('C:/models/lowpass.nflow', tempdir());
``````


== Voir aussi

#nlink(<nflow_engine:nflow_codegenerate>)[nflow\_codegenerate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
