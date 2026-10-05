# trigFunction

Fonction trigonométrique de l’entrée.

## 📝 Syntaxe

- Block type: trigFunction

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Fonction trigonométrique de l’entrée. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>trigFunction</code> | 
| Label | Trigonometric Function | 

 

<b>Description</b> 

Applique la fonction trigonométrique sélectionnée par le paramètre <code>Function</code>, élément par élément, avec expansion scalaire pour les signaux vectoriels. Les angles sont exprimés en radians. 

<b>Function</b> 

Valeurs à une entrée : <code>sin</code>, <code>cos</code>, <code>tan</code>, <code>asin</code>, <code>acos</code>, <code>atan</code>, <code>sinh</code>, <code>cosh</code>, <code>tanh</code>, <code>asinh</code>, <code>acosh</code>, <code>atanh</code>. 

<code>atan2</code> utilise deux entrées : <code>atan2(u1, u2)</code> avec u1 sur le port 1 et u2 sur le port 2. <code>sincos</code> produit deux sorties : sin(u) sur le port 1 et cos(u) sur le port 2. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/trigFunction.cpp`



## 🔗 Voir aussi

[atan2](../../nflow_blocks/math/atan2.md), [sqrt](../../nflow_blocks/math/sqrt.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
