# trapz

Integration numerique par la methode des trapezes.

## 📝 Syntaxe

- Z = trapz(Y)
- Z = trapz(X, Y)
- Z = trapz(Y, dim)
- Z = trapz(X, Y, dim)

## 📥 Argument d'entrée

- Y - vecteur ou matrice (reel ou single)
- X - espacement des points : vecteur
- dim - dimension : entier positif scalaire

## 📤 Argument de sortie

- Z - integrale : scalaire, vecteur ou matrice.

## 📄 Description

<b>trapz(Y)</b> calcule l'integrale approchee de <b>Y</b> par la methode des trapezes avec un espacement unitaire, selon la premiere dimension non singuliere.

<b>trapz(X, Y)</b> integre <b>Y</b> par rapport aux coordonnees donnees par <b>X</b>.

Utilisez <b>dim</b> pour integrer selon une dimension donnee.

## 💡 Exemple

```matlab
x = 0:0.1:pi;
Z = trapz(x, sin(x))
```

## 🔗 Voir aussi

[cumtrapz](../cumtrapz.md), [sum](../../data_analysis/sum.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
