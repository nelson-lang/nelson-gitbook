# dataStoreMemory


<p align="center">
<img src="dataStoreMemory.svg" width="72"/>
</p>
Declare une memoire scalaire nommee partagee dans tout le modele (valeur initiale).

## 📝 Syntaxe

- Type de bloc : dataStoreMemory

## 📥 Argument d'entrée

- ports d entree - Aucun port d entree (ce bloc n en a aucun).

## 📤 Argument de sortie

- ports de sortie - Aucun port de sortie (ce bloc n en a aucun).

## 📄 Description


Declare une memoire scalaire nommee partagee dans tout le modele (valeur initiale). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Utilitaires | 
| Type | <code>dataStoreMemory</code> | 
| Libelle | Data Store Memory | 

  

<b>Description</b> 

Declare une memoire scalaire nommee (<code>DataStoreName</code>) avec une <code>InitialValue</code>, sans aucun fil. La memoire est ecrite par des blocs <code>dataStoreWrite</code> et lue par des blocs <code>dataStoreRead</code> referencant le meme nom, permettant une communication a l'echelle du modele sans lignes de routage. Le magasin est une map par thread re-initialisee a chaque run par l'INIT de ce bloc. 

Natif seulement ; scalaire. Les lectures voient l'ecriture du pas precedent (latence d'un pas, comme un retard unitaire). 

<b>Ports</b> 

Ce bloc n'a aucun port d'entree. 

Ce bloc n'a aucun port de sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>DataStoreName</code> | A | 
| <code>InitialValue</code> | 0 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dataStoreMemory | 
| Famille | Utilitaires | 
| Taille rendue | 70 x 60 | 
| Phases | INIT | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT : store[DataStoreName] = InitialValue. Le bloc n'a pas de ports. 

<b>Capacites etendues</b> 

Execution native seulement (ce bloc n'est pas genere en code). 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/dataStore.cpp`


## 💡 Exemple

Declarer la memoire 'M', y ecrire une rampe et la relire avec une latence d'un pas.

```matlab
d.blocks={ struct('id','mem','type','dataStoreMemory','inputs',0,'outputs',0,'params',struct('DataStoreName','M','InitialValue',0)), struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','wr','type','dataStoreWrite','inputs',1,'outputs',0,'params',struct('DataStoreName','M')), struct('id','rd','type','dataStoreRead','inputs',0,'outputs',1,'params',struct('DataStoreName','M')), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','wr','fromIndex',0,'toIndex',0), struct('from','rd','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[dataStoreWrite](../../nflow_blocks/utility/dataStoreWrite.md), [dataStoreRead](../../nflow_blocks/utility/dataStoreRead.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
