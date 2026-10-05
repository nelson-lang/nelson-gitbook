# dashboardEdit


<p align="center">
<img src="dashboardEdit.svg" width="72"/>
</p>
Permet de saisir une valeur ecrite dans un parametre lie.

## 📝 Syntaxe

- Block type: dashboardEdit

## 📄 Description


Permet de saisir une valeur ecrite dans un parametre lie. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardEdit</code> | 
| Libelle | Edit | 

  

<b>Description</b> 

Le bloc Edit fournit un champ de saisie. La valeur saisie est ecrite dans le parametre lie. C est un controle interactif sans port de signal. 

<b>Ports</b> 

<b>Entree(s)</b> 

Ce bloc ne declare aucune entree. 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>LabelPosition</code> | Hide | 
| <code>Binding</code> |  | 
| <code>ShowInitialText</code> | on | 
| <code>Alignment</code> | Center | 
| <code>Opacity</code> | 1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>Alignment</code> 
- <code>Opacity</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardEdit | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 150 x 30 | 
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

[dashboardGauge](../../nflow_blocks/dashboard/dashboardGauge.md), [dashboardHalfGauge](../../nflow_blocks/dashboard/dashboardHalfGauge.md), [dashboardKnob](../../nflow_blocks/dashboard/dashboardKnob.md), [dashboardLamp](../../nflow_blocks/dashboard/dashboardLamp.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
