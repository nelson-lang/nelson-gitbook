# sos2tf

Convertit des sections du second ordre en coefficients de fonction de transfert.

## 📝 Syntaxe

- [B, A] = sos2tf(SOS)

## 📥 Argument d'entrée

- SOS - matrice à six colonnes : b0, b1, b2, a0, a1, a2.

## 📤 Argument de sortie

- B - coefficients combinés du numérateur.
- A - coefficients combinés du dénominateur.

## 📄 Description

<b>sos2tf</b> multiplie les sections du second ordre en une fonction de transfert unique.

## 💡 Exemple

```matlab

[b, a] = sos2tf([1 2 1 1 -0.5 0]);

```

## 🔗 Voir aussi

[tf2sos](../../signal_processing/tf2sos.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
