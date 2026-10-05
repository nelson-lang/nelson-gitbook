# qml\_addimportpath

Ajoute un chemin comme répertoire où le moteur QML recherche les modules installés.

## 📝 Syntaxe

- qml\_addimportpath(path)

## 📥 Argument d'entrée

- path - une chaîne : chemin valide.

## 📄 Description


<b>qml\_addimportpath</b> ajoute <b>path</b> comme répertoire où le moteur recherche les modules installés dans une structure de répertoires basée sur des URL. 

Le chemin nouvellement ajouté sera placé en tête de <b>qml\_importpathlist</b>.

## 💡 Exemple



```matlab
qml_importpathlist()
qml_addimportpath(tempdir)
qml_importpathlist()

```


## 🔗 Voir aussi

[qml_importpathlist](../qml_engine/qml_importpathlist.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
