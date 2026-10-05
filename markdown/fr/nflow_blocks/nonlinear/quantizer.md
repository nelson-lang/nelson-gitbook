# quantizer


<p align="center">
<img src="quantizer.svg" width="72"/>
</p>
Arrondit l entree au plus proche intervalle.

## 📝 Syntaxe

- Block type: quantizer

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Arrondit l entree au plus proche intervalle. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs non lineaires | 
| Type | <code>quantizer</code> | 
| Libelle | Quantizer | 

  

<b>Description</b> 

Arrondit l entree au plus proche intervalle. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>interval</code> | 1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>interval</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | quantizer | 
| Famille | Blocs non lineaires | 
| Taille graphique | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Traversee directe | oui | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc algebrique. L entree 1 est requise. 
- interval est converti en abs(interval); les valeurs sous 1e-12 sont remplacees par 1. 

<b>Equation ou regle</b> 
$$y = interval\,\operatorname{round}\left(\frac{u}{interval}\right)$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/quantizer.cpp`



## 🔗 Voir aussi

[rate](../../nflow_blocks/nonlinear/rate.md), [saturation](../../nflow_blocks/nonlinear/saturation.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
