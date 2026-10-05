# hpf


<p align="center">
<img src="hpf.svg" width="192"/>
</p>
Applique un filtre passe-haut du premier ordre.

## 📝 Syntaxe

- Block type: hpf

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Applique un filtre passe-haut du premier ordre. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs continus | 
| Type | <code>hpf</code> | 
| Libelle | HPF | 

  

<b>Description</b> 

Applique un filtre passe-haut du premier ordre. 

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
| <code>cutoff</code> | 1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>cutoff</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | hpf | 
| Famille | Blocs continus | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface la sortie memorisee et l entree brute precedente. 
- OUTPUT emet la sortie memorisee. UPDATE applique la mise a jour passe-haut discrete. 
- Si cutoff n est pas positif, la sortie est forcee a 0. 

<b>Equation ou regle</b> 
$$y_k = \alpha\,(y_{k-1} + u_k - u_{k-1})$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/hpf.cpp`



## 🔗 Voir aussi

[lpf](../../nflow_blocks/continuous/lpf.md), [derivative](../../nflow_blocks/continuous/derivative.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
