# qml_addpluginpath

Ajoute un chemin comme répertoire où le moteur QML recherche les plugins natifs.

## Syntaxe

- qml_addpluginpath(path)

## Argument d'entrée

- path - une chaîne : chemin valide.

## Description

<p>
        qml_addpluginpath ajoute path comme répertoire où le moteur recherche les plugins natifs.</p>

<p>Par défaut, la liste ne contient que .. Le chemin nouvellement ajouté sera placé en tête de qml_pluginpathlist.</p>

## Exemple

```matlab
qml_pluginpathlist()
qml_addpluginpath(tempdir)
qml_pluginpathlist()

```

## Voir aussi

[qml_pluginpathlist](../qml_engine/qml_pluginpathlist.md), [qml_addimportpath](../qml_engine/qml_addimportpath.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
