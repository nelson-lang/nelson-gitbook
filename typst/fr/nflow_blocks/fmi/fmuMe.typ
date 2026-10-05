#import "../nelson_help.typ": *

= fmuMe <nflow_blocks:fmi.fmuMe>


#block-icon(image("fmu.svg"))

Intègre une FMU d'échange de modèle avec le solveur NFlow.

== Syntaxe

- #raw("Type de bloc : fmuMe");

== Description

Le bloc #strong[FMU (ME)]; charge l'archive d'échange de modèle sélectionnée par #strong[path];. NFlow évalue ses dérivées, passages par zéro et événements pendant que le solveur NFlow sélectionné intègre les états continus.

 Après l'import, les ports et paramètres suivent les variables exposées par la description du modèle FMU.

 
== Voir aussi

#nlink(<nflow_fmi:fmuToBlock>)[fmuToBlock];.
