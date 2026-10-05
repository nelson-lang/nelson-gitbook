# stateSpace


<p align="center">
<img src="stateSpace.svg" width="192"/>
</p>
Implemente un modele d etat continu scalaire.

## 📝 Syntaxe

- Block type: stateSpace

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Implemente un modele d etat continu scalaire. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs continus | 
| Type | <code>stateSpace</code> | 
| Libelle | State-Space | 

  

<b>Description</b> 

Implemente un modele d etat continu scalaire. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=160, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>A</code> | 1 | 
| <code>B</code> | 1 | 
| <code>C</code> | 1 | 
| <code>D</code> | 0 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>A</code> 
- <code>B</code> 
- <code>C</code> 
- <code>D</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | stateSpace | 
| Famille | Blocs continus | 
| Taille graphique | 160 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface l etat et la sortie. 
- OUTPUT emet C\*x + D\*u. UPDATE avance x par integration d Euler x += dt\*(A\*x + B\*u). 

<b>Equation ou regle</b> 
$$\frac{dx}{dt} = A x + B u,\quad y = C x + D u$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/stateSpace.cpp`



## 🔗 Voir aussi

[tf](../../nflow_blocks/continuous/tf.md), [dstateSpace](../../nflow_blocks/discrete/dstateSpace.md), [integrator](../../nflow_blocks/continuous/integrator.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
