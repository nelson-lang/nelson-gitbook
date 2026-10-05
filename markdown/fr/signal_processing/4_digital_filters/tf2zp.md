# tf2zp

Convertit des coefficients de fonction de transfert en zéros-pôles-gain.

## 📝 Syntaxe

- [Z, P, K] = tf2zp(B, A)

## 📥 Argument d'entrée

- B - coefficients du numérateur, ou un numérateur par ligne.
- A - coefficients du dénominateur.

## 📤 Argument de sortie

- Z - zéros.
- P - pôles.
- K - gain.

## 📄 Description


<b>tf2zp</b> convertit des coefficients polynomiaux de filtre en représentation zéros-pôles-gain.

## 💡 Exemple



```matlab

[z, p, k] = tf2zp([1 2 1], [1 -0.5]);

```


## 🔗 Voir aussi

[zp2tf](../../signal_processing/4_digital_filters/zp2tf.md), [tf2sos](../../signal_processing/4_digital_filters/tf2sos.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
