# squeeze

Supprimer les dimensions de longueur 1.

## 📝 Syntaxe

- B = squeeze(A)

## 📥 Argument d'entrée

- A - tableau d'entrée : tableau multidimensionnel

## 📤 Argument de sortie

- B - tableau de sortie.

## 📄 Description


<b>B = squeeze(A)</b> renvoie un tableau contenant les mêmes éléments que le tableau d'entrée A, mais dont les dimensions de longueur 1 ont été supprimées.

## 💡 Exemple



```matlab
 A = zeros(1, 1, 3);
A(:, :, 1:3) = [1 20 3];
R = squeeze(A)
```


## 🔗 Voir aussi

[reshape](../../elementary_functions/1_array_creation_shape/reshape.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
