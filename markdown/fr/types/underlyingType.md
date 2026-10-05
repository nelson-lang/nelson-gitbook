# underlyingType

Type sous-jacent d'un tableau

## 📝 Syntaxe

- t = underlyingType(X)

## 📥 Argument d'entrée

- X - tableau d'entrée.

## 📤 Argument de sortie

- t - nom de la classe sous-jacente de X, sous forme de vecteur de caractères.

## 📄 Description


<b>underlyingType</b> retourne le nom de la classe sous-jacente de X. Pour les tableaux ordinaires, c'est identique à class(X) ; pour une énumération construite sur un type fondamental, il retourne ce type fondamental.

## 💡 Exemple



```matlab
underlyingType(int32(5))
```


## 🔗 Voir aussi

[isa](../types/isa.md), [mustBeUnderlyingType](../validators/mustBeUnderlyingType.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
