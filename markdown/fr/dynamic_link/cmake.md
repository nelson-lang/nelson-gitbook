# cmake

Appeler l'outil CMake

## 📝 Syntaxe

- [status, message] = cmake(varargin)

## 📥 Argument d'entrée

- varargin - commande à envoyer à CMake

## 📤 Argument de sortie

- res - un booléen : true si la commande CMake réussit
- message - une chaîne : message généré par la commande CMake.

## 📄 Description


<b>cmake</b> est utilisé en interne pour générer les makefiles permettant de construire du code C/C++. 

<b>cmake</b> est utilisé par <b>dlgeneratemake</b>.


## 🔗 Voir aussi

[dlgeneratemake](../dynamic_link/dlgeneratemake.md), [dlmake](../dynamic_link/dlmake.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
