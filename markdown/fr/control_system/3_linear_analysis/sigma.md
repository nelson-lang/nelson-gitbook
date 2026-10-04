# sigma

Reponse en valeurs singulieres d'un modele LTI.

## 📝 Syntaxe

- sigma(sys)
- sv = sigma(sys, w)
- [sv, wout] = sigma(sys, w)

## 📥 Argument d'entrée

- sys - Modele LTI.
- w - Vecteur de frequences en rad/s.

## 📤 Argument de sortie

- sv - Valeurs singulieres pour chaque frequence.
- wout - Vecteur de frequences.

## 📄 Description

<b>sigma</b> calcule les valeurs singulieres de la reponse frequentielle.

## 💡 Exemple

```matlab
sys = tf(2, [1 1]); [sv, w] = sigma(sys, [1 2 4])
```

## 🔗 Voir aussi

[freqresp](../../control_system/freqresp.md), [bode](../../control_system/bode.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
