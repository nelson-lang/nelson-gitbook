# ellipse1

Points d'une petite ellipse sur une sphère.

## 📝 Syntaxe

- [lat, lon] = ellipse1(lat0, lon0, ellipse)
- [lat, lon] = ellipse1(lat0, lon0, ellipse, offset)
- [lat, lon] = ellipse1(lat0, lon0, ellipse, offset, npts)

## 📥 Argument d'entrée

- lat0 - latitude du centre de l'ellipse, en degrés.
- lon0 - longitude du centre de l'ellipse, en degrés.
- ellipse - vecteur à deux éléments <b>[semimajor eccentricity]</b> ; le demi-grand axe est une distance sphérique en degrés d'arc.
- offset - azimut du demi-grand axe, en degrés (défaut 0).
- npts - nombre de points utilisés pour tracer l'ellipse (défaut 100).

## 📤 Argument de sortie

- lat - latitudes des points du contour de l'ellipse, en degrés.
- lon - longitudes des points du contour de l'ellipse, en degrés.

## 📄 Description


<b>ellipse1</b> renvoie la latitude et la longitude de points traçant une petite ellipse sur une sphère, centrée en <b>(lat0, lon0)</b>. L'ellipse est décrite par son demi-grand axe (une distance sphérique en degrés d'arc) et son excentricité. Une excentricité nulle produit un petit cercle dont le rayon est égal au demi-grand axe. Les points du contour sont obtenus avec <b>reckon</b>, de sorte que le premier et le dernier point coïncident.

## 💡 Exemple



```matlab
[lat, lon] = ellipse1(0, 0, [10 0.8], 30);
f = figure();
plot(lon, lat);
axis equal
```


## 🔗 Voir aussi

[reckon](../geometry/reckon.md), [axes2ecc](../geometry/axes2ecc.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
