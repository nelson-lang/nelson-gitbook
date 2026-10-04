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

Sans argument d'entrée, <b>nargin</b> retourne le nombre d'arguments d'entrée utilisés pour appeler la fonction en cours d'exécution.

Avec un nom de fonction ou un handle de fonction, <b>nargin</b>retourne le nombre d'arguments d'entrée déclarés par cette fonction.

Si le dernier argument d'entrée déclaré est <b>varargin</b>, la valeur retournée est négative. Sa valeur absolue est le nombre total d'arguments d'entrée déclarés, <b>varargin</b> inclus. Par exemple, pour une fonction déclarée sous la forme <b>f(a, b, varargin)</b>, <b>nargin('f')</b> retourne <b>-3</b>.

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
