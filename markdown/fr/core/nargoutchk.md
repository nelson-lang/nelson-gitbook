# nargoutchk

Vérifie le nombre d'arguments de sortie.

## 📝 Syntaxe

- nargoutchk(minArgs, maxArgs)
- msg = nargoutchk(minArgs, maxArgs, numArgs)
- st = nargoutchk(minArgs, maxArgs, numArgs, 'struct')

## 📥 Argument d'entrée

- minArgs - nombre minimum de sorties acceptées (valeur entière scalaire).
- maxArgs - nombre maximum de sorties acceptées (valeur entière scalaire).
- numArgs - nombre de sorties de la fonction (valeur entière scalaire).

## 📤 Argument de sortie

- msg - une chaîne : message d'erreur.
- st - une structure avec le message d'erreur et l'identifiant.

## 📄 Description

Lance une erreur si le nombre d'arguments de sortie demandé n'est pas dans l'intervalle attendu.

## 💡 Exemple

Avec une fonction macro :

```matlab
nargoutchk(1, 2, 3)
nargoutchk(1, 2, 3, 'struct')
```

## 🔗 Voir aussi

[nargout](../core/nargin.md), [narginchk](../core/narginchk.md).

## 🕔 Historique

| Version | 📄 Description          |
| ------- | ----------------------- |
| 1.0.0   | version initiale        |
| 1.10.0  | nargoutchk(3, Inf) géré |

<!--
## 👤 Auteur

Allan CORNET
-->
