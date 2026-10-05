# ctrb

Contrôlabilité du modèle d'espace d'état.

## 📝 Syntaxe

- Co = ctrb(A, B)
- Co = ctrb(sys)

## 📥 Argument d'entrée

- sys - Modèle d'espace d'état
- A - Matrice d'état : matrice Nx-par-Nx
- B - Matrice entrée-état : matrice Nx-par-Nu

## 📤 Argument de sortie

- Co - Matrice de contrôlabilité.

## 📄 Description


La contrôlabilité dans un système dynamique fait référence à la capacité du système à être guidé vers n'importe quel état souhaité dans un délai fini grâce à l'application de signaux de contrôle appropriés. 

Cette propriété est communément connue sous le nom d'accessibilité. 

La fonction <b>ctrb</b> est utilisée pour calculer une matrice de contrôlabilité, soit à partir des matrices d'état, soit à partir d'un modèle d'espace d'état. 

La matrice résultante sert d'outil pour évaluer et confirmer la contrôlabilité du système.

## 💡 Exemple



```matlab
A = [1 2; 0 3];
B = [1; 1];
C = eye(2);
D = zeros(2, 1);
sys = ss(A, B, C, D);
Co = ctrb(sys)
```


## 🔗 Voir aussi

[ctrbf](../../control_system/6_matrix_computations/ctrbf.md), [obsv](../../control_system/6_matrix_computations/obsv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
