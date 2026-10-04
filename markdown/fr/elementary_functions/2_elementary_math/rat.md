# rat

Approximation par une fraction rationnelle.

## 📝 Syntaxe

- [N, D] = rat(X)
- [N, D] = rat(X, tol)
- S = rat(X)
- S = rat(X, tol)

## 📥 Argument d'entrée

- X - Tableau d'entrée : réel ou complexe, scalaire, vecteur ou matrice (single ou double).
- tol - Tolérance : scalaire. La valeur par défaut est <b>1e-6 \* norm(X(:), 1)</b>.

## 📤 Argument de sortie

- N - Numérateur : tableau de même taille que <b>X</b>, ou le tableau de caractères de la fraction continue lorsqu'une seule sortie est demandée.
- D - Dénominateur : tableau de même taille que <b>X</b>.

## 📄 Description

<b>[N, D] = rat(X)</b> renvoie deux tableaux d'entiers tels que <b>N ./ D</b> soit proche de <b>X</b> au sens où <b>abs(N ./ D - X) <= tol</b>.

Les approximations rationnelles sont obtenues en tronquant des développements en fraction continue.

<b>S = rat(X)</b> renvoie la représentation en fraction continue sous forme d'un tableau de caractères.

## 💡 Exemple

```matlab
[N, D] = rat(pi)
S = rat(pi)
```

## 🔗 Voir aussi

[rats](../../elementary_functions/rats.md), [format](../../display_format/format.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
