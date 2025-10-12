# cmake

Appeler l'outil CMake

## Syntaxe

- [status, message] = cmake(varargin)

## Argument d'entrée

- varargin - commande à envoyer à CMake

## Argument de sortie

- res - un booléen : true si la commande CMake réussit
- message - une chaîne : message généré par la commande CMake.

## Description

<p>
        cmake est utilisé en interne pour générer les makefiles permettant de construire du code C/C++.</p>

<p>
            cmake est utilisé par dlgeneratemake.</p>

## Voir aussi

[dlgeneratemake](../dynamic_link/dlgeneratemake.md), [dlmake](../dynamic_link/dlmake.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
