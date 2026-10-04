# nargchk

Valide le nombre d'arguments d'entrée.

## 📝 Syntaxe

- msg = nargchk(minArgs, maxArgs, n)
- msg = nargchk(minArgs, maxArgs, n, 'string')
- msgstruct = nargchk(minArgs, maxArgs, n, 'struct')

## 📥 Argument d'entrée

- minArgs - nombre minimum d'entrées acceptées (valeur entière scalaire).
- maxArgs - nombre maximum d'entrées acceptées (valeur entière scalaire).
- n - nombre d'entrées fournies à vérifier, généralement <b>nargin</b> (valeur entière scalaire).
- 'string' ou 'struct' - type de sortie : <b>'string'</b> (par défaut) renvoie un message de caractères, <b>'struct'</b> renvoie une structure d'erreur.

## 📤 Argument de sortie

- msg - un vecteur ligne de caractères contenant le message d'erreur, ou <b>''</b> (vide) si <b>n</b> est dans l'intervalle <b>[minArgs, maxArgs]</b>.
- msgstruct - une structure avec les champs <b>message</b> et <b>identifier</b> (une structure vide <b>1x0</b> si <b>n</b> est dans l'intervalle).

## 📄 Description

<b>nargchk</b> vérifie si le nombre d'arguments d'entrée <b>n</b> est dans l'intervalle <b>[minArgs, maxArgs]</b>.

Il renvoie le message <b>'Not enough input arguments.'</b> lorsque <b>n</b> est inférieur à <b>minArgs</b>, <b>'Too many input arguments.'</b> lorsque <b>n</b> est supérieur à <b>maxArgs</b>, et un résultat vide sinon.

Il est généralement utilisé sous la forme <b>error(nargchk(minArgs, maxArgs, nargin))</b> au début d'une fonction.

<b>nargchk</b> est obsolète et conservé pour la compatibilité avec le code existant. Utilisez plutôt <b>narginchk</b> dans le nouveau code.

## 💡 Exemples

Pas assez d'arguments d'entrée :

```matlab
msg = nargchk(2, 3, 1)
```

Trop d'arguments d'entrée :

```matlab
msg = nargchk(1, 2, 3)
```

Dans l'intervalle, renvoie un message vide :

```matlab
msg = nargchk(1, 3, 2)
```

## 🔗 Voir aussi

[narginchk](../core/narginchk.md), [nargoutchk](../core/nargoutchk.md), [nargin](../core/nargin.md), [error](../error_manager/error.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
