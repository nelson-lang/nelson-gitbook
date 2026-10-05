# dashboardPushButton


<p align="center">
<img src="dashboardPushButton.svg" width="72"/>
</p>
Ecrit une valeur dans un parametre lie lorsqu on l actionne.

## 📝 Syntaxe

- Block type: dashboardPushButton

## 📄 Description


Ecrit une valeur dans un parametre lie lorsqu on l actionne. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardPushButton</code> | 
| Libelle | Push Button | 

  

<b>Description</b> 

Le bloc Push Button ecrit une valeur dans le parametre lie lorsqu on l actionne. Il peut fonctionner en mode momentane ou verrouille, et afficher un libelle ou une icone. 

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
| <code>ButtonText</code> | Button | 
| <code>OnValue</code> | 1 | 
| <code>Opacity</code> | 1 | 
| <code>ButtonType</code> | Momentary | 
| <code>Icon</code> | None | 
| <code>CustomIcon</code> |  | 
| <code>IconAlignment</code> | Left | 
| <code>IconOnColor</code> | [0, 0.39215686274509803, 0] | 
| <code>IconOffColor</code> | [0, 1, 0] | 
| <code>IconColor</code> | Off | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ButtonText</code> 
- <code>OnValue</code> 
- <code>Opacity</code> 
- <code>ButtonType</code> 
- <code>Icon</code> 
- <code>CustomIcon</code> 
- <code>IconAlignment</code> 
- <code>IconOnColor</code> 
- <code>IconOffColor</code> 
- <code>IconColor</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardPushButton | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 91 x 44 | 
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

[dashboardQuarterGauge](../../nflow_blocks/dashboard/dashboardQuarterGauge.md), [dashboardRadioButton](../../nflow_blocks/dashboard/dashboardRadioButton.md), [dashboardRockerSwitch](../../nflow_blocks/dashboard/dashboardRockerSwitch.md), [dashboardRotarySwitch](../../nflow_blocks/dashboard/dashboardRotarySwitch.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
