# evalfr

Évalue la réponse en fréquence à une fréquence donnée.

## 📝 Syntaxe

- frsp = evalfr(sys, f)

## 📥 Argument d'entrée

- sys - Modèle LTI
- f - fréquence unique

## 📤 Argument de sortie

- frsp - réponse en fréquence

## 📄 Description


La fonction <b>evalfr(sys, f)</b> calcule la valeur de la fonction de transfert pour un modèle de système donné représenté par <b>sys</b> au nombre complexe <b>f</b>.

## 💡 Exemple



```matlab
numerator = {[2, 0], [1, 3]};
denominator = {[4, 0, 3, -1], [1 , 3, 5]};
sys = tf(numerator, denominator);
z = 1 + j;
frsp = evalfr(sys, z)
```


## 🔗 Voir aussi

[bode](../../control_system/3_linear_analysis/bode.md), [freqresp](../../control_system/3_linear_analysis/freqresp.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
