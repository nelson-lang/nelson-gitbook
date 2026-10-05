# ddelay


<p align="center">
<img src="ddelay.svg" width="72"/>
</p>
Retarde un signal echantillonne d un nombre entier de pas.

## 📝 Syntaxe

- Block type: ddelay

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Retarde un signal echantillonne d un nombre entier de pas. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs discrets | 
| Type | <code>ddelay</code> | 
| Libelle | Discrete Delay | 

  

<b>Description</b> 

Retarde un signal echantillonne d un nombre entier de pas. 

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
| <code>steps</code> | 1 | 
| <code>ts</code> | 0.1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>steps</code> 
- <code>ts</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | ddelay | 
| Famille | Blocs discrets | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT alloue une file de taille issue de steps. 
- OUTPUT emet la valeur la plus ancienne. UPDATE echantillonne a ts et avance la file. 
- steps vaut au moins 1 et ts au moins 0.001. 

<b>Equation ou regle</b> 
$$y_k = u_{k-steps}$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/ddelay.cpp`



## 🔗 Voir aussi

[delay](../../nflow_blocks/continuous/delay.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md), [zoh](../../nflow_blocks/discrete/zoh.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
