# cheby1

Conception de filtre numerique Chebyshev type I.

## 📝 Syntaxe

- [B, A] = cheby1(N, Rp, Wn)
- [B, A] = cheby1(N, Rp, Wn, type)
- [Z, P, K] = cheby1(...)

## 📥 Argument d'entrée

- N - ordre du filtre.
- Rp - ondulation de bande passante en dB.
- Wn - frequence de coupure normalisee ou paire de frequences.
- type - type de filtre.

## 📤 Argument de sortie

- B, A - coefficients de fonction de transfert.
- Z, P, K - representation zeros-poles-gain.

## 📄 Description


<b>cheby1</b> concoit des filtres numeriques Chebyshev type I passe-bas, passe-haut, passe-bande et coupe-bande.

## 💡 Exemple



```matlab

[b, a] = cheby1(3, 1, 0.25);

```


## 🔗 Voir aussi

[butter](../../signal_processing/4_digital_filters/butter.md), [cheb1ord](../../signal_processing/4_digital_filters/cheb1ord.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
