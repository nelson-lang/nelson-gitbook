# dataStoreWrite


<p align="center">
<img src="dataStoreWrite.svg" width="72"/>
</p>
Ecrit son entree dans la memoire de donnees nommee.

## 📝 Syntaxe

- Type de bloc : dataStoreWrite

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - Aucun port de sortie (ce bloc n en a aucun).

## 📄 Description


Ecrit son entree dans la memoire de donnees nommee. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Utilitaires | 
| Type | <code>dataStoreWrite</code> | 
| Libelle | Data Store Write | 

  

<b>Description</b> 

Ecrit la valeur d'entree dans la memoire nommee <code>DataStoreName</code> declaree par un bloc <code>dataStoreMemory</code> (une entree correspondante est creee s'il n'y en a pas). L'ecriture a lieu en phase UPDATE, donc un <code>dataStoreRead</code> du meme nom la voit au pas suivant. Une entree, aucune sortie. Natif seulement ; scalaire. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | gauche | x=0, y=30 | 

 

Ce bloc n'a aucun port de sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>DataStoreName</code> | A | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dataStoreWrite | 
| Famille | Utilitaires | 
| Taille rendue | 70 x 60 | 
| Phases | INIT, UPDATE | 
| Etat interne ou historique | oui | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- UPDATE : store[DataStoreName] = u. 

<b>Capacites etendues</b> 

Execution native seulement (ce bloc n'est pas genere en code). 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/dataStore.cpp`


## 💡 Exemple

Voir l'exemple dataStoreMemory, qui cable une rampe a travers un Write.

```matlab
% See the dataStoreMemory example for a complete Memory/Write/Read wiring.
```


## 🔗 Voir aussi

[dataStoreMemory](../../nflow_blocks/utility/dataStoreMemory.md), [dataStoreRead](../../nflow_blocks/utility/dataStoreRead.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
