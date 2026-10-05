# dashboardRotarySwitch


<p align="center">
<img src="dashboardRotarySwitch.svg" width="72"/>
</p>
Selectionne un etat parmi plusieurs via un selecteur rotatif.

## 📝 Syntaxe

- Block type: dashboardRotarySwitch

## 📄 Description


Selectionne un etat parmi plusieurs via un selecteur rotatif. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardRotarySwitch</code> | 
| Libelle | Rotary Switch | 

  

<b>Description</b> 

Le bloc Rotary Switch selectionne un etat parmi plusieurs configures via un selecteur rotatif et ecrit la valeur choisie dans le parametre lie. 

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
| <code>States</code> | [{"Value": 0, "Label": "Off"}, {"Value": 1, "Label": "Low"}, {"Value": 2, "Label": "Medium"}, {"Value": 3, "Label": "High"}] | 
| <code>UseEnumeratedDataType</code> | off | 
| <code>EnumeratedDataType</code> |  | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>States</code> 
- <code>UseEnumeratedDataType</code> 
- <code>EnumeratedDataType</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardRotarySwitch | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 125 x 100 | 
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

[dashboardSlider](../../nflow_blocks/dashboard/dashboardSlider.md), [dashboardSliderSwitch](../../nflow_blocks/dashboard/dashboardSliderSwitch.md), [dashboardToggleSwitch](../../nflow_blocks/dashboard/dashboardToggleSwitch.md), [dashboardCallbackButton](../../nflow_blocks/dashboard/dashboardCallbackButton.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
