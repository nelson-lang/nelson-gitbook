# cheby2

Conception de filtre numerique Chebyshev type II.

## 📝 Syntaxe

- [B, A] = cheby2(N, Rs, Wn)
- [B, A] = cheby2(N, Rs, Wn, type)
- [Z, P, K] = cheby2(...)

## 📥 Argument d'entrée

- N - ordre du filtre.
- Rs - attenuation de bande attenuee en dB.
- Wn - frequence de coupure normalisee ou paire de frequences.
- type - type de filtre.

## 📤 Argument de sortie

- B, A - coefficients de fonction de transfert.
- Z, P, K - representation zeros-poles-gain.

## 📄 Description

<b>cheby2</b> concoit des filtres numeriques Chebyshev type II passe-bas, passe-haut, passe-bande et coupe-bande.

## 💡 Exemple

```matlab

[b, a] = cheby2(3, 40, 0.25);

```

## 🔗 Voir aussi

[cheby1](../../signal_processing/cheby1.md), [ellip](../../signal_processing/ellip.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
