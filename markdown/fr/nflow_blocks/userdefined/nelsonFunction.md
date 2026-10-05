# nelsonFunction


<p align="center">
<img src="nelsonFunction.svg" width="72"/>
</p>
Évalue une fonction Nelson à chaque pas de simulation.

## 📝 Syntaxe

- Type de bloc : nelsonFunction

## 📥 Argument d'entrée

- ports d'entrée - 1 port d'entrée (u, double scalaire ou vecteur). Une entrée non connectée vaut 0.

## 📤 Argument de sortie

- ports de sortie - 1 port de sortie (double scalaire ou vecteur).

## 📄 Description


Appelle l'interpréteur Nelson à chaque pas de simulation pour évaluer <code>Fcn</code> avec l'entrée <code>u</code> du bloc. <code>Fcn</code> est un nom de fonction (<code>sin</code>), une fonction anonyme (<code>@(u) 2*u</code>) ou une expression utilisant <code>u</code> (<code>atan2(u(1), u(2))</code>).  

<code>OutputDimensions</code> : -1 hérite de la largeur d'entrée (hypothèse élément par élément) ; donnez une valeur explicite quand la fonction change la largeur du signal. La fonction est sondée une fois à l'initialisation ; une largeur incohérente arrête la simulation avec un diagnostic clair, de même que toute erreur levée par la fonction. 

L'interpréteur étant invoqué à chaque pas, ce bloc est plus lent que les blocs natifs. Pour une expression purement mathématique, préférez le bloc <code>expression</code>, qui génère aussi du code. 

<b>Paramètres</b> 

| Paramètre | Valeur par défaut | 
| --- | --- | 
| <code>Fcn</code> | sin | 
| <code>OutputDimensions</code> | -1 | 
| <code>SampleTime</code> | -1 | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | nelsonFunction | 
| Famille | Blocs fonctions utilisateur | 
| Phases | INIT, ALGEBRAIC | 
| Transfert direct | oui | 
| Type de signal | double, scalaire ou vecteur | 
| Génération de code | non (rejet explicite ; remplacez par le bloc expression) | 

 

**Manifeste:** `modules/nflow_blocks/libraries/userdefined/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/userdefined/nelsonFunction.cpp`


## 💡 Exemple

Ouvrir la démo des blocs fonction utilisateur (Nelson Function + Expression)

```matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/Nelson_Function_Demo.nflow']);
```


## 🔗 Voir aussi

[expression](../../nflow_blocks/userdefined/expression.md), [fromWorkspace](../../nflow_blocks/source/fromWorkspace.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
