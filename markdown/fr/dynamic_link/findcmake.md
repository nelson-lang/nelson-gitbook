# findcmake

Trouver le chemin de CMake

## 📝 Syntaxe

- [status, cmake_path] = findcmake()

## 📤 Argument de sortie

- status - a logical.
- cmake_path - a string: path of CMake or ''.

## 📄 Description

Trouve le chemin de CMake.

CMake est utilisé en interne pour générer les makefiles permettant de construire des bibliothèques dynamiques à la volée.

## 💡 Exemple

```matlab
[status, cmake_path] = findcmake()
```

## 🔗 Voir aussi

[cmake](../dynamic_link/cmake.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
