# mux


<p align="center">
<img src="mux.svg" width="192"/>
</p>
Regroupe plusieurs routes d entree vers une route de sortie.

## 📝 Syntaxe

- Block type: mux

## 📥 Argument d'entrée

- input ports - 2 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Regroupe plusieurs routes d entree vers une route de sortie. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs utilitaires | 
| Type | <code>mux</code> | 
| Libelle | Mux | 

  

<b>Description</b> 

Regroupe plusieurs routes d entree vers une route de sortie. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=10 | 
| Port\_2 | Signal numerique lu par le bloc. | left | x=0, y=30 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=8, y=20 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>inputs</code> | 2 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>inputs</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | mux | 
| Famille | Blocs utilitaires | 
| Taille graphique | 8 x 40 | 
| Phases | OUTPUT | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Le parametre inputs controle le nombre d entrees exposees. 
- Utilise comme utilitaire de routage de graphe plutot que comme transformation numerique avec etat. 

<b>Equation ou regle</b> 

output route carries configured inputs 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

Runtime: registre de famille, chemin UI ou codegen; aucun fichier runtime natif dedie trouve.


## 🔗 Voir aussi

[demux](../../nflow_blocks/utility/demux.md), [subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
