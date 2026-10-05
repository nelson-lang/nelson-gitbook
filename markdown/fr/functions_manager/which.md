# which

Localise les fonctions et intégrées.

## 📝 Syntaxe

- which(function\_name)
- p = which(function\_name)
- c = which(function\_name, '-all')
- m = which(function\_name, '-module')

## 📥 Argument d'entrée

- function\_name - une chaîne : nom de fonction.

## 📤 Argument de sortie

- p - une chaîne : chemin de la fonction ou intégrée
- c - une cellule de chaînes : chemins de la fonction ou intégrée.
- m - une cellule de chaînes : nom des modules où la fonction ou intégrée est disponible.

## 📄 Description


<b>which</b> retourne le chemin d'une fonction ou d'une intégrée.

## 💡 Exemple



```matlab
which('cos')
p = which('cos')
c = which('cos', '-all')
m = which('cos', '-module')

```


## 🔗 Voir aussi

[what](../functions_manager/what.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
