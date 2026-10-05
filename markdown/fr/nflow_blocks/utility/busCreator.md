# busCreator

Regroupe des signaux hétérogènes (ou des bus imbriqués) en un bus.

## 📝 Syntaxe

- Block type: busCreator

## 📥 Argument d'entrée

- input ports - 2 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Regroupe des signaux hétérogènes (ou des bus imbriqués) en un bus. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs utilitaires | 
| Type | <code>busCreator</code> | 
| Label | Bus Creator | 

 

<b>Description</b> 

Assemble ses signaux d’entrée en un signal de bus. Les noms des membres viennent du paramètre <code>MemberNames</code> (défaut <code>signalN</code>) ; une entrée qui est elle-même un bus devient un membre imbriqué. 

Un <code>BusType</code> nommé (déclaré dans le tableau <code>busTypes</code> du modèle) valide la disposition des membres ; <code>NonVirtual</code> marque le bus pour l’émission d’une struct à l’interface du code généré. Les membres conservent leur descripteur complet : type numérique (y compris int64/uint64 exacts), complexité et forme N-D. 

Les membres se lisent par chemin avec le bloc <code>busSelector</code> ; un bus câblé vers tout autre bloc est une erreur de compilation. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/busCreator.cpp`



## 🔗 Voir aussi

[busSelector](../../nflow_blocks/utility/busSelector.md), [mux](../../nflow_blocks/utility/mux.md), [subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
