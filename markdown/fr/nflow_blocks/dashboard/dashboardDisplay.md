# dashboardDisplay


<p align="center">
<img src="dashboardDisplay.svg" width="72"/>
</p>
Affiche la valeur courante d un signal lie sous forme de texte.

## 📝 Syntaxe

- Block type: dashboardDisplay

## 📄 Description


Affiche la valeur courante d un signal lie sous forme de texte. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardDisplay</code> | 
| Libelle | Display | 

  

<b>Description</b> 

Le bloc Display affiche la valeur instantanee du signal lie sous forme de texte, selon le format numerique choisi. Il se met a jour apres chaque pas de simulation. 

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
| <code>Format</code> | short | 
| <code>Alignment</code> | Center | 
| <code>Opacity</code> | 1 | 
| <code>Layout</code> | Preserve dimensions | 
| <code>FormatString</code> | %d | 
| <code>GridColor</code> | [0.502, 0.502, 0.502] | 
| <code>ShowGrid</code> | on | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>Format</code> 
- <code>Alignment</code> 
- <code>Opacity</code> 
- <code>Layout</code> 
- <code>FormatString</code> 
- <code>GridColor</code> 
- <code>ShowGrid</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardDisplay | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 180 x 40 | 
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

[dashboardEdit](../../nflow_blocks/dashboard/dashboardEdit.md), [dashboardGauge](../../nflow_blocks/dashboard/dashboardGauge.md), [dashboardHalfGauge](../../nflow_blocks/dashboard/dashboardHalfGauge.md), [dashboardKnob](../../nflow_blocks/dashboard/dashboardKnob.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
