# dstateSpace


<p align="center">
<img src="dstateSpace.svg" width="192"/>
</p>
Implemente un modele d etat discret scalaire.

## 📝 Syntaxe

- Block type: dstateSpace

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Implemente un modele d etat discret scalaire. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs discrets | 
| Type | <code>dstateSpace</code> | 
| Libelle | Discrete State-Space | 

  

<b>Description</b> 

Implemente un modele d etat discret scalaire. 

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
| <code>A</code> | 1 | 
| <code>B</code> | 1 | 
| <code>C</code> | 1 | 
| <code>D</code> | 0 | 
| <code>ts</code> | 0.1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>A</code> 
- <code>B</code> 
- <code>C</code> 
- <code>D</code> 
- <code>ts</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dstateSpace | 
| Famille | Blocs discrets | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT remet a zero l etat, la sortie, le prochain instant et ts. 
- OUTPUT emet la sortie memorisee. UPDATE s execute aux instants d echantillonnage. 
- A la mise a jour, y = C\*x + D\*u et x\_next = A\*x + B\*u; ts vaut au moins 0.001. 

<b>Equation ou regle</b> 
$$y_k = Cx_k + Du_k,\quad x_{k+1} = Ax_k + Bu_k$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/dstateSpace.cpp`



## 🔗 Voir aussi

[dtf](../../nflow_blocks/discrete/dtf.md), [stateSpace](../../nflow_blocks/continuous/stateSpace.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
