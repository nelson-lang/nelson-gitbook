# import

Importer des noms depuis des espaces de noms.

## 📝 Syntaxe

- import namespace.name
- import namespace.className.staticMethodName
- import namespace.\*
- import(namespace_name)
- L = import()

## 📥 Argument d'entrée

- namespace.name - un nom d'import pointé.
- namespace.\* - un import global d'espace de noms.
- namespace_name - un scalaire chaîne ou un vecteur de caractères contenant un nom d'import.

## 📤 Argument de sortie

- L - un tableau de cellules de vecteurs de caractères : imports courants dans l'ordre d'insertion.

## 📄 Description

<b>import</b> ajoute au scope courant des fonctions de package, des constructeurs de classes de package, des méthodes statiques de package ou des imports globaux d'espace de noms.

Les noms d'import dupliqués sont ignorés. Les imports déclarés dans une fonction ou un script s'appliquent à tout le corps de la fonction ou du script. Dans le scope de base, les imports restent actifs jusqu'à <b>clear import</b>.

## 💡 Exemple

```matlab
import nelson.classdefpkg.Options
L = import()
clear import

```

## 🔗 Voir aussi

[clear](../memory_manager/clear.md), [which](../functions_manager/which.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
