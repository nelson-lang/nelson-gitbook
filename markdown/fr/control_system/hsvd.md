# hsvd

Décomposition en valeurs singulières de Hankel.

## 📝 Syntaxe

- hsv = hsvd(sys)

## 📥 Argument d'entrée

- sys - Modèle d'état-espace

## 📤 Argument de sortie

- hsv - Valeurs singulières de Hankel.

## 📄 Description

<b>hsv = hsvd(sys)</b> calcule les valeurs singulières de Hankel (hsv) pour le système dynamique <b>sys</b>.

Ces valeurs singulières sont calculées dans des coordonnées d'état qui équilibrent les transferts d'énergie de l'entrée vers l'état et de l'état vers la sortie.

Les valeurs singulières de Hankel servent de mesure de l'impact de chaque état sur les caractéristiques d'entrée/sortie du système.

À l'instar de la façon dont les valeurs singulières sont liées au rang d'une matrice, de petites valeurs singulières de Hankel indiquent des états qui peuvent être omis pour rationaliser le modèle et simplifier sa représentation.

## 💡 Exemple

```matlab
A = [ -0.04165  0.0000  4.9200  -4.9200  0.0000  0.0000  0.0000;
-5.2100  -12.500  0.0000   0.0000  0.0000  0.0000  0.0000;
0.0000   3.3300 -3.3300   0.0000  0.0000  0.0000  0.0000;
0.5450   0.0000  0.0000   0.0000 -0.5450  0.0000  0.0000;
0.0000   0.0000  0.0000   4.9200 -0.04165 0.0000  4.9200;
0.0000   0.0000  0.0000   0.0000 -5.2100 -12.500  0.0000;
0.0000   0.0000  0.0000   0.0000  0.0000  3.3300 -3.3300];

B = [  0.0000   0.0000;
12.5000   0.0000;
0.0000   0.0000;
0.0000   0.0000;
0.0000   0.0000;
0.0000   12.500;
0.0000   0.0000];

C = [  1.0000   0.0000  0.0000   0.0000  0.0000  0.0000  0.0000
0.0000   0.0000  0.0000   1.0000  0.0000  0.0000  0.0000
0.0000   0.0000  0.0000   0.0000  1.0000  0.0000  0.0000];

D = [];

sys = ss(A, B, C, D);
hsv = hsvd(sys)
```

## 🔗 Voir aussi

[balreal](../control_system/balreal.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
