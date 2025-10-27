# nyquist

Diagramme de Nyquist de la réponse en fréquence.

## 📝 Syntaxe

- nyquist(sys)
- nyquist(sys, w)
- [re, im, wout] = nyquist(sys)
- [re, im, wout] = nyquist(sys, w)

## 📥 Argument d'entrée

- sys - Système dynamique
- w - Fréquences : vecteur ou {wmin,wmax}

## 📤 Argument de sortie

- re - Partie réelle de la réponse du système
- im - Partie imaginaire de la réponse du système
- wout - Fréquences

## 📄 Description

La fonction Nyquist, <b>nyquist(sys)</b>, génère une représentation graphique connue sous le nom de tracé de Nyquist, illustrant la réponse en fréquence d'un modèle de système dynamique représenté par sys.

Ce tracé affiche les composantes réelle et imaginaire de la réponse du système selon la fréquence.

Le contour de nyquist couvre les fréquences positives et négatives.

Le tracé inclut également des flèches indiquant le sens d'augmentation de la fréquence pour chaque branche.

## 💡 Exemples

```matlab
f = figure();
sys = tf([1, 1, 3, 3], [1, -3, 3, -1])
nyquist(sys);

```

<img src="nyquist_1.svg" align="middle"/>

```matlab
H = tf([2 5 1], [1 2 3]);
[re, im, wout] = nyquist(H);

```

```matlab
f = figure();
      H = tf([2 5 1], [1 2 3]);
nyquist(H);

```

<img src="nyquist_2.svg" align="middle"/>

## 🔗 Voir aussi

[bode](../control_system/bode.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
