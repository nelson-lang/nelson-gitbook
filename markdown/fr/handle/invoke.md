# invoke

Invoque une méthode sur un objet handle.

## Syntaxe

- R = invoke(h)
- R = invoke(h, 'methodname')
- R = invoke(h, 'methodname', arg1, arg2, ... , argN)

## Argument d'entrée

- h - un objet handle.

## Argument de sortie

- R - Le type de donnée de la valeur renvoyée dépend de la méthode invoquée.

## Description

<p>invoke(h) renvoie une structure contenant la liste de toutes les méthodes appelables.</p>

<p>R = invoke(h, 'methodname') appelle la méthode spécifiée par methodname et renvoie une valeur de sortie.</p>

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
