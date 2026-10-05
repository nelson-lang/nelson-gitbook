#import "../../nelson_help.typ": *

= compass <graphics:1_plots.5_vector_fields.compass>

Afficher des fleches depuis l'origine sur une grille polaire.

== Syntaxe

- #raw("compass(Z)");
- #raw("compass(U, V)");
- #raw("compass(..., LineSpec)");
- #raw("compass(..., nomPropriete, valeurPropriete)");
- #raw("compass(parent, ...)");
- #raw("h = compass(...)");

== Description

#strong[compass]; trace des fleches partant de l'origine vers les points cartesiens definis par les composantes fournies, sur une grille polaire.

 Avec une seule entree complexe #strong[Z];, les parties reelles sont les composantes horizontales et les parties imaginaires les composantes verticales; cela equivaut a #strong[compass(real(Z), imag(Z))];.

 Avec deux entrees reelles #strong[U]; et #strong[V];, chaque couple (U, V) est un point cartesien et la fleche va de l'origine vers ce point. Lorsque #strong[U]; et #strong[V]; sont des matrices, une fleche est tracee pour chaque element.

 Chaque vecteur est trace comme un objet #strong[Line]; compose d'une hampe partant de l'origine et d'une pointe de fleche a deux segments, sur une grille polaire de reference. #strong[h \= compass(...)]; retourne un vecteur colonne d'objets #strong[Line];, un par vecteur.


== Exemples

Afficher des fleches depuis des valeurs complexes.

``````matlab
Z = [1 + 2i, 2 - 1i, -1 + 1i];
compass(Z);
``````

Utiliser des composantes cartesiennes avec un style et des proprietes de ligne.

``````matlab
U = [1 3 2];
V = [2 1 -1];
h = compass(U, V, '-r');
set(h, 'LineWidth', 1.5);
``````


== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.compassplot>)[compassplot];, #nlink(<graphics:1_plots.5_vector_fields.feather>)[feather];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
