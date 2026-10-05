# xyzScope


<p align="center">
<img src="xyzScope.svg" width="72"/>
</p>
Stocke des echantillons X/Y/Z pour affichage 3D.

## 📝 Syntaxe

- Block type: xyzScope

## 📥 Argument d'entrée

- input ports - 3 port(s) d entree declare(s).

## 📄 Description


Stocke des echantillons X/Y/Z pour affichage 3D. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs puits | 
| Type | <code>xyzScope</code> | 
| Libelle | XYZ Scope | 

  

<b>Description</b> 

Stocke des echantillons X/Y/Z pour affichage 3D. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=50 | 
| Port\_2 | Signal numerique lu par le bloc. | left | x=0, y=90 | 
| Port\_3 | Signal numerique lu par le bloc. | left | x=0, y=130 | 

 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>xMin</code> |  | 
| <code>xMax</code> |  | 
| <code>yMin</code> |  | 
| <code>yMax</code> |  | 
| <code>zMin</code> |  | 
| <code>zMax</code> |  | 
| <code>width</code> | 220 | 
| <code>height</code> | 180 | 
| <code>rotationX</code> | 30 | 
| <code>rotationY</code> | 45 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>xMin</code> 
- <code>xMax</code> 
- <code>yMin</code> 
- <code>yMax</code> 
- <code>zMin</code> 
- <code>zMax</code> 
- <code>width</code> 
- <code>height</code> 
- <code>rotationX</code> 
- <code>rotationY</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | xyzScope | 
| Famille | Blocs puits | 
| Taille graphique | 220 x 180 | 
| Phases | INIT, AFTER\_STEP | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface xSeries, ySeries et zSeries. 
- AFTER\_STEP ajoute les trois entrees; les entrees absentes ajoutent NaN. 
- Le bloc n a pas de sortie. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/xyzScope.cpp`



## 🔗 Voir aussi

[scope](../../nflow_blocks/sink/scope.md), [xyScope](../../nflow_blocks/sink/xyScope.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
