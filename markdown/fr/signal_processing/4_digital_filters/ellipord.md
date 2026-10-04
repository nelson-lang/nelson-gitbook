# ellipord

Ordre minimal pour un filtre elliptique.

## 📝 Syntaxe

- [N, Wn] = ellipord(Wp, Ws, Rp, Rs)

## 📥 Argument d'entrée

- Wp - frequence limite de bande passante.
- Ws - frequence limite de bande attenuee.
- Rp - ondulation de bande passante en dB.
- Rs - attenuation de bande attenuee en dB.

## 📤 Argument de sortie

- N - ordre du filtre.
- Wn - frequence de coupure.

## 📄 Description

<b>ellipord</b> estime un ordre et une coupure pour la conception elliptique.

## 💡 Exemple

```matlab

[n, wn] = ellipord(0.2, 0.3, 1, 40);

```

## 🔗 Voir aussi

[ellip](../../signal_processing/ellip.md), [buttord](../../signal_processing/buttord.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
