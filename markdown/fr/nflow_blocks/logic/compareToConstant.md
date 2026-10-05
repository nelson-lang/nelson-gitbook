# compareToConstant


<p align="center">
<img src="compareToConstant.svg" width="192"/>
</p>
Compare une entree a un seuil constant.

## 📝 Syntaxe

- Block type: compareToConstant

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Compare une entree a un seuil constant. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs logiques | 
| Type | <code>compareToConstant</code> | 
| Libelle | Compare Const | 

  

<b>Description</b> 

Compare une entree a un seuil constant. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=100, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>operator</code> | ge | 
| <code>threshold</code> | 0 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>operator</code> 
- <code>threshold</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | compareToConstant | 
| Famille | Blocs logiques | 
| Taille graphique | 100 x 80 | 
| Phases | ALGEBRAIC | 
| Traversee directe | oui | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc algebrique. Le premier port d entree est requis. 
- Les operateurs pris en charge sont ge, gt et ne; les valeurs inconnues reviennent a ge. 
- threshold est resolu numeriquement. 

<b>Equation ou regle</b> 
$$y = \operatorname{compare}(u,\,threshold,\,operator)$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/compareToConstant.cpp`



## 🔗 Voir aussi

[compareToZero](../../nflow_blocks/logic/compareToZero.md), [relationalOperator](../../nflow_blocks/logic/relationalOperator.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
