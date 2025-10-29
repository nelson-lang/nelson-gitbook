# ss

Modèle en espace d'état.

## 📝 Syntaxe

- sys = ss(A, B, C, D)
- sys = ss(A, B, C, D, TS)
- sys = ss(D)
- sys = ss(sysIn)

## 📥 Argument d'entrée

- A - Matrice d'état : matrice Nx par Nx.
- B - Matrice d'entrée vers l'état : matrice Nx par Nu.
- C - Matrice d'état vers sortie : matrice Ny par Nx.
- D - Matrice de passage direct : matrice Ny par Nu.
- TS - Temps d'échantillonnage : scalaire.
- sysIn - Modèle SISO LTI.

## 📤 Argument de sortie

- sys - Modèle de système en espace d'état en sortie.

## 📄 Description

Crée un modèle d'état continu à partir des matrices A, B, C et D, acceptant des matrices réelles ou complexes.

## 💡 Exemples

```matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys = ss(A, B, C, D)
```

```matlab
num = [3 4];
den = [3 1 5];
Ts = 0.2;
sysIn = tf(num, den, Ts)
sys = ss(sysIn)
```

## 🔗 Voir aussi

[tf](../control_system/tf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
