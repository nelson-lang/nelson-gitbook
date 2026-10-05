# dashboardGauge


<p align="center">
<img src="dashboardGauge.svg" width="72"/>
</p>
Affiche un signal lie sous forme d aiguille sur un cadran circulaire.

## 📝 Syntaxe

- Block type: dashboardGauge

## 📄 Description


Affiche un signal lie sous forme d aiguille sur un cadran circulaire. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardGauge</code> | 
| Libelle | Gauge | 

  

<b>Description</b> 

Le bloc Gauge affiche la valeur du signal lie sous forme d aiguille parcourant un cadran circulaire complet entre les limites configurees. Les couleurs d echelle mettent en evidence des plages de valeurs. 

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
| <code>ScaleColors</code> | [] | 
| <code>Limits</code> | [0, -1, 100] | 
| <code>FontColor</code> | [0, 0, 0] | 
| <code>Opacity</code> | 1 | 
| <code>ScaleDirection</code> | Clockwise | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ScaleColors</code> 
- <code>Limits</code> 
- <code>FontColor</code> 
- <code>Opacity</code> 
- <code>ScaleDirection</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardGauge | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 125 x 140 | 
| Phases | INIT, AFTER\_STEP | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT reinitialise le widget a son affichage initial. 
- AFTER\_STEP echantillonne le signal lie et rafraichit l affichage. 
- Le bloc ne fait que visualiser le signal; il ne declare aucun port de signal en entree ou sortie. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/dashboard/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/DashboardHandlers.cpp`



## 🔗 Voir aussi

[dashboardHalfGauge](../../nflow_blocks/dashboard/dashboardHalfGauge.md), [dashboardKnob](../../nflow_blocks/dashboard/dashboardKnob.md), [dashboardLamp](../../nflow_blocks/dashboard/dashboardLamp.md), [dashboardLinearGauge](../../nflow_blocks/dashboard/dashboardLinearGauge.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
