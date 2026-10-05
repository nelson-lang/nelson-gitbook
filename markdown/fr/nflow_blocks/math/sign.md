# sign

Signe de l’entrée (-1, 0 ou +1).

## 📝 Syntaxe

- Block type: sign

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Signe de l’entrée (-1, 0 ou +1). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>sign</code> | 
| Label | Sign | 

 

<b>Description</b> 

Renvoie <code>-1</code> lorsque l’entrée est négative, <code>0</code> lorsqu’elle est nulle et <code>+1</code> lorsqu’elle est positive, élément par élément avec expansion scalaire pour les signaux vectoriels. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/sign.cpp`



## 🔗 Voir aussi

[abs](../../nflow_blocks/math/abs.md), [roundingFunction](../../nflow_blocks/math/roundingFunction.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
