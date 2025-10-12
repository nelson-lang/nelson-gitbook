# qml_addimportpath

Ajoute un chemin comme répertoire où le moteur QML recherche les modules installés.

## Syntaxe

- qml_addimportpath(path)

## Argument d'entrée

- path - une chaîne : chemin valide.

## Description

<p>
        qml_addimportpath ajoute path comme répertoire où le moteur recherche les modules installés dans une structure de répertoires basée sur des URL.</p>

<p>Le chemin nouvellement ajouté sera placé en tête de qml_importpathlist.</p>

## Exemple

```matlab
qml_importpathlist()
qml_addimportpath(tempdir)
qml_importpathlist()

```

## Voir aussi

[qml_importpathlist](../qml_engine/qml_importpathlist.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
