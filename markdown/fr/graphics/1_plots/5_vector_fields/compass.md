# compass

Afficher des fleches depuis l'origine sur une grille polaire.

## 📝 Syntaxe

- compass(Z)
- compass(U, V)
- compass(..., LineSpec)
- compass(..., nomPropriete, valeurPropriete)
- compass(parent, ...)
- h = compass(...)

## 📄 Description


<b>compass</b> trace des fleches partant de l'origine vers les points cartesiens definis par les composantes fournies, sur une grille polaire. 

Avec une seule entree complexe <b>Z</b>, les parties reelles sont les composantes horizontales et les parties imaginaires les composantes verticales; cela equivaut a <b>compass(real(Z), imag(Z))</b>. 

Avec deux entrees reelles <b>U</b> et <b>V</b>, chaque couple (U, V) est un point cartesien et la fleche va de l'origine vers ce point. Lorsque <b>U</b> et <b>V</b> sont des matrices, une fleche est tracee pour chaque element. 

Chaque vecteur est trace comme un objet <b>Line</b> compose d'une hampe partant de l'origine et d'une pointe de fleche a deux segments, sur une grille polaire de reference. <b>h = compass(...)</b> retourne un vecteur colonne d'objets <b>Line</b>, un par vecteur.

## 💡 Exemples

Afficher des fleches depuis des valeurs complexes.

```matlab
Z = [1 + 2i, 2 - 1i, -1 + 1i];
compass(Z);
```
Utiliser des composantes cartesiennes avec un style et des proprietes de ligne.

```matlab
U = [1 3 2];
V = [2 1 -1];
h = compass(U, V, '-r');
set(h, 'LineWidth', 1.5);
```


## 🔗 Voir aussi

[compassplot](../../../graphics/1_plots/5_vector_fields/compassplot.md), [feather](../../../graphics/1_plots/5_vector_fields/feather.md), [quiver](../../../graphics/1_plots/5_vector_fields/quiver.md).