# scope


<p align="center">
<img src="scope.svg" width="72"/>
</p>
Stocke des series temporelles pour affichage.

## 📝 Syntaxe

- Block type: scope

## 📥 Argument d'entrée

- input ports - 3 port(s) d entree declare(s).

## 📄 Description


Stocke des series temporelles pour affichage. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs puits | 
| Type | <code>scope</code> | 
| Libelle | Scope | 

  

<b>Description</b> 

Stocke des series temporelles pour affichage. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=40 | 
| Port\_2 | Signal numerique lu par le bloc. | left | x=0, y=80 | 
| Port\_3 | Signal numerique lu par le bloc. | left | x=0, y=120 | 

 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>tMin</code> |  | 
| <code>tMax</code> |  | 
| <code>yMin</code> |  | 
| <code>yMax</code> |  | 
| <code>width</code> | 220 | 
| <code>height</code> | 160 | 
| <code>showTickLabels</code> | false | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>tMin</code> 
- <code>tMax</code> 
- <code>yMin</code> 
- <code>yMax</code> 
- <code>width</code> 
- <code>height</code> 
- <code>showTickLabels</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | scope | 
| Famille | Blocs puits | 
| Taille graphique | 220 x 160 | 
| Phases | INIT, AFTER\_STEP | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface les series stockees. 
- AFTER\_STEP ajoute une valeur par entree declaree; les entrees absentes ajoutent NaN. 
- Le bloc n a pas de sortie. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/scope.cpp`



## 🔗 Voir aussi

[xyScope](../../nflow_blocks/sink/xyScope.md), [xyzScope](../../nflow_blocks/sink/xyzScope.md), [display](../../nflow_blocks/sink/display.md), [fileSink](../../nflow_blocks/sink/fileSink.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
