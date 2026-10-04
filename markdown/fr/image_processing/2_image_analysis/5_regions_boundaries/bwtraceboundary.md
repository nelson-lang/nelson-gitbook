# bwtraceboundary

Trace les pixels de frontiere d un objet binaire.

## 📝 Syntaxe

- B = bwtraceboundary(BW, p)
- B = bwtraceboundary(BW, p, fstep, conn)
- B = bwtraceboundary(BW, p, fstep, conn, m)

## 📥 Argument d'entrée

- BW - Image binaire d'entree. Les valeurs non nulles sont traitees comme true.
- p - Point de depart de frontiere [row column].
- fstep - Premiere direction de recherche.
- conn - Connectivite, 4 ou 8.
- m - Nombre maximal de points de frontiere a renvoyer.

## 📤 Argument de sortie

- B - Coordonnees de frontiere sous forme de matrice N-by-2 [row column].

## 📄 Description

Trace les pixels de frontiere de l objet binaire qui contient le point de depart p = [ligne colonne]. Les connectivites prises en charge sont 4 et 8. La premiere direction de recherche peut etre N, NE, E, SE, S, SW, W ou NW en connectivite 8, et N, E, S ou W en connectivite 4.

## 💡 Exemple

Tracer la frontiere d un carre

```matlab
BW=false(64,64); BW(16:48,16:48)=true;
B=bwtraceboundary(BW, [16 16], 'E', 8);
figure; imagesc(BW); hold on; plot(B(:,2), B(:,1), 'r.'); title('Traced boundary');
```

<img src="bwtraceboundary_1.png" align="middle"/>

## 🔗 Voir aussi

[bwboundaries](../../../image_processing/bwboundaries.md), [bwperim](../../../image_processing/bwperim.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
