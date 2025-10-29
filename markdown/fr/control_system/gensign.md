# gensig

Génère des signaux de test (carré, impulsion, bruit, ...).

## 📝 Syntaxe

- [u, t] = gensig(type, tau)
- [u, t] = gensig(type, tau, Tf)
- [u, t] = gensig(type, tau, Tf, Ts)

## 📥 Argument d'entrée

- type - Type de signal périodique : 'cos', 'tan', 'sin', 'pulse', 'square'
- tau - Periode : scalaire positif
- Tf - Durée : scalaire positif ou 5\*tau (par défaut)
- Ts - scalaire positif ou tau/64 (par défaut)

## 📤 Argument de sortie

- u - Signal généré : vecteur colonne.
- t - Vecteur temps : vecteur colonne.

## 📄 Description

Génère des signaux de test périodiques ou non (par ex. carré, impulsion, bruit) pour la simulation de réponses temporelles.

## 💡 Exemple

```matlab
f = figure();
tau = 3;
Tf = 6;
Ts = 0.1;

subplot(3, 2, 1)
[u,t] = gensig("sine",tau,Tf,Ts);
plot(t, u)
title('sine')

subplot(3, 2, 2)
[u,t] = gensig("square",tau,Tf,Ts);
plot(t, u)
title('square')

subplot(3, 2, 3)
[u,t] = gensig("cos",tau,Tf,Ts);
plot(t, u)
title('cosine')

subplot(3, 2, 4)
[u,t] = gensig("sin",tau,Tf,Ts);
plot(t, u)
title('sine')

subplot(3, 2, 5)
[u,t] = gensig("tan",tau,Tf,Ts);
plot(t, u)
title('tan')

```

<img src="gensig.svg" align="middle"/>

## 🔗 Voir aussi

[lsim](../control_system/lsim.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
