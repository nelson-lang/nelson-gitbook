# clearfun

Efface une fonction intégrée.

## 📝 Syntaxe

- l = clearfun(function\_name)
- l = clearfun(function\_handle)

## 📥 Argument d'entrée

- function\_name - une chaîne : nom de fonction.
- function\_handle - un handle de fonction.

## 📤 Argument de sortie

- l - un booléen

## 📄 Description


<b>clearfun</b> efface une fonction intégrée.

## 💡 Exemple



```matlab
cos(3)
a = clearfun('cos')
cos(3)

sin(3)
b = clearfun(str2func('sin'))
sin(3)

```


## 🔗 Voir aussi

[feval](../functions_manager/feval.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
