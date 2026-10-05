# lookupND

Table de consultation n-D interpolee.

## 📝 Syntaxe

- Block type: lookupND

## 📥 Argument d'entrée

- input ports - 2 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Table de consultation n-D interpolee. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Tables de consultation | 
| Type | <code>lookupND</code> | 
| Label | n-D Lookup Table | 

 

<b>Description</b> 

N entrees (une coordonnee par dimension, NumberOfTableDimensions) indexent une Table statique column-major ; interpolation multilineaire = melange pondere des 2^N coins. 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/lookup/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/lookup/lookupND.cpp`



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
