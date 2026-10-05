# deadZone


<p align="center">
<img src="deadZone.svg" width="192"/>
</p>
Supprime les valeurs dans une zone morte.

## 📝 Syntaxe

- Block type: deadZone

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Supprime les valeurs dans une zone morte. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs non lineaires | 
| Type | <code>deadZone</code> | 
| Libelle | Dead Zone | 

  

<b>Description</b> 

Supprime les valeurs dans une zone morte. 

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
| <code>min</code> | -1 | 
| <code>max</code> | 1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>min</code> 
- <code>max</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | deadZone | 
| Famille | Blocs non lineaires | 
| Taille graphique | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Traversee directe | oui | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc algebrique. Le premier port d entree est requis. 
- Les entrees sous min produisent u - min, celles au-dessus de max produisent u - max, et les valeurs dans la bande produisent 0. 

<b>Equation ou regle</b> 
$$y = 0\quad \mathrm{for}\quad min \le u \le max$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/deadZone.cpp`



## 🔗 Voir aussi

[saturation](../../nflow_blocks/nonlinear/saturation.md), [backlash](../../nflow_blocks/nonlinear/backlash.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
