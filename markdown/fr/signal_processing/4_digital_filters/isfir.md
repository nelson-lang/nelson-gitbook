# isfir

Détermine si un filtre numérique est FIR.

## 📝 Syntaxe

- tf = isfir(B, A)

## 📥 Argument d'entrée

- B - coefficients du numérateur.
- A - coefficients du dénominateur.

## 📤 Argument de sortie

- tf - true si le filtre est à réponse impulsionnelle finie.

## 📄 Description


<b>isfir</b> teste si le dénominateur ne contient pas de partie récursive.

## 💡 Exemple



```matlab

tf = isfir([1 2 3], 1);

```


## 🔗 Voir aussi

[filtord](../../signal_processing/4_digital_filters/filtord.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
