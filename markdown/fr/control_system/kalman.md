# kalman

Conception d'un filtre de Kalman pour l'estimation d'état.

## 📝 Syntaxe

- [kalmf, L, P, M, Z] = kalman(sys, Q, R, N)
- [kalmf, L, P, M, Z] = kalman(sys, Q, R, N, sensors, known)

## 📥 Argument d'entrée

- sys - Modèle de plante avec bruit de processus : modèle d'état-espace.
- Q - Covariance du bruit de processus : scalaire ou matrice.
- R - Covariance du bruit de mesure : scalaire ou matrice.
- N - Covariance croisée du bruit : scalaire ou matrice.
- sensors - Sorties mesurées de sys : vecteur.
- known - Entrées connues de sys : vecteur.

## 📤 Argument de sortie

- kalmf - Estimateur de Kalman : modèle d'état-espace
- L - Gains du filtre : matrice
- P - Covariances de l'erreur à l'état stationnaire : matrice
- M - Gains d'innovation des estimateurs d'état : matrice
- Z - Covariances de l'erreur à l'état stationnaire : matrice

## 📄 Description

<b>[kalmf, L, P] = kalman(sys, Q, R, N)</b> génère un filtre de Kalman en utilisant le modèle de plante fourni <b>sys</b> et les matrices de covariance du bruit <b>Q</b>, <b>R</b>, et <b>N</b>.

La fonction calcule un filtre de Kalman adapté pour une utilisation dans un estimateur de Kalman, comme montré dans le diagramme correspondant.

## 💡 Exemple

```matlab
A = [11.269   -0.4940    1.129; 1.0000         0         0;0    1.0000         0];
B = [-0.3832;  0.5919;  0.5191];
C = [1 0 0];
sys = ss(A,[B, B], C, 0);
Q = 1;
R = 1;
[kEst, l, p, m, z] = kalman(sys, Q, R, [])
```

## 🔗 Voir aussi

[care](../control_system/care.md), [dare](../control_system/dare.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
