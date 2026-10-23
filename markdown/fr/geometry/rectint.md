# rectint

Aire d'intersection de rectangles.

## 📝 Syntaxe

- out = rectint(A, B)

## 📥 Argument d'entrée

- A - une matrice M-par-4 ; chaque ligne est un rectangle <b>[x y width height]</b>.
- B - une matrice N-par-4 ; chaque ligne est un rectangle <b>[x y width height]</b>.

## 📤 Argument de sortie

- out - une matrice M-par-N ; <b>out(i, j)</b> est l'aire de l'intersection du rectangle <b>A(i, :)</b> et du rectangle <b>B(j, :)</b>.

## 📄 Description


<b>rectint</b> renvoie l'aire d'intersection de rectangles. Chaque rectangle est donné sous la forme d'une ligne à quatre éléments <b>[x y width height]</b>, où <b>(x, y)</b> est un coin et <b>width</b> et <b>height</b> sont les longueurs des côtés. Les rectangles qui ne se chevauchent pas contribuent une aire nulle.

## 💡 Exemple



```matlab
area = rectint([0 0 1 1], [0.5 0.5 1 1])
```


## 🔗 Voir aussi

[polyarea](../geometry/polyarea.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
