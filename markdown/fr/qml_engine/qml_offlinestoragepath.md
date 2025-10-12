# qml_offlinestoragepath

Obtient la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.

## Syntaxe

- p = qml_offlinestoragepath()

## Argument d'entrée

- path_data - une chaîne

## Argument de sortie

- p - une chaîne : chemin.

## Description

<p>Obtient la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.</p>

## Exemple

```matlab
qml_offlinestoragepath()
qml_setofflinestoragepath(tmpdir())
qml_offlinestoragepath()
```

## Voir aussi

[qml_setofflinestoragepath](../qml_engine/qml_setofflinestoragepath.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
