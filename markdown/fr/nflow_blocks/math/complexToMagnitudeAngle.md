# complexToMagnitudeAngle

Émet le module et l’angle d’un signal complexe.

## 📝 Syntaxe

- Block type: complexToMagnitudeAngle

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 2 output port(s) declared.

## 📄 Description


Émet le module et l’angle d’un signal complexe. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>complexToMagnitudeAngle</code> | 
| Label | Complex to Mag-Angle | 

 

<b>Description</b> 

Le port de sortie 1 porte le module <code>abs(z)</code> et le port de sortie 2 l’angle quatre quadrants <code>atan2(imag(z), real(z))</code> de l’entrée complexe. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 Voir aussi

[magnitudeAngleToComplex](../../nflow_blocks/math/magnitudeAngleToComplex.md), [atan2](../../nflow_blocks/math/atan2.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
