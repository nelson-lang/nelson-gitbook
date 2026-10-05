# toggleSwitch


<p align="center">
<img src="toggleSwitch.svg" width="72"/>
</p>
Produit l une de deux valeurs configurees depuis state.

## 📝 Syntaxe

- Block type: toggleSwitch

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Produit l une de deux valeurs configurees depuis state. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs utilitaires | 
| Type | <code>toggleSwitch</code> | 
| Libelle | Toggle Switch | 

  

<b>Description</b> 

Produit l une de deux valeurs configurees depuis state. 

<b>Ports</b> 

<b>Entree(s)</b> 

Ce bloc ne declare aucune entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=80, y=25 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>state</code> | 0 | 
| <code>onLabel</code> | ON | 
| <code>offLabel</code> | OFF | 
| <code>onValue</code> | 1 | 
| <code>offValue</code> | 0 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>state</code> 
- <code>onLabel</code> 
- <code>offLabel</code> 
- <code>onValue</code> 
- <code>offValue</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | toggleSwitch | 
| Famille | Blocs utilitaires | 
| Taille graphique | 80 x 50 | 
| Phases | OUTPUT | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc OUTPUT sans entree. 
- state non nul produit onValue; state nul produit offValue. 
- onLabel et offLabel modifient seulement les libelles UI. 

<b>Equation ou regle</b> 
$$y = \begin{cases} onValue, & state \ne 0 \\ offValue, & state = 0 \end{cases}$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/toggleSwitch.cpp`



## 🔗 Voir aussi

[switch](../../nflow_blocks/utility/switch.md), [constant](../../nflow_blocks/source/constant.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
