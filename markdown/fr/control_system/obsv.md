# obsv

Observabilité d'un modèle d'état.

## 📝 Syntaxe

- Ob = obsv(A, C)
- Ob = obsv(sys)

## 📥 Argument d'entrée

- sys - Modèle d'état
- A - Matrice d'état : matrice Nx par Nx
- C - Matrice de sortie : matrice Ny par Nx

## 📤 Argument de sortie

- Ob - Matrice d'observabilité.

## 📄 Description

La fonction <b>obsv</b> est conçue pour calculer la matrice d'observabilité des systèmes d'état.

Étant donné une matrice Nx par Nx <b>A</b> représentant la dynamique du système et une matrice Ny par Nx C spécifiant la sortie, l'appel de fonction <b>obsv(A, C)</b> génère la matrice d'observabilité.

Il est déconseillé d'utiliser le rang de la matrice d'observabilité pour tester l'observabilité en raison d'instabilités numériques.

La matrice d'observabilité <b>Ob</b> a tendance à être numériquement singulière pour les systèmes ayant plus de quelques états, rendant l'approche basée sur le rang peu fiable dans de tels cas.

## 💡 Exemple

```matlab
% Définir les matrices du système
A = [1 2; 3 4];
C = [7 8];

% Vérifier l'observabilité en utilisant la fonction obsv
O = obsv(A, C);

% Afficher la matrice d'observabilité
disp('Matrice d''observabilité :');
disp(O);

% Vérifier si le système est observable
if rank(O) == size(A, 1)
    disp('Le système est observable.');
else
    disp('Le système n''est pas observable.');
end
```

## 🔗 Voir aussi

[obsvf](../control_system/obsvf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
