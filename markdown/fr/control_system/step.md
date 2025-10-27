# step

Réponse indicielle d'un système dynamique.

## 📝 Syntaxe

- [y, t, x] = step(sys)
- [y, t, x] = step(sys, t)
- [y, t, x] = step(sys, tFinal)
- [y, t, x] = step(sys, [t0, tFinal])

## 📥 Argument d'entrée

- sys - un modèle lti.
- t - Vecteur temps.
- tFinal - Temps final pour la réponse indicielle : scalaire.
- [t0, tFinal] - Plage de temps pour la réponse indicielle : vecteur à deux éléments.

## 📤 Argument de sortie

- y - Données de réponse simulées : matrice ou vecteur.
- t - Vecteur temps : vecteur.
- x - Trajectoires d'état : matrice ou vecteur.

## 📄 Description

La fonction calcule et trace la réponse indicielle du système dynamique pour les conditions et l'intervalle de temps fournis.

## 💡 Exemple

```matlab
A = [-10 -20 -30;1  0  0; 0  1  0];
B = [1;   0;   0];
C = [0   0   1];
D = 0;
T = [0:0.1:1];
U = zeros(size(T, 1), size(T, 2));
X0 = [0.1 0.1 0.1];
sys = ss(A, B, C, D);
step(sys);

```

<img src="step.svg" align="middle"/>

## 🔗 Voir aussi

[gensig](../control_system/gensig.md), [lsim](../control_system/lsim.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
