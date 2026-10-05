# atan2

Arctangente quatre quadrants des deux entrées.

## 📝 Syntaxe

- Block type: atan2

## 📥 Argument d'entrée

- input ports - 2 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Arctangente quatre quadrants des deux entrées. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>atan2</code> | 
| Label | Atan2 | 

 

<b>Description</b> 

Calcule <code>atan2(y, x)</code> élément par élément, avec <code>y</code> sur le port d’entrée 1 et <code>x</code> sur le port d’entrée 2. 

Le résultat est l’angle en radians dans l’intervalle (-pi, pi]. Les signaux vectoriels sont traités élément par élément avec expansion scalaire. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/atan2.cpp`



## 🔗 Voir aussi

[abs](../../nflow_blocks/math/abs.md), [divide](../../nflow_blocks/math/divide.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
