# margin

Marges de gain et de phase d'un système LTI SISO.

## 📝 Syntaxe

- margin(sys)
- [Gm, Pm, Wcg, Wcp] = margin(sys)
- [Gm, Pm, Wcg, Wcp] = margin(mag, phase, w)

## 📥 Argument d'entrée

- sys - un modèle LTI SISO.
- mag - amplitude de la réponse en fréquence (valeurs absolues).
- phase - phase de la réponse en fréquence, en degrés.
- w - fréquences, en rad/s.

## 📤 Argument de sortie

- Gm - marge de gain (valeur absolue), égale à 1/\|G(j\*Wcg)\|.
- Pm - marge de phase, en degrés.
- Wcg - pulsation de passage de phase (rad/s), là où la phase vaut -180 degrés.
- Wcp - pulsation de passage de gain (rad/s), là où l'amplitude vaut 1 (0 dB).

## 📄 Description


<b>margin</b> calcule la marge de gain, la marge de phase et les pulsations de passage associées d'un modèle en boucle ouverte SISO <b>sys.</b> 

La marge de gain <b>Gm</b> est renvoyée en valeur absolue (pas en décibels) ; c'est le facteur par lequel le gain en boucle ouverte peut être augmenté avant que la boucle fermée ne devienne instable. 

La marge de phase <b>Pm</b> est exprimée en degrés ; c'est le retard de phase supplémentaire nécessaire pour atteindre l'instabilité. 

Lorsqu'une marge est infinie, <b>Gm</b> ou <b>Pm</b> vaut <b>Inf.</b> La pulsation de passage de phase <b>Wcg</b> vaut <b>Inf</b> lorsque la phase n'atteint -180 degrés qu'à fréquence infinie (système continu de degré relatif supérieur ou égal à deux), et <b>NaN</b> lorsqu'il n'y a aucun passage de phase. 

La forme <b>margin(mag, phase, w)</b> calcule les marges directement à partir de données de réponse en fréquence obtenues par ailleurs. 

Appelée sans argument de sortie, <b>margin(sys)</b> trace le diagramme de Bode du système.

## 💡 Exemple



```matlab
H = tf(1, [1 3 2 0]);
[Gm, Pm, Wcg, Wcp] = margin(H)
```


## 🔗 Voir aussi

[bode](../../control_system/3_linear_analysis/bode.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
