# NFlow.addlibrarypath

Ajoute un répertoire de recherche de bibliothèques de blocs nflow.

## 📝 Syntaxe

- NFlow.addlibrarypath(folder)
- paths = NFlow.addlibrarypath(folder)

## 📥 Argument d'entrée

- folder - un répertoire contenant un ou plusieurs sous-dossiers de bibliothèque, chacun avec un <b>library.json</b> et sa bibliothèque native.

## 📤 Argument de sortie

- paths - la liste mise à jour des répertoires de recherche, un tableau de cellules de chaînes de caractères.

## 📄 Description


<b>NFlow.addlibrarypath</b> ajoute <b>folder</b> aux répertoires de recherche de bibliothèques de blocs nflow et le parcourt. Chaque sous-dossier contenant un <b>library.json</b> à côté de sa bibliothèque native est chargé, de sorte que ses blocs deviennent disponibles pour <b>sim</b>, la génération de code et l'éditeur sans redémarrer Nelson. 

Ajouter un répertoire déjà enregistré n'a aucun effet. Une erreur est levée lorsque <b>folder</b> n'existe pas.

## 💡 Exemple

Compile le plugin d'exemple cumprod et enregistre son dossier de bibliothèques.

```matlab
run([modulepath('nflow_gui'), '/examples/libraries/cumprod/builder.m']);
NFlow.addlibrarypath([modulepath('nflow_gui'), '/examples/libraries']);
NFlow.librarypaths()
```


## 🔗 Voir aussi

[NFlow.librarypaths](../nflow_engine/NFlow.librarypaths.md), [NFlow.rmlibrarypath](../nflow_engine/NFlow.rmlibrarypath.md), [sim](../nflow_engine/sim.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
