# isstable

Détermine si un filtre numérique est stable.

## 📝 Syntaxe

- tf = isstable(B, A)
- tf = isstable(SOS)

## 📥 Argument d'entrée

- B, A - coefficients de fonction de transfert.
- SOS - matrice de sections du second ordre.

## 📤 Argument de sortie

- tf - true si tous les pôles sont dans le cercle unité.

## 📄 Description


<b>isstable</b> vérifie les rayons des pôles d'un filtre numérique.

## 💡 Exemple



```matlab

tf = isstable([1], [1 -0.5]);

```


## 🔗 Voir aussi

[tf2zp](../../signal_processing/4_digital_filters/tf2zp.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
