# zero

Zéros et gain d'un système SISO.

## 📝 Syntaxe

- Z = zero(sys)
- [Z, gain] = zero(sys)

## 📥 Argument d'entrée

- sys - un modèle LTI.

## 📤 Argument de sortie

- Z - Zéros du système dynamique.
- gain - Zero-pole-gain du système dynamique.

## 📄 Description

<b>[Z, gain] = zero(sys)</b> renvoie les zéros et le gain du système SISO fourni.

## 💡 Exemple

```matlab
sys = tf([4.2,0.25,-0.004],[1,9.6,17]);
[Z, gain] = zero(sys)
```

## 🔗 Voir aussi

[pole](../control_system/pole.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
