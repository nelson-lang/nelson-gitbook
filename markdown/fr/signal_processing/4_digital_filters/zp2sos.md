# zp2sos

Convertit une représentation zéros-pôles-gain en sections du second ordre.

## 📝 Syntaxe

- SOS = zp2sos(Z, P, K)

## 📥 Argument d'entrée

- Z - zéros.
- P - pôles.
- K - gain.

## 📤 Argument de sortie

- SOS - matrice de sections du second ordre.

## 📄 Description


<b>zp2sos</b> regroupe les zéros et pôles en sections du second ordre et applique le gain à la première section.

## 💡 Exemple



```matlab

sos = zp2sos([-1; -1], 0.5, 1);

```


## 🔗 Voir aussi

[sos2zp](../../signal_processing/4_digital_filters/sos2zp.md), [zp2tf](../../signal_processing/4_digital_filters/zp2tf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
