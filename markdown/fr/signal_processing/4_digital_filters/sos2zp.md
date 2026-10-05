# sos2zp

Convertit des sections du second ordre en zéros-pôles-gain.

## 📝 Syntaxe

- [Z, P, K] = sos2zp(SOS)

## 📥 Argument d'entrée

- SOS - matrice de sections du second ordre.

## 📤 Argument de sortie

- Z - zéros.
- P - pôles.
- K - gain.

## 📄 Description


<b>sos2zp</b> convertit les sections en coefficients de fonction de transfert puis en représentation zéros-pôles-gain.

## 💡 Exemple



```matlab

[z, p, k] = sos2zp([1 2 1 1 -0.5 0]);

```


## 🔗 Voir aussi

[sos2tf](../../signal_processing/4_digital_filters/sos2tf.md), [zp2sos](../../signal_processing/4_digital_filters/zp2sos.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
