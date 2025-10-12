# QObject_set

Définit la valeur d'une propriété d'une poignée (handle) QObject (set).

## Syntaxe

- R = set(h, property_name, value)

## Argument d'entrée

- h - une poignée (handle) QObject.
- property_name - une chaîne : nom de propriété.
- value - une variable.

## Argument de sortie

- R - Propriétés modifiables par l'utilisateur et valeurs possibles pour l'objet identifié par h.

## Description

<p>Cette routine peut être utilisée pour modifier la valeur d'une propriété spécifiée d'un objet QObject.</p>

## Exemple

```matlab
h = errordlg()
h.visible = false; % or set(h, 'visible', false)
h.windowTitle = 'new title' % or set(h, 'windowTitle', 'new title')
h.visible = true;

```

## Voir aussi

[set](../handle/set.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
