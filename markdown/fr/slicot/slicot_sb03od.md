# slicot_sb03od

Résolution des équations de Lyapunov stables temps continu ou discret (facteur de Cholesky).

## Syntaxe

- [Q_OUT, B_OUT, SCALE, WR, WI, INFO] = slicot_sb03od(DICO, FACT, TRANS, A, Q_IN, B_IN)

## Argument d'entrée

- DICO - Spécifie le type d'équation de Lyapunov à résoudre : = 'C' : cas continu ; = 'D' : cas discret.
- FACT - Spécifie si la factorisation de Schur réelle de A est fournie à l'entrée : = 'F' : A et Q contiennent les facteurs ; = 'N' : la factorisation sera calculée et stockée dans A et Q.
- TRANS - Spécifie la forme de op(K) : = 'N' : op(K) = K (sans transposition) ; = 'T' : op(K) = K\*\*T (transposée).
- A - La partie principale N-by-N de ce tableau doit contenir la matrice A. Si FACT = 'F', A contient une matrice quasi-triangulaire supérieure S en forme canonique de Schur ; les éléments sous la partie Hessenberg supérieure de A ne sont pas référencés.
- Q_IN - Si FACT = 'F', la partie principale N-by-N de ce tableau doit contenir la matrice orthogonale Q de la factorisation de Schur de A. Sinon, Q n'a pas besoin d'être fournie.
- B_IN - Si TRANS = 'N', dimension (LDB,max(M,N)), si TRANS = 'T'. À l'entrée, si TRANS = 'N', la partie principale M-by-N de ce tableau doit contenir la matrice de coefficients B de l'équation. Si TRANS = 'T', la partie principale N-by-M doit contenir B.

## Argument de sortie

- Q_OUT - La partie principale N-by-N de ce tableau contient la matrice orthogonale Q de la factorisation de Schur de A. Le contenu de Q n'est pas modifié si FACT = 'F'.
- B_OUT - La partie principale N-by-N de ce tableau contient le facteur de Cholesky supérieur U de la matrice solution X, X = op(U)'\*op(U). Si M = 0 et N > 0, alors U est mis à zéro.
- SCALE - Le facteur d'échelle scale ≤ 1 pour prévenir le débordement de la solution.
- WR - Si FACT = 'N', et INFO ≥ 0 et INFO < 2, WR contient les parties réelles des valeurs propres de A.
- WI - Si FACT = 'N', et INFO ≥ 0 et INFO < 2, WI contient les parties imaginaires des valeurs propres de A.
- INFO - = 0 : sortie réussie.

## Description

<p>Résoudre pour X = op(U)'*op(U) soit l'équation de Lyapunov continue stable non négative définie, soit l'équation de Lyapunov discrète convergente non négative définie.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/SB03OD.html

## Fonction(s) utilisée(s)

SB03OD

## Exemple

```matlab
A = [-0.5000    0.5000         0;
         0         0         0;
   -0.5000         0    0.5000];
B_IN = [0.5000    1.5000    1.0000;
    1.0000    1.0000    1.0000;
    0.5000    1.0000    1.5000];
DICO = 'D';
FACT = 'N';
Q_IN = zeros(3, 3);
[Q_OUT, B_OUT, SCALE, WR, WI, INFO] = slicot_sb03od(DICO, FACT, TRANS, A, Q_IN, B_IN)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
