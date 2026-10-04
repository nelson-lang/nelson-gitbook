# square

Signal carré.

## 📝 Syntaxe

- Y = square(T)
- Y = square(T, duty)

## 📥 Argument d'entrée

- T - valeurs de temps en radians.
- duty - rapport cyclique en pourcentage.

## 📤 Argument de sortie

- Y - valeurs du signal.

## 📄 Description

<b>square</b> génère un signal périodique à deux niveaux.

## 💡 Exemple

```matlab

y = square(0:0.1:2*pi, 25);

```

## 🔗 Voir aussi

[sawtooth](../../signal_processing/sawtooth.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
