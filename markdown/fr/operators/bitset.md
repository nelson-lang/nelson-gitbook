# bitset

Positionne un bit à une position donnée.

## 📝 Syntaxe

- r = bitset(A, pos)
- r = bitset(A, pos, val)

## 📥 Argument d'entrée

- A - un tableau d'entiers.
- pos - la position du bit (1 est le bit de poids faible).
- val - la valeur du bit, <b>0</b> ou <b>1</b> (par défaut <b>1</b>).

## 📤 Argument de sortie

- r - <b>A</b> avec le bit en position <b>pos</b> fixé à <b>val</b>.

## 📄 Description


<b>r = bitset(A, pos)</b> met à <b>1</b> le bit en position <b>pos</b> de <b>A</b>. 

<b>r = bitset(A, pos, val)</b> met ce bit à <b>val</b>.

## 💡 Exemple



```matlab
bitset(uint8(0), 3)
```


## 🔗 Voir aussi

[bitget](../operators/bitget.md), [bitand](../operators/bitand.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
