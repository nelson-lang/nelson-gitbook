# ellip

Conception de filtre numerique elliptique.

## 📝 Syntaxe

- [B, A] = ellip(N, Rp, Rs, Wn)
- [B, A] = ellip(N, Rp, Rs, Wn, type)
- [Z, P, K] = ellip(...)

## 📥 Argument d'entrée

- N - ordre du filtre.
- Rp - ondulation de bande passante en dB.
- Rs - attenuation de bande attenuee en dB.
- Wn - frequence de coupure normalisee ou paire de frequences.

## 📤 Argument de sortie

- B, A - coefficients de fonction de transfert.
- Z, P, K - representation zeros-poles-gain.

## 📄 Description


<b>ellip</b> concoit des filtres numeriques elliptiques passe-bas, passe-haut, passe-bande et coupe-bande.

## 💡 Exemple



```matlab

[b, a] = ellip(3, 1, 40, 0.25);

```


## 🔗 Voir aussi

[ellipord](../../signal_processing/4_digital_filters/ellipord.md), [cheby2](../../signal_processing/4_digital_filters/cheby2.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
