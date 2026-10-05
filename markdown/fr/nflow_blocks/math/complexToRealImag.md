# complexToRealImag

Sépare un signal complexe en sorties réelle et imaginaire.

## 📝 Syntaxe

- Block type: complexToRealImag

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 2 output port(s) declared.

## 📄 Description


Sépare un signal complexe en sorties réelle et imaginaire. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>complexToRealImag</code> | 
| Label | Complex to Re-Im | 

 

<b>Description</b> 

Le port de sortie 1 porte la partie réelle et le port de sortie 2 la partie imaginaire du signal d’entrée complexe. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 Voir aussi

[realImagToComplex](../../nflow_blocks/math/realImagToComplex.md), [complexToMagnitudeAngle](../../nflow_blocks/math/complexToMagnitudeAngle.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
