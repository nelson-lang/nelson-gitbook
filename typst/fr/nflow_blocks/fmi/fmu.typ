#import "../nelson_help.typ": *

= fmu <nflow_blocks:fmi.fmu>


#block-icon(image("fmu.svg"))

Exécute une FMU de co-simulation dans un diagramme NFlow.

== Syntaxe

- #raw("Type de bloc : fmu");

== Description

La version navigateur WebAssembly prend en charge les composants FMI 3.0 Co-Simulation dans binaries\/wasm32-wasip2, avec des ports vectoriels numériques et booléens. Utilisez Browse FMU pour importer une archive. Les démos de référence contiennent les binaires natifs et Wasm.

 Le bloc #strong[FMU (CS)]; charge l'archive sélectionnée par #strong[path]; et avance son instance de co-simulation avec la simulation NFlow.

 Après l'import, les ports et paramètres du bloc suivent les variables exposées par la description du modèle FMU.

 
== Voir aussi

#nlink(<nflow_fmi:fmuToBlock>)[fmuToBlock];.
