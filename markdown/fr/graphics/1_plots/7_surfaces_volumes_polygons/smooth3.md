# smooth3

Lisser des donnees 3-D.

## 📝 Syntaxe

- W = smooth3(V)
- W = smooth3(V, method)
- W = smooth3(V, method, windowSize)
- W = smooth3(V, method, windowSize, sd)

## 📥 Argument d'entrée

- V - Donnees volumiques 3-D reelles numeriques ou logiques.
- method - Methode de lissage : 'box' ou 'gaussian'. La valeur par defaut est 'box'.
- windowSize - Scalaire entier impair positif ou vecteur a trois elements. La valeur par defaut est [3 3 3].
- sd - Ecart type positif pour la methode gaussian. La valeur par defaut est 0.65.

## 📤 Argument de sortie

- W - Tableau double lisse de meme taille que V.

## 📄 Description


<b>smooth3</b> lisse des donnees volumiques avec un noyau 3-D separable box ou gaussian et des valeurs de bord repliquees.

## 💡 Exemple

Lisser un petit volume avec un noyau gaussian.

```matlab
V = rand(10, 10, 10);
W = smooth3(V, 'gaussian', 5);
```


## 🔗 Voir aussi

[isosurface](../../../graphics/1_plots/7_surfaces_volumes_polygons/isosurface.md), [isonormals](../../../graphics/1_plots/7_surfaces_volumes_polygons/isonormals.md), [patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md).