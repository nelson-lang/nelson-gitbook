# qt_verbose

Afficher/masquer les messages de débogage Qt.

## Syntaxe

- r = qt_verbose()
- p = qt_verbose(logical)

## Argument d'entrée

- logical - a logical: true to show messages, false to hide.

## Argument de sortie

- r - logical: current value
- p - logical: previous value

## Description

<p>qt_verbose affiche ou masque les messages de débogage Qt.</p>

<p>Cette fonction est utile pour déboguer Qt et Qml.</p>

## Exemple

```matlab
h = qt_verbose()
```

## Voir aussi

[qml_loadfile](../qml_engine/qml_loadfile.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
