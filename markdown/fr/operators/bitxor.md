# bitxor

Opération XOR bit à bit

## Syntaxe

- C = bitxor(A, B)
- C = bitxor(A, B, assumedtype)

## Argument d'entrée

- A - variable : double, logical, integer
- B - variable : double, logical, integer
- assumedtype - 'int64', 'int32', 'int16', 'int8', 'uint64', 'uint32', 'uint16' ou 'uint8'.

## Argument de sortie

- C - Résultat de l'opération XOR bit à bit

## Description

<p>
            C = bitxor(A, B) returns the bit-wise XOR of A and B.</p>

## Exemple

```matlab
A = uint16([0 1; 0 1]);
B = uint16([0 0; 1 1]);
R = bitxor(A, B)

```

## Voir aussi

[bitand](../operators/bitand.md), [bitor](../operators/bitor.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
