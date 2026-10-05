# labelSource


<p align="center">
<img src="labelSource.svg" width="72"/>
</p>
Lit un signal depuis un labelSink correspondant.

## 📝 Syntaxe

- Block type: labelSource

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Lit un signal depuis un labelSink correspondant. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs sources | 
| Type | <code>labelSource</code> | 
| Libelle | Label | 

  

<b>Description</b> 

Lit un signal depuis un labelSink correspondant. 

<b>Ports</b> 

<b>Entree(s)</b> 

Ce bloc ne declare aucune entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=40, y=20 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>name</code> | x | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>name</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | labelSource | 
| Famille | Blocs sources | 
| Taille graphique | 40 x 40 | 
| Phases | OUTPUT | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc OUTPUT. 
- Recherche un labelSink de meme name et transmet l entree de ce recepteur lorsqu elle existe. 
- Si le nom ou la connexion manque, la sortie n est pas modifiee. 

<b>Equation ou regle</b> 
$$y = \mathrm{labeled\ signal}$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/labelSource.cpp`



## 🔗 Voir aussi

[labelSink](../../nflow_blocks/sink/labelSink.md), [constant](../../nflow_blocks/source/constant.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
