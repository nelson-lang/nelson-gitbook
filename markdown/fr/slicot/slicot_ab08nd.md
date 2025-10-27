# slicot_ab08nd

Construction d'un pencil régulier pour un système donné dont les valeurs propres généralisées sont les zéros invariants du système.

## 📝 Syntaxe

- [NU, RANK, DINFZ, NKROR, NKROL, INFZ, KRONR, KRONL, AF, BF, INFO] = slicot_ab08nd(EQUIL, N, M, P, A, B, C, D, TOL)

## 📥 Argument d'entrée

- EQUIL - 'S' : effectuer un équilibrage (mise à l'échelle) ; 'N' : ne pas effectuer d'équilibrage.
- N - Le nombre de variables d'état, c'est-à-dire l'ordre de la matrice A.
- M - Le nombre d'entrées du système.
- P - Le nombre de sorties du système.
- A - La partie principale N-by-N de ce tableau doit contenir la matrice de dynamique d'état A du système.
- B - La partie principale N-by-M de ce tableau doit contenir la matrice d'entrée/état B du système.
- C - La partie principale P-by-N de ce tableau doit contenir la matrice état/sortie C du système.
- D - La partie principale P-by-M de ce tableau doit contenir la matrice de transmission directe D du système.
- TOL - Une tolérance utilisée dans les décisions de rang.

## 📤 Argument de sortie

- NU - Le nombre de zéros invariants (finis).
- RANK - Le rang normal de la matrice de fonction de transfert.
- DINFZ - Le degré maximal des diviseurs élémentaires à l'infini.
- NKROR - Le nombre d'indices de Kronecker droits.
- NKROL - Le nombre d'indices de Kronecker gauches.
- INFZ - Les DINFZ premiers éléments de INFZ contiennent des informations sur les diviseurs élémentaires infinis : le système a INFZ(i) diviseurs élémentaires infinis de degré i, où i = 1,2,...,DINFZ.
- KRONR - Les NKROR premiers éléments de ce tableau contiennent les indices de Kronecker droits (colonnes).
- KRONL - Les NKROL premiers éléments de ce tableau contiennent les indices de Kronecker gauches (lignes).
- AF - La partie principale NU-by-NU de ce tableau contient la matrice de coefficients A du pencil réduit.
- BF - La partie principale NU-by-NU de ce tableau contient la matrice de coefficients B du pencil réduit.
- INFO - 0 : sortie réussie ; si INFO = -i, le i-ème argument avait une valeur illégale.

## 📄 Description

Construire, pour un système multivariable linéaire décrit par un modèle d'espace d'état (A,B,C,D), un pencil régulier (A - lambda\*B) dont les zéros invariants du système sont les valeurs propres généralisées.

La routine calcule également les ordres des zéros infinis et les indices de Kronecker droits et gauches du système (A,B,C,D).

## Fonction(s) utilisée(s)

AB08ND

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/AB08ND.html

## 💡 Exemple

```matlab
N = 6;
M = 2;
P = 3;
TOL = 0.0;
EQUIL = 'N';
%=============================================================================
A  = [1.0   0.0   0.0   0.0   0.0   0.0;
   0.0   1.0   0.0   0.0   0.0   0.0;
   0.0   0.0   3.0   0.0   0.0   0.0;
   0.0   0.0   0.0  -4.0   0.0   0.0;
   0.0   0.0   0.0   0.0  -1.0   0.0;
   0.0   0.0   0.0   0.0   0.0   3.0];
%=============================================================================
B = [0.0  -1.0;
  -1.0   0.0;
   1.0  -1.0;
   0.0   0.0;
   0.0   1.0;
  -1.0  -1.0];
%=============================================================================
C = [1.0   0.0   0.0   1.0   0.0   0.0;
   0.0   1.0   0.0   1.0   0.0   1.0;
   0.0   0.0   1.0   0.0   0.0   1.0];
D = [0.0   0.0;
   0.0   0.0;
   0.0   0.0];
%=============================================================================
% Check the observability and compute the ordered set of the observability indices (call the routine with M = 0).
[NU, RANK, DINFZ, NKROR, NKROL, INFZ, KRONR, KRONL, AF, BF, INFO] = slicot_ab08nd(EQUIL, N, 0, P, A, B, C, D, TOL)

% Check the controllability and compute the ordered set of the controllability indices (call the routine with P = 0)
[NU, RANK, DINFZ, NKROR, NKROL, INFZ, KRONR, KRONL, AF, BF, INFO] = slicot_ab08nd(EQUIL, N, M, 0, A, B, C, D, TOL)

% Compute the structural invariants of the given system.
[NU, RANK, DINFZ, NKROR, NKROL, INFZ, KRONR, KRONL, AF, BF, INFO] = slicot_ab08nd(EQUIL, N, M, P, A, B, C, D, TOL)

```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

SLICOT Documentation
