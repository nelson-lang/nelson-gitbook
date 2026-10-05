# dashboardKnob


<p align="center">
<img src="dashboardKnob.svg" width="72"/>
</p>
Definit un parametre lie en tournant un bouton rotatif.

## 📝 Syntaxe

- Block type: dashboardKnob

## 📄 Description


Definit un parametre lie en tournant un bouton rotatif. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardKnob</code> | 
| Libelle | Knob | 

  

<b>Description</b> 

Le bloc Knob permet de definir le parametre lie en tournant un bouton rotatif entre les limites configurees, sur une echelle lineaire ou logarithmique. 

<b>Ports</b> 

<b>Entree(s)</b> 

Ce bloc ne declare aucune entree. 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>LabelPosition</code> | Top | 
| <code>Binding</code> |  | 
| <code>ShowInitialText</code> | on | 
| <code>ScaleType</code> | Linear | 
| <code>Limits</code> | [0, -1, 100] | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ScaleType</code> 
- <code>Limits</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardKnob | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 110 x 115 | 
| Phases | aucune | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Le bloc ne declare aucune phase de simulation; il est pilote par le tableau de bord, pas par le solveur. 
- L interaction utilisateur ecrit la valeur choisie dans le parametre lie avant ou pendant l execution. 
- Le bloc ne declare aucun port de signal en entree ou sortie. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/dashboard/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/DashboardHandlers.cpp`



## 🔗 Voir aussi

[dashboardLamp](../../nflow_blocks/dashboard/dashboardLamp.md), [dashboardLinearGauge](../../nflow_blocks/dashboard/dashboardLinearGauge.md), [dashboardMultiStateImage](../../nflow_blocks/dashboard/dashboardMultiStateImage.md), [dashboardPushButton](../../nflow_blocks/dashboard/dashboardPushButton.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
