# or


<p align="center">
<img src="or.svg" width="192"/>
</p>
Produit le OU logique de deux entrees.

## 📝 Syntaxe

- Block type: or

## 📥 Argument d'entrée

- input ports - 2 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Produit le OU logique de deux entrees. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs logiques | 
| Type | <code>or</code> | 
| Libelle | OR | 

  

<b>Description</b> 

Produit le OU logique de deux entrees. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=20 | 
| Port\_2 | Signal numerique lu par le bloc. | left | x=0, y=60 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=80, y=40 | 

 

<b>Parametres</b> 

Aucun parametre de bloc n est declare dans le manifest. 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | or | 
| Famille | Blocs logiques | 
| Taille graphique | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Traversee directe | oui | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc booleen algebrique. 
- La sortie est vraie lorsqu au moins une entree est vraie. 

<b>Equation ou regle</b> 
$$y = \operatorname{bool}(u_1) \lor \operatorname{bool}(u_2)$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/or.cpp`



## 🔗 Voir aussi

[and](../../nflow_blocks/logic/and.md), [xor](../../nflow_blocks/logic/xor.md), [not](../../nflow_blocks/logic/not.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
