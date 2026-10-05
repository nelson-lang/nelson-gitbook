# dotProduct

Produit scalaire de deux vecteurs d entree.

## 📝 Syntaxe

- Block type: dotProduct

## 📥 Argument d'entrée

- input ports - 2 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description


Produit scalaire de deux vecteurs d entree. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Blocs math | 
| Type | <code>dotProduct</code> | 
| Label | Dot Product | 

 

<b>Description</b> 

Calcule la somme sur i de a[i]\*b[i] pour les deux vecteurs d entree et produit le resultat scalaire. 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/matrix/vectorMath.cpp`



## 🔗 Voir aussi

[sum](../../nflow_blocks/math/sum.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
