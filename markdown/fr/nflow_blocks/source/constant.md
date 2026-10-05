# constant


<p align="center">
<img src="constant.svg" width="192"/>
</p>
Produit une valeur numerique constante.

## 📝 Syntaxe

- Block type: constant

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Produit une valeur numerique constante. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs sources | 
| Type | <code>constant</code> | 
| Libelle | Constant | 

  

<b>Description</b> 

Produit une valeur numerique constante. 

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
| <code>value</code> | 1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>value</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | constant | 
| Famille | Blocs sources | 
| Taille graphique | 80 x 80 | 
| Phases | OUTPUT | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc OUTPUT sans entree. 
- value est resolu numeriquement et ecrit a chaque phase de sortie. 

<b>Equation ou regle</b> 
$$y = value$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/constant.cpp`



## 🔗 Voir aussi

[step](../../nflow_blocks/source/step.md), [ramp](../../nflow_blocks/source/ramp.md), [sine](../../nflow_blocks/source/sine.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
