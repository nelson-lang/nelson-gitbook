# dcgain

Gain en basse fréquence (DC) du système LTI.

## 📝 Syntaxe

- k = dcgain(sys)

## 📥 Argument d'entrée

- sys - un modèle LTI.

## 📤 Argument de sortie

- k - Gain DC.

## 📄 Description


<b>k = dcgain(sys)</b> calcule le gain DC <b>k</b> du modèle LTI sys.

## 💡 Exemple



```matlab
A = [1 2; 3 4];
B = [1 0; 0 1];
C = [1 1; 1 1];
D = [0 0; 0 0];
sys = ss(A, B, C, D);
K = dcgain(sys)
```


## 🔗 Voir aussi

[tf](../../control_system/1_dynamic_system_models/tf.md), [ss](../../control_system/1_dynamic_system_models/ss.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
