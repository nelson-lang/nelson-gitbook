# zp2tf

Conversion zéros-pôles en fonction de transfert.

## 📝 Syntaxe

- [NUM, DEN] = zp2tf(Z, P, K)

## 📥 Argument d'entrée

- Z - Positions des zéros, organisées en colonnes pour chaque sortie du système.
- P - Positions des pôles, enregistrées en tant que vecteur colonne.
- K - Gains.

## 📤 Argument de sortie

- NUM - Coefficients du numérateur, organisés par lignes correspondant à chaque sortie du système.
- DEN - Coefficients du dénominateur, disposés en tant que vecteur ligne.

## 📄 Description


<b>[NUM, DEN] = zp2tf(Z, P, K)</b> renvoie la représentation polynomiale de la fonction de transfert à partir des zéros et des pôles.

## 📚 Bibliographie

zpk2tf implémentation scipy (MIT)

## 💡 Exemple



```matlab
p = [0.5;complex(0.45, 0.5);complex(0.45, -0.5)];
z = [-1;complex(0, 1);complex(0, -1)];
k = 1;
[n, d] = zp2tf(z, p, k)
```


## 🔗 Voir aussi

[tf](../../control_system/1_dynamic_system_models/tf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | exemple de documentation executable en CLI |

<!--
## 👤 Auteur

Allan CORNET
-->
