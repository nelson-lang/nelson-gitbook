# functionCallGenerator

Pilote un sous-système function-call un nombre fixe de fois par pas.

## 📝 Syntaxe

- Type de bloc : functionCallGenerator

## 📥 Argument d'entrée

- ports d'entrée - Aucun.

## 📤 Argument de sortie

- ports de sortie - 1 sortie événement : à câbler sur le port de contrôle d'un sous-système function-call.

## 📄 Description


Pilote un sous-système function-call un nombre fixe de fois par pas. 

À chaque pas majeur, le générateur invoque chaque sous-système function-call câblé sur sa sortie événement, en l'exécutant <code>NumberOfIterations</code> fois (sa passe ALGEBRAIC suivie d'un UPDATE interne immédiat). C'est une exécution pilotée par l'appelant : le callee s'exécute à la demande, hors de l'ordonnancement topologique normal, au lieu d'une fois par pas comme un bloc ordinaire. Un sous-système function-call est un sous-système dont le port de contrôle est de type <code>functionCall</code>. 

Les sous-systèmes function-call nécessitent le moteur par défaut (discret / pas fixe) ; la sélection d'un solveur continu explicite est rejetée dans cette version. 

<b>Paramètres</b> 

| Paramètre | Valeur par défaut | 
| --- | --- | 
| <code>NumberOfIterations</code> | 1 | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | functionCallGenerator | 
| Famille | Blocs utilitaires | 
| Phases | ALGEBRAIC | 

 

<b>Capacites etendues</b> 

Generation de code : prise en charge pour C et Rust.


## 🔗 Voir aussi

[subsystem](../../nflow_blocks/utility/subsystem.md), [merge](../../nflow_blocks/utility/merge.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
