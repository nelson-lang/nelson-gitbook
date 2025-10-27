# lqry

Forme un régulateur LQ (rétroaction d'état) avec pondération sur la sortie.

## 📝 Syntaxe

- [K, S, e] = lqry(sys, Q, R, N)

## 📥 Argument d'entrée

- sys - Modèle LTI
- Q - Matrice de pondération d'état
- R - Matrice de pondération d'entrée
- N - Matrice de terme croisé optionnelle : 0 par défaut.

## 📤 Argument de sortie

- K - Gain optimal : vecteur ligne.
- S - Solution de l'équation de Riccati algébrique.
- e - Pôles du système en boucle fermée : vecteur colonne.

## 📄 Description

Construit le régulateur LQ en tenant compte d'une pondération sur les sorties et renvoie le gain K, la matrice de coût S et les valeurs propres correspondantes.

## 💡 Exemple

```matlab
A = [0.6, 0.25; 0, 0.9];
B = [0; 10];
C = [11, 0];
D = 0;
Q = 2;
R = 1;
[K, S, e] = lqry(A, B, C, D, Q, R)
```

## 🔗 Voir aussi

[lqr](../control_system/lqr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
