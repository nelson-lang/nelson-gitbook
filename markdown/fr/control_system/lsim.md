# lsim

Trace la réponse temporelle simulée d'un système dynamique à des entrées arbitraires.

## 📝 Syntaxe

- lsim(sys, u, t)
- lsim(sys, u, t, x0)
- [y, tOut, x] = lsim(SYS, U, T, X0)

## 📥 Argument d'entrée

- sys - un modèle lti.
- u - Signal d'entrée : matrice ou vecteur.
- t - Échantillons temporels : vecteur.
- x0 - Valeurs d'état initiales : vecteur.

## 📤 Argument de sortie

- y - Données de réponse simulées : matrice ou vecteur.
- tOut - Vecteur temporel : vecteur.
- x - Trajectoires d'état : matrice ou vecteur.

## 📄 Description

La fonction <b>lsim(sys, u, t)</b> génère un tracé illustrant la réponse temporelle simulée du modèle de système dynamique <b>sys</b> à l'historique d'entrée (<b>t</b>, <b>u</b>).

Les échantillons temporels pour la simulation sont spécifiés par le vecteur <b>t</b>.

Dans le cas des systèmes à entrée unique, le signal d'entrée <b>u</b> est un vecteur de la même longueur que <b>t</b>.

Pour les systèmes à entrées multiples, <b>u</b> est un tableau avec des lignes correspondant aux échantillons temporels (length(t)) et des colonnes correspondant aux entrées de <b>sys</b>.

Une utilisation supplémentaire de la fonction est démontrée par l'exemple <b>lsim(sys, u, t, x0)</b>, où un vecteur <b>x0</b> est fourni pour spécifier les valeurs d'état initiales.

Cela est particulièrement pertinent lorsque <b>sys</b> est un modèle d'état-espace.

La fonction simule la réponse temporelle du système dynamique pour un signal d'entrée arbitraire et trace les sorties correspondantes.

## 💡 Exemples

```matlab
A = [-10 -20 -30;1  0  0; 0  1  0];
B = [1;   0;   0];
C = [0   0   1];
D = 0;
T = [0:0.1:1];
U = zeros(size(T, 1), size(T, 2));
X0 = [0.1 0.1 0.1];
sys = ss(A, B, C, D);
lsim(sys, U, T, X0);

```

<img src="lsim1.svg" align="middle"/>

```matlab
A = [-1.7  -0.3   1.1;
     -0.2  -1.7   0.6;
      1.0   0.6  -1.4];
B = [ 1.5  0.6;
     -1.8  1.0;
      0    0  ];
C = [ 0    -0.5 -0.1;
      0.35 -0.1 -0.15
      0.65  0    0.6];
D = [ 0.5  0;
      0.05 0.75
      0    0];
sys = ss(A,B,C,D);
Tf = 10;
Ts = 0.1;
[uSq,t] = gensig("square",4,Tf,Ts);
uP = gensig("pulse",3,Tf,Ts);
u = [uSq uP];
lsim(sys,u,t)

```

<img src="lsim2.svg" align="middle"/>

## 🔗 Voir aussi

[gensig](../control_system/gensig.md), [step](../control_system/step.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
