# realImagToComplex

Construit un signal complexe à partir d’entrées réelle et imaginaire.

## 📝 Syntaxe

- Block type: realImagToComplex

## 📥 Argument d'entrée

- input ports - 2 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Construit un signal complexe à partir d’entrées réelle et imaginaire. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>realImagToComplex</code> | 
| Label | Re-Im to Complex | 

 

<b>Description</b> 

Combine le port d’entrée 1 (partie réelle) et le port d’entrée 2 (partie imaginaire) en un signal de sortie complexe. 

La complexité est un attribut de port orthogonal au type numérique : le signal complexe traverse les blocs mathématiques compatibles (gain, sum, mult, divide, negate, conjugate) et les blocs de routage, et redevient réel via <code>complexToRealImag</code>, <code>complexToMagnitudeAngle</code> ou <code>abs</code> (module). 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 Voir aussi

[complexToRealImag](../../nflow_blocks/math/complexToRealImag.md), [magnitudeAngleToComplex](../../nflow_blocks/math/magnitudeAngleToComplex.md), [conjugate](../../nflow_blocks/math/conjugate.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
