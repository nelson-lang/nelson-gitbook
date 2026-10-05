# display


<p align="center">
<img src="display.svg" width="192"/>
</p>
Stocke la derniere valeur d entree pour affichage.

## 📝 Syntaxe

- Block type: display

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📄 Description


Stocke la derniere valeur d entree pour affichage. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs puits | 
| Type | <code>display</code> | 
| Libelle | Display | 

  

<b>Description</b> 

Stocke la derniere valeur d entree pour affichage. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=30 | 

 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>label</code> | Display | 
| <code>format</code> | short | 
| <code>decimation</code> | 1 | 
| <code>floatingDisplay</code> | false | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>label</code> 
- <code>format</code> 
- <code>decimation</code> 
- <code>floatingDisplay</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | display | 
| Famille | Blocs puits | 
| Taille graphique | 120 x 60 | 
| Phases | INIT, AFTER\_STEP | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface le scalaire memorise. 
- AFTER\_STEP echantillonne l entree 1 selon decimation; les valeurs sous 1 valent 1. 
- Le bloc n a pas de port de sortie. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/display.cpp`



## 🔗 Voir aussi

[scope](../../nflow_blocks/sink/scope.md), [terminator](../../nflow_blocks/sink/terminator.md), [fileSink](../../nflow_blocks/sink/fileSink.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
