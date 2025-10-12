# isglobal

Vérifie si une variable est globale.

## Syntaxe

- state = isglobal(variable_name)

## Argument d'entrée

- variable_name - une chaîne : nom de la variable.

## Argument de sortie

- state - un booléen : vrai si la variable est globale.

## Description

<p>
            isglobal renvoie vrai si variable_name a été déclarée comme variable globale, et faux sinon.</p>

## Exemple

```matlab
y = 3;
isglobal y
global b
b = 3
isglobal b
clear global b
isglobal b
```

## Voir aussi

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md), [global](../memory_manager/global.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
