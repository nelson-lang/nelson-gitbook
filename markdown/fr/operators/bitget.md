# bitget

Retourne des bits selectionnes.

## 📝 Syntaxe

- C = bitget(A, bit)
- C = bitget(A, bit, assumedtype)

## 📥 Argument d'entrée

- A - Tableau entier, ou tableau double avec valeurs entieres positives.
- bit - Position de bit entiere positive.
- assumedtype - Nom de type entier utilise pour une entree double.

## 📤 Argument de sortie

- C - Tableau contenant des valeurs zero ou un.

## 📄 Description

<b>C = bitget(A, bit)</b> retourne la valeur du bit selectionne pour chaque element de <b>A</b>.

## 💡 Exemple

```matlab
R = bitget(uint8([1 2 3]), 1)
```

## 🔗 Voir aussi

[bitand](../operators/bitand.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
