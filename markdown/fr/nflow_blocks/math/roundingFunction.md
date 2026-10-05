# roundingFunction

Arrondit l’entrée à une valeur entière.

## 📝 Syntaxe

- Block type: roundingFunction

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Arrondit l’entrée à une valeur entière. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>roundingFunction</code> | 
| Label | Rounding Function | 

 

<b>Description</b> 

Applique le mode d’arrondi sélectionné par le paramètre <code>Operator</code>, élément par élément, avec expansion scalaire pour les signaux vectoriels. 

<b>Operator</b> 

<code>floor</code> : arrondi vers moins l’infini. 

<code>ceil</code> : arrondi vers plus l’infini. 

<code>round</code> : arrondi à l’entier le plus proche, les valeurs à mi-chemin étant arrondies à l’opposé de zéro. 

<code>fix</code> : troncature vers zéro. 

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d’implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/roundingFunction.cpp`



## 🔗 Voir aussi

[sign](../../nflow_blocks/math/sign.md), [sqrt](../../nflow_blocks/math/sqrt.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
