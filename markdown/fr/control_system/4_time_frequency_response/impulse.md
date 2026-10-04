# impulse

RÃ©ponse impulsionnelle d'un systÃ¨me dynamique.

## 📝 Syntaxe

- [y, t, x] = impulse(sys)
- [y, t, x] = impulse(sys, tFinal)
- [y, t, x] = impulse(sys, [t0, tFinal])
- [y, t, x] = impulse(sys, t)
- impulse(...)

## 📥 Argument d'entrée

- sys - un modÃ¨le lti.
- t - Ã‰chantillons temporels : vecteur.
- tFinal - Temps de fin pour la rÃ©ponse Ã  l'Ã©chelon : scalaire.
- [t0, tFinal] - Plage temporelle pour la rÃ©ponse Ã  l'Ã©chelon : vecteur Ã  deux Ã©lÃ©ments.

## 📤 Argument de sortie

- y - DonnÃ©es de rÃ©ponse simulÃ©e : matrice ou vecteur.
- tOut - Vecteur temporel : vecteur.
- x - Trajectoires d'Ã©tat : matrice ou vecteur.

## 📄 Description

Calcule et trace la rÃ©ponse impulsionnelle du systÃ¨me dynamique pour un signal impulsionnel appliquÃ© en entrÃ©e.

## 💡 Exemple

```matlab
sys = tf(4,[1 2 10]);
t = 0:0.05:5;
f = figure();
impulse(sys,t);
```

<img src="impulse.svg" align="middle"/>

## 🔗 Voir aussi

[step](../../control_system/step.md), [lsim](../../control_system/lsim.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
