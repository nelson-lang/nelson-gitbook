# xyScope


<p align="center">
<img src="xyScope.svg" width="72"/>
</p>
Stocke des paires X/Y pour affichage.

## 📝 Syntaxe

- Block type: xyScope

## 📥 Argument d'entrée

- input ports - 2 port(s) d entree declare(s).

## 📄 Description


Stocke des paires X/Y pour affichage. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs puits | 
| Type | <code>xyScope</code> | 
| Libelle | XY Scope | 

  

<b>Description</b> 

Stocke des paires X/Y pour affichage. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=50 | 
| Port\_2 | Signal numerique lu par le bloc. | left | x=0, y=110 | 

 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>xMin</code> |  | 
| <code>xMax</code> |  | 
| <code>yMin</code> |  | 
| <code>yMax</code> |  | 
| <code>width</code> | 220 | 
| <code>height</code> | 160 | 
| <code>showTickLabels</code> | false | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>xMin</code> 
- <code>xMax</code> 
- <code>yMin</code> 
- <code>yMax</code> 
- <code>width</code> 
- <code>height</code> 
- <code>showTickLabels</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | xyScope | 
| Famille | Blocs puits | 
| Taille graphique | 220 x 160 | 
| Phases | INIT, AFTER\_STEP | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface xSeries et ySeries. 
- AFTER\_STEP ajoute l entree 1 a xSeries et l entree 2 a ySeries; les entrees absentes ajoutent NaN. 
- Le bloc n a pas de sortie. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/xyScope.cpp`



## 🔗 Voir aussi

[scope](../../nflow_blocks/sink/scope.md), [xyzScope](../../nflow_blocks/sink/xyzScope.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
