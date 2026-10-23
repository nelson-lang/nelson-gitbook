# zpk

Construit un modèle zéros-pôles-gain.

## 📝 Syntaxe

- sys = zpk()
- sys = zpk('s')
- sys = zpk(z, p, k)
- sys = zpk(z, p, k, Ts)
- sys = zpk(sysIn)

## 📥 Argument d'entrée

- z - zéros : un vecteur (ou un tableau de cellules de vecteurs).
- p - pôles : un vecteur (ou un tableau de cellules de vecteurs).
- k - gain scalaire.
- Ts - Temps d'échantillonnage Ts, par défaut : en secondes
- sysIn - modèle LTI.

## 📤 Argument de sortie

- sys - Modèle zéros-pôles-gain de sortie.

## 📄 Description


<b>sys = zpk(z, p, k)</b> crée un modèle zéros-pôles-gain en temps continu. 

Le modèle représente la fonction de transfert <b>k \* (s - z(1))...(s - z(end)) / ((s - p(1))...(s - p(end)))</b> où <b>z</b> sont les zéros, <b>p</b> les pôles et <b>k</b> le gain scalaire. 

Lorsque vous incluez le paramètre <b>Ts</b>, il permet de créer un modèle zéros-pôles-gain en temps discret. 

<b>sys = zpk(sysIn)</b> convertit le modèle LTI <b>sysIn</b> (<b>tf</b> ou <b>ss</b>) en un modèle zéros-pôles-gain. 

Les zéros et pôles complexes d'un système réel doivent être fournis par paires conjuguées. Le modèle est affiché sous forme factorisée.

## 💡 Exemples



```matlab
z = -1;
p = [-2 -3];
k = 5;
sys = zpk(z, p, k)
```


```matlab
sys = zpk(-1, [-2 -3], 5);
G = tf(sys)
```


## 🔗 Voir aussi

[tf](../../control_system/1_dynamic_system_models/tf.md), [ss](../../control_system/1_dynamic_system_models/ss.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
