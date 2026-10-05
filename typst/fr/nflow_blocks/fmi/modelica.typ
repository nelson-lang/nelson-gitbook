#import "../nelson_help.typ": *

= modelica <nflow_blocks:fmi.modelica>


#block-icon(image("modelica.svg"))

Compile un modèle Modelica et l'utilise comme bloc NFlow.

== Syntaxe

- #raw("Type de bloc : modelica");

== Description

Le bloc #strong[Modelica]; utilise un #strong[source]; intégré ou un #strong[file]; Modelica, puis sélectionne #strong[modelName];. Avant la simulation, NFlow compile le modèle sous forme de FMU.

 Une installation OpenModelica fonctionnelle est nécessaire. Les erreurs de compilation et de modèle sont publiées dans Diagnostics.

 
== Voir aussi

#nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu];.
