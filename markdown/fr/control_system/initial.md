# initial

Conditions initiales et configurations de simulation.

## Syntaxe

- [y, t, x] = initial(sys, x0)
- [y, t, x] = initial(sys, x0, Tfinal)
- [y, t, x] = initial(sys, x0, t)
- [y, t, x] = initial(sys, x0, [t0, tFinal])
- initial(...)

## Argument d'entrée

- sys - un modèle lti.
- x0 - Valeurs initiales de l'état : vecteur.
- t - Échantillons de temps : vecteur.
- tFinal - Temps de fin pour la réponse à l'étape : scalaire.
- [t0, tFinal] - Plage de temps pour la réponse à l'étape : vecteur à deux éléments.

## Argument de sortie

- y - Données de réponse simulées : matrice ou vecteur.
- tOut - Vecteur temps : vecteur.
- x - Trajectoires d'état : matrice ou vecteur.

## Description

<p>
            [y, tOut] = initial(sys, x0) calcule la réponse initiale non forcée (y) du système dynamique sys à partir de l'état initial spécifié x0.</p>

<p>Le vecteur temps tOut est fourni dans les unités de temps de sys, et la fonction initial s'adapte automatiquement les pas de temps et la durée de la simulation en fonction de la dynamique du système.</p>

<p>Lorsque vous utilisez [y, tOut] = initial(sys, x0, tFinal), la fonction simule la réponse de t = 0 à l'heure finale t = tFinal.</p>

<p>De même, [y, tOut] = initial(sys, x0, [t0, tFinal]) simule la réponse de t0 à tFinal.</p>

<p>De plus, [y, tOut] = initial(sys, x0, t) renvoie la réponse initiale de sys aux moments spécifiés dans le vecteur t.</p>

## Exemple

```matlab
A = [-10 -20 -30;1  0  0; 0  1  0];
B = [1;   0;   0];
C = [0   0   1];
D = 0;
T = [0:0.1:1];
U = zeros(size(T, 1), size(T, 2));
X0 = [0.1 0.1 0.1];
sys = ss(A, B, C, D);
initial(sys, X0);

```

<img src="initial.svg" align="middle"/>

## Voir aussi

[step](../control_system/step.md), [lsim](../control_system/lsim.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
