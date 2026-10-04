# tf2sos

Convertit des coefficients de fonction de transfert en sections du second ordre.

## 📝 Syntaxe

- SOS = tf2sos(B, A)

## 📥 Argument d'entrée

- B - coefficients du numérateur.
- A - coefficients du dénominateur.

## 📤 Argument de sortie

- SOS - matrice de sections du second ordre.

## 📄 Description

<b>tf2sos</b> convertit des coefficients de fonction de transfert en une matrice dont les lignes contiennent les coefficients de chaque section.

## 💡 Exemple

```matlab

sos = tf2sos([1 2 1], [1 -0.5]);

```

## 🔗 Voir aussi

[sos2tf](../../signal_processing/sos2tf.md), [zp2sos](../../signal_processing/zp2sos.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
