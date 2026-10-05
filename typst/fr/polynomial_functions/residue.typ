#import "nelson_help.typ": *

= residue <polynomial_functions:residue>

Decomposition en fractions simples (residus)

== Syntaxe

- #raw("[r, p, k] = residue(b, a)");
- #raw("[b, a] = residue(r, p, k)");

== Argument d'entrée

/ b: vecteur : coefficients du polynome numerateur.
/ a: vecteur : coefficients du polynome denominateur.
/ r: vecteur colonne : residus.
/ p: vecteur colonne : poles.
/ k: vecteur ligne : terme direct (vide lorsque la fraction rationnelle est propre).

== Argument de sortie

/ r: vecteur colonne : residus.
/ p: vecteur colonne : poles.
/ k: vecteur ligne : terme direct.

== Description

#strong[residue]; calcule la decomposition en fractions simples du rapport de deux polynomes b(s) \/ a(s).

 Avec deux entrees, la fonction retourne les residus r, les poles p et le terme direct k tels que

 b(s) \/ a(s) \= r(1) \/ (s - p(1)) + ... + r(n) \/ (s - p(n)) + k(s).

 Pour un pole de multiplicite m repete dans p, les termes correspondants sont r(j) \/ (s - p) ^ 1, ..., r(j + m - 1) \/ (s - p) ^ m.

 Avec trois entrees, #strong[residue]; effectue l'operation inverse et retourne le numerateur b et le denominateur a de la fraction rationnelle equivalente.


== Exemples

``````matlab
[r, p, k] = residue([1 0], [1 -3 2])
``````

``````matlab
[r, p, k] = residue([2 5 3 6], [1 6 11 6]);
[b, a] = residue(r, p, k)
``````


== Voir aussi

#nlink(<polynomial_functions:poly>)[poly];, #nlink(<polynomial_functions:roots>)[roots];, #nlink(<polynomial_functions:deconv>)[deconv];.

// Auteur: Allan CORNET
