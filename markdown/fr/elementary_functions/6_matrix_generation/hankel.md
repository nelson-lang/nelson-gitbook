# hankel

Matrice de Hankel

## 📝 Syntaxe

- H = hankel(c)
- H = hankel(c, r)

## 📥 Argument d'entrée

- c - Première colonne de la matrice de Hankel : vecteur ou scalaire.
- r - Dernière ligne de la matrice de Hankel : vecteur ou scalaire.

## 📤 Argument de sortie

- H - Matrice de Hankel.

## 📄 Description

<b>H = hankel(c)</b> renvoie une matrice de Hankel carrée dont<b>c</b> est la première colonne et dont les éléments situés sous l'anti-diagonale principale valent zéro.

<b>H = hankel(c, r)</b> renvoie une matrice de Hankel avec <b>c</b> comme première colonne et <b>r</b> comme dernière ligne.

Si le dernier élément de <b>c</b> diffère du premier élément de <b>r</b>, Hankel émet un avertissement et utilise le dernier élément de <b>c</b> pour l'anti-diagonale.

## 💡 Exemple

```matlab
c = [1 2 3 4 5];
hankel(c)
```

## 🔗 Voir aussi

[hilb](../../elementary_functions/hilb.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
