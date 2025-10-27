# horzcat

Concaténation horizontale.

## 📝 Syntaxe

- R = horzcat(M1, M2, ... , MN)
- R = [M1, M2, ... , MN]

## 📥 Argument d'entrée

- M1 - une variable
- M2 - une variable
- MN - une variable

## 📤 Argument de sortie

- R - résultat de [M1, M2, ... , MN]

## 📄 Description

<b>R = horzcat(M1, M2, ... , MN)</b> renvoie la concaténation horizontale de M1, M2, ... , MN le long de la dimension 2.

## 💡 Exemples

```matlab
A = eye(2, 2);
B = ones(2, 2);
C = horzcat(A, B)
D = [A, B]
```

```matlab
A = 'nel';
B = 'son';
C = horzcat(A, B)
```

## 🔗 Voir aussi

[vertcat](../operators/vertcat.md), [cat](../operators/cat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
