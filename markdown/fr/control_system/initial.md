# initial

Conditions initiales et configurations de simulation.

## 📝 Syntaxe

- [y, t, x] = initial(sys, x0)
- [y, t, x] = initial(sys, x0, Tfinal)
- [y, t, x] = initial(sys, x0, t)
- [y, t, x] = initial(sys, x0, [t0, tFinal])
- initial(...)

## 📥 Argument d'entrée

- sys - un modèle lti.
- x0 - Valeurs initiales de l'état : vecteur.
- t - Échantillons de temps : vecteur.
- tFinal - Temps de fin pour la réponse à l'étape : scalaire.
- [t0, tFinal] - Plage de temps pour la réponse à l'étape : vecteur à deux éléments.

## 📤 Argument de sortie

- y - Données de réponse simulées : matrice ou vecteur.
- tOut - Vecteur temps : vecteur.
- x - Trajectoires d'état : matrice ou vecteur.

## 📄 Description

<b>[y, tOut] = initial(sys, x0)</b> calcule la réponse initiale non forcée (y) du système dynamique <b>sys</b> à partir de l'état initial spécifié <b>x0</b>.

Le vecteur temps <b>tOut</b> est fourni dans les unités de temps de <b>sys</b>, et la fonction initial s'adapte automatiquement les pas de temps et la durée de la simulation en fonction de la dynamique du système.

Lorsque vous utilisez <b>[y, tOut] = initial(sys, x0, tFinal)</b>, la fonction simule la réponse de t = 0 à l'heure finale t = tFinal.

De même, <b>[y, tOut] = initial(sys, x0, [t0, tFinal])</b> simule la réponse de t0 à tFinal.

De plus, <b>[y, tOut] = initial(sys, x0, t)</b> renvoie la réponse initiale de <b>sys</b> aux moments spécifiés dans le vecteur <b>t</b>.

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
initial(sys, X0);

```

<img src="initial.svg" align="middle"/>

## 🔗 Voir aussi

[step](../control_system/step.md), [lsim](../control_system/lsim.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
