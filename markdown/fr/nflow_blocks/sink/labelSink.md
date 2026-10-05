# labelSink


<p align="center">
<img src="labelSink.svg" width="72"/>
</p>
Nomme un signal d entree pour le routage par etiquette.

## 📝 Syntaxe

- Block type: labelSink

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📄 Description


Nomme un signal d entree pour le routage par etiquette. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs puits | 
| Type | <code>labelSink</code> | 
| Libelle | Label Sink | 

  

<b>Description</b> 

Nomme un signal d entree pour le routage par etiquette. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=20 | 

 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>name</code> | x | 
| <code>showNode</code> | true | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>name</code> 
- <code>showNode</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | labelSink | 
| Famille | Blocs puits | 
| Taille graphique | 40 x 40 | 
| Phases | none | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Le handler n effectue aucun calcul numerique. 
- L ordonnancement de sous-systeme indexe les labelSink par name afin que les labelSource correspondants lisent leur entree. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/labelSink.cpp`



## 🔗 Voir aussi

[labelSource](../../nflow_blocks/source/labelSource.md), [display](../../nflow_blocks/sink/display.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
