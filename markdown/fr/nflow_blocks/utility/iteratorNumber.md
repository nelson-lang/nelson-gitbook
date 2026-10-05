# iteratorNumber


<p align="center">
<img src="iteratorNumber.svg" width="72"/>
</p>
fournit l'indice d'itération courant dans un sous-système For/While Iterator

## 📝 Syntaxe

- Type de bloc : iteratorNumber

## 📥 Argument d'entrée

- ports d'entrée - 0 port(s) d'entrée déclaré(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie déclaré(s).

## 📄 Description
 

<b>Description</b> 

Placé dans un sous-système For Iterator ou While Iterator, ce bloc source fournit l'indice d'itération courant de la boucle englobante : 1 à la première passe, 2 à la deuxième, etc. En dehors d'un sous-système itérateur, il fournit 0. 

Cette valeur permet au corps de la boucle de dépendre de la passe en cours (par exemple pour construire une somme cumulée ou former une condition d'arrêt d'un While Iterator). 

<b>Sortie(s)</b> 

| Port | Rôle | Côté | 
| --- | --- | --- | 
| Port\_1 | Indice d'itération courant (base 1 ; 0 hors d'un corps itérateur). | droite | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | iteratorNumber | 
| Famille | Blocs utilitaires | 
| Phases | OUTPUT | 
| Génération de code | natif seulement (non généré) | 

 

Voir <b>sous-systèmes For / While Iterator</b> pour la sémantique complète. 

<b>Sources d'implémentation</b> 

**Manifeste:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Exécution:** `modules/nflow_blocks/src/cpp/routing/iterator.cpp`



## 🔗 Voir aussi

[iteratorCondition](../../nflow_blocks/utility/iteratorCondition.md), [subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
