# dataStoreRead


<p align="center">
<img src="dataStoreRead.svg" width="72"/>
</p>
Sort la valeur de la memoire de donnees nommee.

## 📝 Syntaxe

- Type de bloc : dataStoreRead

## 📥 Argument d'entrée

- ports d entree - Aucun port d entree (ce bloc n en a aucun).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Sort la valeur de la memoire de donnees nommee. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Utilitaires | 
| Type | <code>dataStoreRead</code> | 
| Libelle | Data Store Read | 

  

<b>Description</b> 

Sort la valeur courante de la memoire nommee <code>DataStoreName</code> (0 si le magasin n'a jamais ete declare ni ecrit). La lecture a lieu en phase OUTPUT, donc elle renvoie la valeur ecrite au pas precedent. Aucune entree, une sortie. Natif seulement ; scalaire. 

<b>Ports</b> 

Ce bloc n'a aucun port d'entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=70, y=30 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>DataStoreName</code> | A | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dataStoreRead | 
| Famille | Utilitaires | 
| Taille rendue | 70 x 60 | 
| Phases | OUTPUT | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- OUTPUT : out = store[DataStoreName] (0 si absent). 

<b>Capacites etendues</b> 

Execution native seulement (ce bloc n'est pas genere en code). 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/dataStore.cpp`


## 💡 Exemple

Voir l'exemple dataStoreMemory, qui relit 'M' vers un scope.

```matlab
% See the dataStoreMemory example for a complete Memory/Write/Read wiring.
```


## 🔗 Voir aussi

[dataStoreMemory](../../nflow_blocks/utility/dataStoreMemory.md), [dataStoreWrite](../../nflow_blocks/utility/dataStoreWrite.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
