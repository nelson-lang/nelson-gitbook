# derivative


<p align="center">
<img src="derivative.svg" width="192"/>
</p>
Estime la derivee temporelle d une entree.

## 📝 Syntaxe

- Block type: derivative

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Estime la derivee temporelle d une entree. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs continus | 
| Type | <code>derivative</code> | 
| Libelle | Derivative | 

  

<b>Description</b> 

Estime la derivee temporelle d une entree. 

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

Aucun parametre de bloc n est declare dans le manifest. 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | derivative | 
| Famille | Blocs continus | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface l entree precedente et la sortie derivee. 
- OUTPUT emet la derivee memorisee. UPDATE calcule (u - precedent) / dt et stocke u. 
- Si dt n est pas positif, la mise a jour utilise 0. 

<b>Equation ou regle</b> 
$$y_k = \frac{u_k - u_{k-1}}{dt}$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/derivative.cpp`



## 🔗 Voir aussi

[integrator](../../nflow_blocks/continuous/integrator.md), [hpf](../../nflow_blocks/continuous/hpf.md), [lpf](../../nflow_blocks/continuous/lpf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
