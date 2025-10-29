# deal

Distribue les entrées vers les sorties.

## 📝 Syntaxe

- [R1, ... , Rn] = deal(A1, ... , An)
- [R1, ... , Rn] = deal(A)

## 📥 Argument d'entrée

- A1, ... , An - variables

## 📤 Argument de sortie

- R1, ... , Rn - variables

## 📄 Description

<b>deal</b> réplique les paramètres d'entrée vers les paramètres de sortie correspondants.

Si un seul paramètre d'entrée est fourni, sa valeur sera dupliquée pour tous les sorties.

## 💡 Exemples

```matlab
[A1, A2, A3] = deal(pi)
```

```matlab
S = [];
S.A = [];
S(2).A = [];
S(3).A = [];
A1 = 200;
A2 = 'fifo';
A3 = 1:11;
[S.A] = deal(A1, A2, A3)
```

```matlab
C = cell(1,3)
A1 = 200;
A2 = 'fifo';
A3 = 1:11;
[C{:}] = deal(A1, A2, A3)
```

## 🔗 Voir aussi

[cell](../data_structures/cell.md), [struct](../data_structures/struc.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
