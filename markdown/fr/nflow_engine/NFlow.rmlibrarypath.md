# NFlow.rmlibrarypath

Retire un répertoire de recherche de bibliothèques de blocs nflow.

## 📝 Syntaxe

- NFlow.rmlibrarypath(folder)
- paths = NFlow.rmlibrarypath(folder)

## 📥 Argument d'entrée

- folder - un répertoire précédemment ajouté avec <b>NFlow.addlibrarypath</b>.

## 📤 Argument de sortie

- paths - la liste mise à jour des répertoires de recherche, un tableau de cellules de chaînes de caractères.

## 📄 Description


<b>NFlow.rmlibrarypath</b> retire <b>folder</b> des répertoires de recherche de bibliothèques de blocs nflow et parcourt de nouveau les répertoires restants. Retirer un répertoire non enregistré n'a aucun effet.

## 💡 Exemple

Enregistre puis retire un dossier de bibliothèques.

```matlab
folder = [modulepath('nflow_gui'), '/examples/libraries'];
NFlow.addlibrarypath(folder);
NFlow.rmlibrarypath(folder)
```


## 🔗 Voir aussi

[NFlow.addlibrarypath](../nflow_engine/NFlow.addlibrarypath.md), [NFlow.librarypaths](../nflow_engine/NFlow.librarypaths.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
