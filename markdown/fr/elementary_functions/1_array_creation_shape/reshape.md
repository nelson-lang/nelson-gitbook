# reshape

Redimensionne un vecteur ou une matrice en une matrice de taille différente.

## 📝 Syntaxe

- M2 = reshape(M1, s1, ... ,sN)
- M2 = reshape(M1, ..., [], ...)
- M2 = reshape(M1, size)

## 📥 Argument d'entrée

- M1 - un vecteur ou une matrice
- size - un vecteur de tailles
- s1, ... ,sN - un tableau s1 - par - ... - par - sN où s1, ..., sN indiquent la taille de chaque dimension.

## 📤 Argument de sortie

- M2 - Matrice redimensionnée

## 📄 Description

<b>reshape</b> redimensionne en une matrice de taille différente. Si une seule dimension est spécifiée,<b>reshape</b> détermine automatiquement la taille complémentaire. [ ] permet de laisser une dimension non spécifiée.

## 💡 Exemple

```matlab
M1 = ones(3, 4, 5);
M2 = reshape(M1, [5, 3, 4])
M2 = reshape(M1, 5, [], 4)

```

## 🔗 Voir aussi

[colon](../../operators/colon.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
