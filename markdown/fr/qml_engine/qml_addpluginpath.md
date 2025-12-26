# qml_addpluginpath

Ajoute un chemin comme répertoire où le moteur QML recherche les plugins natifs.

## 📝 Syntaxe

- qml_addpluginpath(path)

## 📥 Argument d'entrée

- path - une chaîne : chemin valide.

## 📄 Description

<b>qml_addpluginpath</b> ajoute <b>path</b> comme répertoire où le moteur recherche les plugins natifs.

Par défaut, la liste ne contient que <b>.</b>. Le chemin nouvellement ajouté sera placé en tête de <b>qml_pluginpathlist</b>.

## 💡 Exemple

```matlab
qml_pluginpathlist()
qml_addpluginpath(tempdir)
qml_pluginpathlist()

```

## 🔗 Voir aussi

[qml_pluginpathlist](../qml_engine/qml_pluginpathlist.md), [qml_addimportpath](../qml_engine/qml_addimportpath.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
