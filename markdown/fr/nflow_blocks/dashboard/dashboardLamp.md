# dashboardLamp


<p align="center">
<img src="dashboardLamp.svg" width="72"/>
</p>
Affiche un voyant colore qui change selon un signal lie.

## 📝 Syntaxe

- Block type: dashboardLamp

## 📄 Description


Affiche un voyant colore qui change selon un signal lie. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardLamp</code> | 
| Libelle | Lamp | 

  

<b>Description</b> 

Le bloc Lamp affiche un voyant colore dont la couleur depend de la valeur du signal lie. Des correspondances valeur-couleur definissent les couleurs d etat; les autres valeurs utilisent la couleur par defaut. 

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
| <code>ColorDefault</code> | [0.7529411764705882, 0.7529411764705882, 0.7529411764705882] | 
| <code>StateColors</code> | [{"Value": 0, "Color": [0.39215686274509803, 0.8313725490196079, 0.07450980392156863]}] | 
| <code>Opacity</code> | 1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ColorDefault</code> 
- <code>StateColors</code> 
- <code>Opacity</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardLamp | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 65 x 60 | 
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

[dashboardLinearGauge](../../nflow_blocks/dashboard/dashboardLinearGauge.md), [dashboardMultiStateImage](../../nflow_blocks/dashboard/dashboardMultiStateImage.md), [dashboardPushButton](../../nflow_blocks/dashboard/dashboardPushButton.md), [dashboardQuarterGauge](../../nflow_blocks/dashboard/dashboardQuarterGauge.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
