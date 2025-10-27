# slicot_sb01bd

Affectation de pôles pour une paire de matrices donnée (A,B).

## 📝 Syntaxe

- [A_OUT, WR_OUT, WI_OUT, NFP, NAP, NUP, F, Z, IWARN, INFO] = slicot_sb01bd(DICO, ALPHA, A_IN, B_IN, WR_IN, WI_IN, TOL)

## 📥 Argument d'entrée

- DICO - Spécifie le type du système original : 'C' : système continu ; 'D' : système discret.
- ALPHA - Spécifie la valeur maximale admissible.
- A_IN - La partie principale N×N de ce tableau doit contenir la matrice de dynamique d'état A.
- B_IN - La partie principale N×M de ce tableau doit contenir la matrice d'entrée/état.
- WR_IN - Contient les parties réelles des valeurs propres souhaitées de la matrice d'état en boucle fermée A+B\*F.
- WI_IN - Contient les parties imaginaires des valeurs propres souhaitées de la matrice d'état en boucle fermée A+B\*F.
- TOL - La tolérance absolue en dessous de laquelle les éléments de A ou B sont considérés comme nuls (utilisée pour les tests de contrôlabilité).

## 📤 Argument de sortie

- A_OUT - La partie principale N×N de ce tableau contient la matrice Z'*(A+B*F)\*Z en forme de Schur réelle.
- WR_OUT - Si INFO = 0, les NAP premiers éléments de ces tableaux contiennent les parties réelles des valeurs propres assignées. Les NP - NAP éléments restants contiennent les valeurs propres non assignées.
- WI_OUT - Si INFO = 0, les NAP premiers éléments de ces tableaux contiennent les parties imaginaires des valeurs propres assignées. Les NP - NAP éléments restants contiennent les valeurs propres non assignées.
- NFP - Le nombre de valeurs propres de A ayant des parties réelles < ALPHA si DICO = 'C', ou des modules < ALPHA si DICO = 'D'. Ces valeurs propres ne sont pas modifiées par l'algorithme d'affectation.
- NAP - Le nombre de valeurs propres assignées. Si INFO = 0 à la sortie, alors NAP = N - NFP - NUP.
- NUP - Le nombre de valeurs propres non contrôlables détectées par l'algorithme d'affectation.
- F - La partie principale M×N de ce tableau contient le retour d'état F, qui assigne NAP valeurs propres en boucle fermée et laisse inchangées N-NAP valeurs propres en boucle ouverte.
- Z - La partie principale N×N de ce tableau contient la matrice orthogonale Z qui réduit la matrice d'état en boucle fermée A + B\*F à la forme de Schur réelle supérieure.
- IWARN - >= 0 : pas d'avertissement ; = K : K violations de la condition de stabilité numérique.
- INFO - 0 : sortie réussie ;

## 📄 Description

To determine the state feedback matrix F for a given system (A,B) such that the closed-loop state matrix A+B\*F has specified eigenvalues.

## Fonction(s) utilisée(s)

SB01BD

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/SB01BD.html

## 💡 Exemple

```matlab
N = 4;
M = 2;
NP = 2;
ALPHA = -.4;
TOL = 1.E-8;
DICO = 'C';

A_IN = [  -6.8000   0.0000  -207.0000   0.0000;
   1.0000   0.0000     0.0000   0.0000;
  43.2000   0.0000     0.0000  -4.2000;
   0.0000   0.0000     1.0000   0.0000];

B_IN = [   5.6400   0.0000;
   0.0000   0.0000;
   0.0000   1.1800;
   0.0000   0.0000];

WR_IN = [-0.5000; -0.5000];
WI_IN = [ 0.1500; -0.1500];

[A_OUT, WR_OUT, WI_OUT, NFP, NAP, NUP, F, Z, IWARN, INFO] = slicot_sb01bd(DICO, ALPHA, A_IN, B_IN, WR_IN, WI_IN, TOL)

```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

SLICOT Documentation
