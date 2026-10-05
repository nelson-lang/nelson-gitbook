# iteratorCondition


<p align="center">
<img src="iteratorCondition.svg" width="72"/>
</p>
porte le prédicat de continuation d'un sous-système While Iterator

## 📝 Syntaxe

- Type de bloc : iteratorCondition

## 📥 Argument d'entrée

- ports d'entrée - 1 port(s) d'entrée déclaré(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie déclaré(s).

## 📄 Description
 

<b>Description</b> 

Placé dans un sous-système While Iterator, ce bloc désigne le signal booléen qui décide si la boucle recommence. Après chaque itération, le moteur lit son entrée : une valeur non nulle poursuit la boucle, une valeur nulle l'arrête (do-while : le corps s'exécute toujours au moins une fois, la condition étant évaluée après chaque passe). La boucle est aussi bornée par le garde-fou <code>MaxIterations</code> du sous-système. 

L'entrée est recopiée sur la sortie pour permettre à ce même signal d'alimenter un scope ou une sonde. Si aucun bloc iteratorCondition n'est présent, ou si son entrée n'est pas connectée, la boucle While s'exécute jusqu'au plafond. 

<b>Entrée(s)</b> 

| Port | Rôle | Côté | 
| --- | --- | --- | 
| Port\_1 | Prédicat de continuation : non nul poursuit, nul arrête. | gauche | 

 

<b>Sortie(s)</b> 

| Port | Rôle | Côté | 
| --- | --- | --- | 
| Port\_1 | Recopie de l'entrée condition (pour sondage). | droite | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | iteratorCondition | 
| Famille | Blocs utilitaires | 
| Phases | ALGEBRAIC | 
| Génération de code | natif seulement (non généré) | 

 

Voir <b>sous-systèmes For / While Iterator</b> pour la sémantique complète. 

<b>Sources d'implémentation</b> 

**Manifeste:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Exécution:** `modules/nflow_blocks/src/cpp/routing/iterator.cpp`



## 🔗 Voir aussi

[iteratorNumber](../../nflow_blocks/utility/iteratorNumber.md), [subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
