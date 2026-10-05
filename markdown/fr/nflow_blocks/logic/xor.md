# xor


<p align="center">
<img src="xor.svg" width="192"/>
</p>
Produit le OU exclusif logique de deux entrees.

## 📝 Syntaxe

- Block type: xor

## 📥 Argument d'entrée

- input ports - 2 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Produit le OU exclusif logique de deux entrees. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs logiques | 
| Type | <code>xor</code> | 
| Libelle | XOR | 

  

<b>Description</b> 

Produit le OU exclusif logique de deux entrees. 

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
| Type de bloc | xor | 
| Famille | Blocs logiques | 
| Taille graphique | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Traversee directe | oui | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc booleen algebrique. 
- La sortie est vraie lorsqu exactement une entree est vraie. 

<b>Equation ou regle</b> 
$$y = \operatorname{xor}(\operatorname{bool}(u_1),\operatorname{bool}(u_2))$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/xor.cpp`



## 🔗 Voir aussi

[and](../../nflow_blocks/logic/and.md), [or](../../nflow_blocks/logic/or.md), [not](../../nflow_blocks/logic/not.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
