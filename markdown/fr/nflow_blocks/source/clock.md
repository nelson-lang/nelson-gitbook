# clock


<p align="center">
<img src="clock.svg" width="192"/>
</p>
Produit le temps courant de simulation.

## 📝 Syntaxe

- Block type: clock

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Produit le temps courant de simulation. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs sources | 
| Type | <code>clock</code> | 
| Libelle | Clock | 

  

<b>Description</b> 

Produit le temps courant de simulation. 

<b>Ports</b> 

<b>Entree(s)</b> 

Ce bloc ne declare aucune entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>displayTime</code> | false | 
| <code>decimation</code> | 10 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>displayTime</code> 
- <code>decimation</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | clock | 
| Famille | Blocs sources | 
| Taille graphique | 80 x 80 | 
| Phases | OUTPUT | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc OUTPUT sans entree. 
- Ecrit directement ctx.t sur la sortie. 
- displayTime et decimation ne concernent que l affichage de l icone. 

<b>Equation ou regle</b> 
$$y = t$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/clock.cpp`



## 🔗 Voir aussi

[ramp](../../nflow_blocks/source/ramp.md), [sine](../../nflow_blocks/source/sine.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
