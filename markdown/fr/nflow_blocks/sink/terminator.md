# terminator


<p align="center">
<img src="terminator.svg" width="72"/>
</p>
Consomme un signal intentionnellement inutilise.

## 📝 Syntaxe

- Block type: terminator

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📄 Description


Consomme un signal intentionnellement inutilise. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs puits | 
| Type | <code>terminator</code> | 
| Libelle | Terminator | 

  

<b>Description</b> 

Consomme un signal intentionnellement inutilise. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=20 | 

 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

Aucun parametre de bloc n est declare dans le manifest. 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | terminator | 
| Famille | Blocs puits | 
| Taille graphique | 40 x 40 | 
| Phases | none | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Aucun calcul et aucun port de sortie. 
- Utilise pour rendre explicites les fins de signaux inutilisees. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/terminator.cpp`



## 🔗 Voir aussi

[display](../../nflow_blocks/sink/display.md), [scope](../../nflow_blocks/sink/scope.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
