# nargout

Nombre d'arguments de sortie d'une fonction.

## 📝 Syntaxe

- R = nargout()
- R = nargout(function\_name)
- R = nargout(function\_handle)

## 📥 Argument d'entrée

- function\_name - une chaîne : nom de la fonction
- function\_handle - un handle de fonction

## 📤 Argument de sortie

- R - une valeur entière : nombre d'arguments de sortie

## 📄 Description


Retourne le nombre d'arguments de sortie demandés par l'appelant d'une fonction.

## 💡 Exemples

With an macro function:

```matlab
nargout('cellstr')
```
With an builtin function:

```matlab
nargout('cos')
```


## 🔗 Voir aussi

[nargin](../core/nargin.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
