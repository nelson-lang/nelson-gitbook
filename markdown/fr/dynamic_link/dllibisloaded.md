# dllibisloaded

Vérifie si une bibliothèque partagée est chargée

## 📝 Syntaxe

- tf = dllibisloaded(libraryname)
- [tf, lib] = dllibisloaded(libraryname)

## 📥 Argument d'entrée

- libraryname - une chaîne : nom de la bibliothèque dynamique.

## 📤 Argument de sortie

- tf - un booléen : true si la bibliothèque est déjà chargée.
- lib - un handle dllib : bibliothèque déjà chargée.

## 📄 Description

<b>dllibisloaded</b> indique si une bibliothèque partagée est déjà chargée.

## 💡 Exemple

```matlab

		path_1 = modulepath('dynamic_link', 'builtin');
r = dllibisloaded(path_1)
lib1 = dlopen(path_1);
[r, lib2] = dllibisloaded(path_1)
isequal(lib1, lib2)


```

## 🔗 Voir aussi

[dlopen](../dynamic_link/dlopen.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
