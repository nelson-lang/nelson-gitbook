# magnitudeAngleToComplex

Construit un signal complexe à partir d’entrées module et angle.

## 📝 Syntaxe

- Block type: magnitudeAngleToComplex

## 📥 Argument d'entrée

- input ports - 2 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Construit un signal complexe à partir d’entrées module et angle. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>magnitudeAngleToComplex</code> | 
| Label | Mag-Angle to Complex | 

 

<b>Description</b> 

Combine le port d’entrée 1 (module) et le port d’entrée 2 (angle, radians) en le signal complexe <code>m*cos(a) + i*m*sin(a)</code>. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 Voir aussi

[complexToMagnitudeAngle](../../nflow_blocks/math/complexToMagnitudeAngle.md), [realImagToComplex](../../nflow_blocks/math/realImagToComplex.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
