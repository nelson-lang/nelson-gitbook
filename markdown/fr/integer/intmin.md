# intmin

Renvoie le plus petit entier pouvant être représenté pour un type entier.

## 📝 Syntaxe

- imin = intmin()
- imin = intmin(classname)

## 📥 Argument d'entrée

- classname - une chaîne : par défaut : int32

## 📤 Argument de sortie

- imin - le plus petit entier

## 📄 Description

<b>imin = intmin(classname)</b> le plus petit entier pouvant être représenté pour un type entier.

Les valeurs prises en charge pour la chaîne <b>classname</b> sont :

'int8'

'uint8'

'int16'

'uint16'

'int32'

'uint32'

'int64'

'uint64'

## 💡 Exemples

```matlab
A = intmin('int64')
res = class(A)
```

```matlab
A = intmin('uint32')
res = class(C)
```

## 🔗 Voir aussi

[intmax](../integer/intmax.md), [class](../types/class.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
