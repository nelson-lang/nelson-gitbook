#import "../nelson_help.typ": *

= busCreator <nflow_blocks:utility.busCreator>

Regroupe des signaux hétérogènes (ou des bus imbriqués) en un bus.

== Syntaxe

- #raw("Block type: busCreator");

== Argument d'entrée

/ input ports: 2 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Regroupe des signaux hétérogènes (ou des bus imbriqués) en un bus.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs utilitaires], 
  [Type], [#raw("busCreator");], 
  [Label], [Bus Creator], 
)
 #strong[Description];

 Assemble ses signaux d’entrée en un signal de bus. Les noms des membres viennent du paramètre #raw("MemberNames"); (défaut #raw("signalN");) ; une entrée qui est elle-même un bus devient un membre imbriqué.

 Un #raw("BusType"); nommé (déclaré dans le tableau #raw("busTypes"); du modèle) valide la disposition des membres ; #raw("NonVirtual"); marque le bus pour l’émission d’une struct à l’interface du code généré. Les membres conservent leur descripteur complet : type numérique (y compris int64\/uint64 exacts), complexité et forme N-D.

 Les membres se lisent par chemin avec le bloc #raw("busSelector"); ; un bus câblé vers tout autre bloc est une erreur de compilation.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/busCreator.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:utility.busSelector>)[busSelector];, #nlink(<nflow_blocks:utility.mux>)[mux];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
