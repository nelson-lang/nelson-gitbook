# reckon

Point à une distance sphérique et un azimut donnés.

## 📝 Syntaxe

- [lat2, lon2] = reckon(lat1, lon1, arclen, az)

## 📥 Argument d'entrée

- lat1 - latitude du point de départ, en degrés.
- lon1 - longitude du point de départ, en degrés.
- arclen - distance sphérique à parcourir, en degrés d'arc.
- az - azimut de la direction de déplacement, en degrés dans le sens horaire depuis le nord.

## 📤 Argument de sortie

- lat2 - latitude du point d'arrivée, en degrés.
- lon2 - longitude du point d'arrivée, en degrés.

## 📄 Description


<b>reckon</b> calcule la latitude et la longitude atteintes en partant du point <b>(lat1, lon1)</b> et en parcourant la distance de grand cercle <b>arclen</b> selon l'azimut initial <b>az</b> sur une sphère. Tous les angles sont exprimés en degrés. Les entrées sont diffusées entre elles, de sorte qu'un point de départ scalaire peut être combiné avec des vecteurs de distances et d'azimuts.

## 💡 Exemple



```matlab
[lat, lon] = reckon(0, 0, 10, 90)
```


## 🔗 Voir aussi

[ellipse1](../geometry/ellipse1.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
