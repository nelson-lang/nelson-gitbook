# busSelector

Extrait des membres d’un bus par chemin.

## 📝 Syntaxe

- Block type: busSelector

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 2 output port(s) declared.

## 📄 Description


Extrait des membres d’un bus par chemin. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs utilitaires | 
| Type | <code>busSelector</code> | 
| Label | Bus Selector | 

 

<b>Description</b> 

Lit son entrée bus et émet un port de sortie par entrée du paramètre <code>SelectedSignals</code>. Les chemins adressent les bus imbriqués avec des points (<code>sub.a</code>) ; un membre sélectionné qui est lui-même un bus produit une sortie de type bus. 

Chaque sortie adopte le descripteur complet du membre (type, complexité, forme N-D). Un chemin inconnu est une erreur de compilation listant les membres disponibles. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/busSelector.cpp`



## 🔗 Voir aussi

[busCreator](../../nflow_blocks/utility/busCreator.md), [demux](../../nflow_blocks/utility/demux.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
