# append

Ajoute les entrées et sorties des deux modèles.

## 📝 Syntaxe

- sys = append(sys1, sys2, ..., sysN)

## 📥 Argument d'entrée

- sys1, sys2, ..., sysN - Modèles LTI.

## 📤 Argument de sortie

- sys - Modèle LTI.

## 📄 Description

<b>sys = append(sys1, sys2, ..., sysN)</b> combine les entrées et sorties des modèles <b>sys1</b> à <b>sysN</b>, créant un modèle augmenté représenté par <b>sys</b>.

## 💡 Exemple

```matlab
sys1 = tf(1,[1 0]);
sys2 = tf([1 -1], [4 2]);
sys = append(sys1, 10, sys2)

```

## 🔗 Voir aussi

[feedback](../../control_system/feedback.md), [series](../../control_system/series.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
