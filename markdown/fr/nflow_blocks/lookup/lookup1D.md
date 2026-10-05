# lookup1D

Table de consultation 1-D interpolee.

## 📝 Syntaxe

- Block type: lookup1D

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Table de consultation 1-D interpolee. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Tables de consultation | 
| Type | <code>lookup1D</code> | 
| Label | 1-D Lookup Table | 

 

<b>Description</b> 

Interpole un couple points de rupture / table statique a la valeur d entree. InterpMethod choisit Flat, Nearest, Linear point-slope ou Linear Lagrange ; ExtrapMethod choisit Clip ou Linear. Element par element avec expansion scalaire. 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/lookup/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/lookup/lookup1D.cpp`



## 🔗 Voir aussi

[lookup1D](../../nflow_blocks/lookup/lookup1D.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
