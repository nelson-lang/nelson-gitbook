# sqrt

Famille de racines carrées de l’entrée.

## 📝 Syntaxe

- Block type: sqrt

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Famille de racines carrées de l’entrée. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>sqrt</code> | 
| Label | Sqrt | 

 

<b>Description</b> 

Applique la variante de racine carrée sélectionnée par le paramètre <code>Function</code>, élément par élément, avec expansion scalaire pour les signaux vectoriels. 

<b>Function</b> 

<code>sqrt</code> : racine carrée <code>sqrt(u)</code> (une entrée négative donne NaN sur le chemin réel). 

<code>signedSqrt</code> : racine carrée signée <code>sign(u)*sqrt(|u|)</code> (toujours réelle). 

<code>rSqrt</code> : racine carrée réciproque <code>1/sqrt(u)</code>. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/sqrt.cpp`



## 🔗 Voir aussi

[abs](../../nflow_blocks/math/abs.md), [sign](../../nflow_blocks/math/sign.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
