# QObject_get

Récupère la valeur d'une propriété d'une poignée (handle) QObject.

## Syntaxe

- R = get(h, property_name)

## Argument d'entrée

- h - une poignée (handle) QObject.
- property_name - une chaîne : nom de propriété.

## Argument de sortie

- R - Le type de données de la valeur retournée dépend de la méthode invoquée.

## Description

<p>R = get(h, property_name) renvoie la valeur de la propriété demandée.</p>

## Exemple

```matlab
h = errordlg();
h.visible % or get(h, 'visible')
h.windowTitle % or get(h, 'windowTitle')
```

## Voir aussi

[QObject_set (set)](../qml_engine/QObject_set.md), [get](../handle/get.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
