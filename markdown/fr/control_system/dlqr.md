# dlqr

Régulateur de retour d'état linéaire-quadratique (LQ) pour système d'espace d'état en temps discret.

## 📝 Syntaxe

- [K, S, e] = dlqr(A, B, Q, R, N)
- [K, S, e] = dlqr(A, B, Q, R)

## 📥 Argument d'entrée

- A - Matrice d'état : matrice n x n.
- B - Matrice entrée-état : matrice n x m.
- Q - Matrice pondérée du coût d'état
- R - Matrice pondérée du coût d'entrée
- N - Matrice de terme croisé optionnelle : 0 par défaut.

## 📤 Argument de sortie

- K - Gain optimal : vecteur ligne.
- S - Solution de l'équation de Riccati algébrique.
- e - Pôles du système en boucle fermée : vecteur colonne.

## 📄 Description

La fonction <b>dlqr</b> est conçue pour minimiser une fonction de coût quadratique associée à un modèle de système d'espace d'état linéaire invariant dans le temps discret.

## 💡 Exemple

```matlab
A = [0.9, 0.2; 0, 0.8];
B = [0; 2];
Q = [4, 0; 0, 4];
R = 3;
[K, S, e] = dlqr(A, B, Q, R)

```

## 🔗 Voir aussi

[lqr](../control_system/lqr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
