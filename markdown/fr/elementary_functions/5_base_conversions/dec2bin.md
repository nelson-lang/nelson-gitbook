# dec2bin

Convertit un nombre décimal en base 2.

## 📝 Syntaxe

- R = dec2bin(D)
- R = dec2bin(D, N)

## 📥 Argument d'entrée

- D - un entier non négatif inférieur à la valeur retournée par flintmax, ou une valeur négative d'un type entier signé (int8, int16, int32, int64).
- N - un entier : nombre de chiffres.

## 📤 Argument de sortie

- R - résultat de dec2bin : tableau de caractères.

## 📄 Description


<b>dec2bin</b> converts decimal number to base 2. 

Une valeur négative d'un type entier signé est convertie en utilisant la représentation en complément à deux sur la largeur native du type (8, 16, 32 ou 64 bits) ; ainsi <b>dec2bin(int8(-1))</b> retourne <b>'11111111'</b>.

## 💡 Exemples



```matlab
Y = dec2bin(2)
```


```matlab
Y = dec2bin(int8(-92), 8)
```


## 🔗 Voir aussi

[dec2base](../../elementary_functions/5_base_conversions/base2dec.md), [bin2dec](../../elementary_functions/5_base_conversions/bin2dec.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
