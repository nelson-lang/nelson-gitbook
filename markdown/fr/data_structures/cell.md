# cell

Créer un tableau cellulaire de matrices vides.

## 📝 Syntaxe

- C = cell()
- C = cell(m)
- C = cell(m, n)
- C = cell(m, n, ... , p)
- C = cell(sz)
- C = cell(A)

## 📥 Argument d'entrée

- m, n, ... , p - dimensions du tableau cellulaire à créer.
- sz - un vecteur d'entiers (dimensions du tableau cellulaire à créer).
- A - un tableau de chaînes.

## 📤 Argument de sortie

- C - un tableau cellulaire

## 📄 Description

<b>cell</b> renvoie un tableau cellulaire de matrices vides.

<b>cell()</b> est équivalent à <b>cell(0)</b>

<b>cell(A)</b> avec A un tableau de chaînes convertit en cell.

## 💡 Exemples

```matlab
A = eye(2, 4);
sz = size(A)
C = cell(sz)
```

```matlab
A = ["Nel", "son"; "open", "source"];
C = cell(A)
```

## 🔗 Voir aussi

[struct](../data_structures/struct.md), [iscell](../types/iscell.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
