# nargin

Nombre d'arguments d'entrée d'une fonction.

## 📝 Syntaxe

- R = nargin()
- R = nargin(function_name)
- R = nargin(function_handle)

## 📥 Argument d'entrée

- function_name - une chaîne : nom de la fonction
- function_handle - un handle de fonction

## 📤 Argument de sortie

- R - une valeur entière : nombre d'arguments d'entrée

## 📄 Description

Retourne le nombre d'arguments d'entrée fournis à la fonction appelée.

## 💡 Exemples

With an macro function:

```matlab
nargin('getfield')
```

With an builtin function:

```matlab
nargin('cos')
```

## 🔗 Voir aussi

[nargout](../core/nargout.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
