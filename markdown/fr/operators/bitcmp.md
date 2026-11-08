# bitcmp

Complément bit à bit.

## 📝 Syntaxe

- r = bitcmp(A)
- r = bitcmp(A, assumedtype)

## 📥 Argument d'entrée

- A - un tableau d'entiers, ou un double de valeurs entières positives.
- assumedtype - un nom de classe entière pour interpréter un <b>A</b> double.

## 📤 Argument de sortie

- r - le complément bit à bit de <b>A</b>.

## 📄 Description


<b>r = bitcmp(A)</b> renvoie le complément bit à bit de <b>A</b>, la largeur étant donnée par la classe entière de <b>A</b>. 

Lorsque <b>A</b> est un double, fournissez <b>assumedtype</b> (par exemple <b>'uint8'</b>) pour fixer la largeur en bits ; le résultat reste double.

## 💡 Exemple



```matlab
bitcmp(uint8(5))
```


## 🔗 Voir aussi

[bitand](../operators/bitand.md), [bitor](../operators/bitor.md), [bitxor](../operators/bitxor.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
