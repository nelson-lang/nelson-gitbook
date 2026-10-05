# mag2db

Convertit une magnitude en décibels (dB).

## 📝 Syntaxe

- db = mag2db(mag)

## 📥 Argument d'entrée

- mag - tableau d'entrée : scalaire, vecteur ou matrice.

## 📤 Argument de sortie

- db - valeurs correspondantes en décibels

## 📄 Description


<b>db = mag2db(mag)</b> convertit les valeurs de magnitude en décibels (dB). 

La formule de conversion est : 
$$\text{dB} = 20 \log_{10}(\text{magnitude})$$
 

Cette conversion est couramment utilisée en traitement du signal, acoustique et électronique pour exprimer les rapports sur une échelle logarithmique.

## 💡 Exemple



```matlab
DB = mag2db([1, 0.01])
```


## 🔗 Voir aussi

[db2mag](../../signal_processing/5_spectral_analysis/db2mag.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
