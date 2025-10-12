# QObject_classname

Renvoie le nom de classe d'une poignée (handle) QObject.

## Syntaxe

- s = QObject_classname(h)

## Argument d'entrée

- h - une poignée (handle) QObject.

## Argument de sortie

- s - une chaîne : nom de la classe.

## Description

<p>Renvoie le nom de classe d'une poignée (handle) QObject.</p>

## Exemple

```matlab
h1 = QObject_root()
h1.className
QObject_classname(h1)
```

## Voir aussi

[QObject_set (set)](../qml_engine/QObject_set.md), [QObject_get (get)](../qml_engine/QObject_get.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
