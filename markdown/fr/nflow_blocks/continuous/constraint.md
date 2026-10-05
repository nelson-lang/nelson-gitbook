# constraint


<p align="center">
<img src="constraint.svg" width="72"/>
</p>
Etat algebrique (differentiel-algebrique) resolu par le solveur DAE.

## 📝 Syntaxe

- Type de bloc : constraint

## 📥 Argument d'entrée

- ports d entree - 1 port d entree : le residu de contrainte g.

## 📤 Argument de sortie

- ports de sortie - 1 port de sortie : l etat algebrique z.

## 📄 Description


Etat algebrique (differentiel-algebrique) resolu par le solveur DAE. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs continus | 
| Type | <code>constraint</code> | 
| Etiquette | Constraint | 

  

<b>Description</b> 

Le bloc Constraint introduit un etat <b>algebrique</b> <b>z</b> (sa sortie). Il n a pas de derivee propre ; le solveur DAE ajuste <b>z</b> pour annuler le signal d entree <b>g</b>. Cablez le diagramme pour que l entree calcule le residu de contrainte <b>g(z, x) = 0</b> (typiquement en utilisant la sortie z du bloc), et le solveur maintient le systeme sur cette variete. 

Ce bloc n a de sens que sous le solveur differentiel-algebrique : mettez le <code>solver</code> du modele a <code>dae</code>. Sous un autre solveur, ou en code C / Rust genere, il est rejete avec un message clair (pas de lowering explicite pour un systeme differentiel-algebrique). 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Le residu de contrainte g, annule par le solveur. | gauche | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | L etat algebrique z determine par le solveur. | droite | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>InitialCondition</code> | 0 | 

 

La condition initiale n est qu une estimation de depart pour z ; le solveur la raffine vers une valeur coherente avec IDACalcIC. 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | constraint | 
| Famille | Blocs continus | 
| Taille rendue | 80 x 80 | 
| Phases | INIT, OUTPUT, DERIVATIVE | 
| Etat interne ou historique | un etat algebrique (masse-0) | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Equation ou regle</b> 
$$0 = g(z, x),\qquad y = z$$
 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/constraint.cpp`



## 🔗 Voir aussi

[integrator](../../nflow_blocks/continuous/integrator.md), [stateSpace](../../nflow_blocks/continuous/stateSpace.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
