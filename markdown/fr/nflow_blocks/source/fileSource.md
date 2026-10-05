# fileSource


<p align="center">
<img src="fileSource.svg" width="192"/>
</p>
Produit des valeurs depuis les tableaux precharges times et values.

## 📝 Syntaxe

- Block type: fileSource

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Produit des valeurs depuis les tableaux precharges times et values. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs sources | 
| Type | <code>fileSource</code> | 
| Libelle | File | 

  

<b>Description</b> 

Produit des valeurs depuis les tableaux precharges times et values. 

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
| <code>path</code> |  | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>path</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | fileSource | 
| Famille | Blocs sources | 
| Taille graphique | 80 x 80 | 
| Phases | OUTPUT | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT copie params.times et params.values numeriques dans l etat et remet l index a zero. 
- OUTPUT retourne 0 si les donnees sont vides; sinon il avance jusqu au dernier temps non superieur a t. 
- path est une metadonnee de configuration pour le chargement; le handler natif consomme les tableaux precharges. 

<b>Equation ou regle</b> 
$$y = values_{index(t)}$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/fileSource.cpp`



## 🔗 Voir aussi

[fileSink](../../nflow_blocks/sink/fileSink.md), [constant](../../nflow_blocks/source/constant.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
