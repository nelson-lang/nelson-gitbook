# residue

Decomposition en fractions simples (residus)

## 📝 Syntaxe

- [r, p, k] = residue(b, a)
- [b, a] = residue(r, p, k)

## 📥 Argument d'entrée

- b - vecteur : coefficients du polynome numerateur.
- a - vecteur : coefficients du polynome denominateur.
- r - vecteur colonne : residus.
- p - vecteur colonne : poles.
- k - vecteur ligne : terme direct (vide lorsque la fraction rationnelle est propre).

## 📤 Argument de sortie

- r - vecteur colonne : residus.
- p - vecteur colonne : poles.
- k - vecteur ligne : terme direct.

## 📄 Description

<b>residue</b> calcule la decomposition en fractions simples du rapport de deux polynomes b(s) / a(s).

Avec deux entrees, la fonction retourne les residus r, les poles p et le terme direct k tels que

b(s) / a(s) = r(1) / (s - p(1)) + ... + r(n) / (s - p(n)) + k(s).

Pour un pole de multiplicite m repete dans p, les termes correspondants sont r(j) / (s - p) ^ 1, ..., r(j + m - 1) / (s - p) ^ m.

Avec trois entrees, <b>residue</b> effectue l'operation inverse et retourne le numerateur b et le denominateur a de la fraction rationnelle equivalente.

## 💡 Exemples

```matlab
[r, p, k] = residue([1 0], [1 -3 2])
```

```matlab
[r, p, k] = residue([2 5 3 6], [1 6 11 6]);
[b, a] = residue(r, p, k)
```

## 🔗 Voir aussi

[poly](../polynomial_functions/poly.md), [roots](../polynomial_functions/roots.md), [deconv](../polynomial_functions/deconv.md).

<!--
## 👤 Auteur

Allan CORNET
-->
