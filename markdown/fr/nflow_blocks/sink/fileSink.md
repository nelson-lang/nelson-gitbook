# fileSink


<p align="center">
<img src="fileSink.svg" width="72"/>
</p>
Represente un recepteur de sortie fichier.

## 📝 Syntaxe

- Block type: fileSink

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📄 Description


Represente un recepteur de sortie fichier. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs puits | 
| Type | <code>fileSink</code> | 
| Libelle | Output File | 

  

<b>Description</b> 

Represente un recepteur de sortie fichier. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=40 | 

 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>path</code> | output.csv | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>path</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | fileSink | 
| Famille | Blocs puits | 
| Taille graphique | 80 x 80 | 
| Phases | none | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT : tronque le fichier CSV (parametre FileName) et ecrit l en-tete "t,<id>" (une colonne par element pour un signal vectoriel). 
- AFTER\_STEP : ajoute une ligne par echantillon (temps puis valeurs) ; le fichier est ouvert et ferme a chaque phase, une execution annulee garde les lignes deja ecrites. 
- Le code genere ne fait aucune E/S fichier : le bloc devient une colonne de sortie du CSV du programme genere (etiquetee avec l identifiant du bloc). 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/fileSink.cpp`



## 🔗 Voir aussi

[scope](../../nflow_blocks/sink/scope.md), [display](../../nflow_blocks/sink/display.md), [fileSource](../../nflow_blocks/source/fileSource.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
