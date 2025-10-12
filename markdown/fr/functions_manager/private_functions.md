# private functions

Fonctions privées.

## Description

<p>Les fonctions privées servent un objectif précieux lorsque vous souhaitez restreindre l'accessibilité d'une fonction.</p>

<p>Dans de nombreux cas, une seule fonction peut nécessiter l'accès à une ou plusieurs fonctions auxiliaires.</p>

<p>lorsqu'une fonction auxiliaire solitaire est utilisée par plusieurs fonctions, il devient nécessaire de déplacer ces fonctions auxiliaires vers un sous-répertoire dédié nommé "private", situé dans le répertoire où se trouvent les fonctions qui nécessitent l'accès à ces fonctions auxiliaires.</p>

<p>Pour illustrer ce concept, considérons une fonction, appelons-la function1, qui repose sur une fonction d'aide, function2, pour effectuer une partie substantielle de ses tâches, comme indiqué dans l'exemple ci-dessous.</p>

<p>Dans ce scénario, si le chemin vers function1 est directory/function1.m et function2 se trouve dans le répertoire directory/private/function2.m, alors function2 n'est accessible qu'aux fonctions dans directory, telles que function1.</p>

## Exemples

directory/function1.m

```matlab
function y = function1(x)
  y = function2(x)  +  1;
end

```

directory/private/function2.m

```matlab
function y = function2(x)
  y = 41;
end

```

## Voir aussi

[addpath](../functions_manager/addpath.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
