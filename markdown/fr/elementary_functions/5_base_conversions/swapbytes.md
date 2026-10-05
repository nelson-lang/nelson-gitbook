# swapbytes

Inverse l'ordre des octets.

## 📝 Syntaxe

- R = swapbytes(M)

## 📥 Argument d'entrée

- M - une variable : matrice pleine réelle entière, single ou double.

## 📤 Argument de sortie

- R - résultat de swapbytes : ordre des octets de M inversé.

## 📄 Description


<b>swapbytes</b> inverse l'ordre des octets. 

convertisseur d'endianness (petit-boutiste / gros-boutiste)

## 💡 Exemple



```matlab
X = uint16([65535 128; 1 0])
Y = swapbytes(X)
```


## 🔗 Voir aussi

[num2bin](../../elementary_functions/5_base_conversions/num2bin.md), [bin2num](../../elementary_functions/5_base_conversions/bin2num.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
