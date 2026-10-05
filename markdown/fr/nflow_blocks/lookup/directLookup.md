# directLookup

Table de consultation directe (n-D) sans interpolation.

## 📝 Syntaxe

- Block type: directLookup

## 📥 Argument d'entrée

- input ports - 2 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Table de consultation directe (n-D) sans interpolation. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Tables de consultation | 
| Type | <code>directLookup</code> | 
| Label | Direct Lookup Table (n-D) | 

 

<b>Description</b> 

N entrees d indices entiers selectionnent un element d une Table statique column-major (mode Element). Les tailles par dimension viennent de TableDimensions ; chaque indice est arrondi et borne (base zero). 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/lookup/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/lookup/directLookup.cpp`



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
