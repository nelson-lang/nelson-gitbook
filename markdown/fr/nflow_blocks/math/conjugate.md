# conjugate

Conjugué complexe du signal d’entrée.

## 📝 Syntaxe

- Block type: conjugate

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Conjugué complexe du signal d’entrée. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>conjugate</code> | 
| Label | Conjugate | 

 

<b>Description</b> 

Émet <code>conj(z)</code> ; pour une entrée réelle le bloc est l’identité. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 Voir aussi

[realImagToComplex](../../nflow_blocks/math/realImagToComplex.md), [complexToRealImag](../../nflow_blocks/math/complexToRealImag.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
