# computer

Informations sur le système.

## Syntaxe

- c = computer()
- [c, maxsize] = computer()
- [c, maxsize, endian] = computer()
- arch = computer('arch')

## Argument d'entrée

- 'arch' - une chaîne : retourne l'architecture de l'ordinateur.

## Argument de sortie

- c - une chaîne : type d'ordinateur : 'PCWIN', 'PCWIN64', 'GLNXA64', 'GLNXA32', 'MACI32', 'MACI64'
- maxsize - un entier : nombre maximal d'éléments autorisés dans un tableau.
- endian - une chaîne : 'L' pour little-endian, 'B' pour big-endian.
- arch - une chaîne : type d'architecture : 'win64', 'win32', 'glnxa64', 'glnxa32', 'maci64', 'maci32'.

## Description

<p>computer identifie le type d'ordinateur sur lequel Nelson s'exécute.</p>

## Exemple

```matlab
c = computer()
[c, maxsize] = computer()
[c, maxsize, endian] = computer()
arch = computer('arch')
```

## Voir aussi

[ispc](../os_functions/ispc.md), [ismac](../os_functions/ismac.md), [isunix](../os_functions/isunix.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
