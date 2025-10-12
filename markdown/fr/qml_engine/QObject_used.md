# QObject_used

Renvoie la liste des poignées (handles) QObject actuellement utilisées.

## Syntaxe

- r = QObject_used()

## Argument de sortie

- h - un vecteur de poignées (handles) QObject.

## Description

<p>Renvoie la liste des poignées (handles) QObject actuellement utilisées.</p>

## Exemple

```matlab
h1 = errordlg()
h2 = errordlg()
h3 = errordlg()
used = QObject_used()delete(used)
used = QObject_used()
delete(used)
used = QObject_used()
```

## Voir aussi

[QObject_set (set)](../qml_engine/QObject_set.md), [QObject_get (get)](../qml_engine/QObject_get.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
