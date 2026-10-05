# tf


<p align="center">
<img src="tf.svg" width="192"/>
</p>
Implemente une approximation de fonction de transfert continue.

## 📝 Syntaxe

- Block type: tf

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Implemente une approximation de fonction de transfert continue. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs continus | 
| Type | <code>tf</code> | 
| Libelle | Transfer Fn | 

  

<b>Description</b> 

Implemente une approximation de fonction de transfert continue. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=85, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>num</code> | [3] | 
| <code>den</code> | [1, 3] | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>num</code> 
- <code>den</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | tf | 
| Famille | Blocs continus | 
| Taille graphique | 85 x 80 | 
| Phases | INIT, OUTPUT, ALGEBRAIC, UPDATE | 
| Traversee directe | oui | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT normalise les coefficients et efface les historiques. 
- OUTPUT emet la sortie directe/memorisee; ALGEBRAIC est present pour la resolution avec transmission directe. 
- UPDATE avance les historiques internes avec l entree et dt. 

<b>Equation ou regle</b> 
$$y \approx \frac{num(s)}{den(s)}\,u$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/tf.cpp`



## 🔗 Voir aussi

[stateSpace](../../nflow_blocks/continuous/stateSpace.md), [integrator](../../nflow_blocks/continuous/integrator.md), [dtf](../../nflow_blocks/discrete/dtf.md), [lpf](../../nflow_blocks/continuous/lpf.md), [hpf](../../nflow_blocks/continuous/hpf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
