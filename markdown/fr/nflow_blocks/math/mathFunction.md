# mathFunction

Fonction mathématique de l’entrée.

## 📝 Syntaxe

- Block type: mathFunction

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Fonction mathématique de l’entrée. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>mathFunction</code> | 
| Label | Math Function | 

 

<b>Description</b> 

Applique la fonction mathématique sélectionnée par le paramètre <code>Function</code>, élément par élément, avec expansion scalaire pour les signaux vectoriels. 

<b>Function</b> 

Valeurs à une entrée : <code>exp</code>, <code>log</code>, <code>10^u</code> (10 puissance l’entrée), <code>log10</code>, <code>square</code> (u\*u), <code>sqrt</code>, <code>reciprocal</code> (1/u). 

Valeurs à deux entrées (u1 sur le port 1, u2 sur le port 2) : <code>pow</code> (u1^u2), <code>hypot</code> (sqrt(u1^2+u2^2)), <code>rem</code> (reste du signe de u1), <code>mod</code> (modulo du signe de u2, mod(u1,0)=u1). 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/mathFunction.cpp`



## 🔗 Voir aussi

[trigFunction](../../nflow_blocks/math/trigFunction.md), [sqrt](../../nflow_blocks/math/sqrt.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
