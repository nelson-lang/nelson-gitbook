# tfdata

Accède aux données d'un modèle en fonction de transfert.

## 📝 Syntaxe

- [numerator, denominator] = tfdata(sys)
- [numerator, denominator, Ts] = tfdata(sys)
- sys = tf(numerator, denominator)
- sys = tf(numerator, denominator, Ts)

## 📥 Argument d'entrée

- sys - un modèle LTI.

## 📤 Argument de sortie

- numerator - coefficients du polynôme : un vecteur ligne ou un tableau de cellules de vecteurs ligne.
- denominator - coefficients du polynôme : un vecteur ligne ou un tableau de cellules de vecteurs ligne.
- Ts - Temps d'échantillonnage Ts, par défaut : en secondes

## 📄 Description

La fonction<b>tfdata(sys)</b> récupère les coefficients du numérateur et du dénominateur ainsi que le temps d'échantillonnage (si présent) du modèle de fonction de transfert.

## 💡 Exemple

```matlab
numerator = 10;
denominator = [20, 33, 44];
sys = tf(numerator, denominator)
[num, den] = tfdata(sys)
```

## 🔗 Voir aussi

[tf](../control_system/tf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
