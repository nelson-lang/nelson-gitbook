# backlash


<p align="center">
<img src="backlash.svg" width="72"/>
</p>
Modele un jeu avec une bande morte autour de la sortie precedente.

## 📝 Syntaxe

- Block type: backlash

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Modele un jeu avec une bande morte autour de la sortie precedente. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs non lineaires | 
| Type | <code>backlash</code> | 
| Libelle | Backlash | 

  

<b>Description</b> 

Modele un jeu avec une bande morte autour de la sortie precedente. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>width</code> | 1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>width</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | backlash | 
| Famille | Blocs non lineaires | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface la sortie memorisee. 
- OUTPUT emet la valeur memorisee. UPDATE ne bouge que lorsque l entree sort de width / 2 autour de la valeur stockee. 
- width est contraint a une valeur positive ou nulle. 

<b>Equation ou regle</b> 

y follows u outside the +/- width/2 band 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/backlash.cpp`



## 🔗 Voir aussi

[deadZone](../../nflow_blocks/nonlinear/deadZone.md), [saturation](../../nflow_blocks/nonlinear/saturation.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
