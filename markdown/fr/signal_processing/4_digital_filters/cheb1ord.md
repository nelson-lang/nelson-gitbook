# cheb1ord

Ordre minimal pour un filtre Chebyshev type I.

## 📝 Syntaxe

- [N, Wn] = cheb1ord(Wp, Ws, Rp, Rs)

## 📥 Argument d'entrée

- Wp - frequence limite de bande passante.
- Ws - frequence limite de bande attenuee.
- Rp - ondulation de bande passante en dB.
- Rs - attenuation de bande attenuee en dB.

## 📤 Argument de sortie

- N - ordre du filtre.
- Wn - frequence de coupure.

## 📄 Description

<b>cheb1ord</b> estime un ordre et une coupure pour la conception Chebyshev type I.

## 💡 Exemple

```matlab

[n, wn] = cheb1ord(0.2, 0.3, 1, 40);

```

## 🔗 Voir aussi

[cheby1](../../signal_processing/cheby1.md), [buttord](../../signal_processing/buttord.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
