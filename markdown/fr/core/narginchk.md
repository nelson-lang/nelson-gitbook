# narginchk

Vérifie le nombre d'arguments d'entrée.

## 📝 Syntaxe

- narginchk(minArgs, maxArgs)

## 📥 Argument d'entrée

- minArgs - nombre minimum d'entrées acceptées (valeur entière scalaire).
- maxArgs - nombre maximum d'entrées acceptées (valeur entière scalaire).

## 📄 Description

Lance une erreur si le nombre d'arguments d'entrée n'est pas dans l'intervalle attendu.

## 💡 Exemple

Avec une fonction macro :

```matlab
narginchk(1, 2)
```

## 🔗 Voir aussi

[nargin](../core/nargin.md), [nargoutchk](../core/nargoutchk.md).

## 🕔 Historique

| Version | 📄 Description         |
| ------- | ---------------------- |
| 1.0.0   | version initiale       |
| 1.10.0  | narginchk(3, Inf) géré |

## 👤 Auteur

Allan CORNET
