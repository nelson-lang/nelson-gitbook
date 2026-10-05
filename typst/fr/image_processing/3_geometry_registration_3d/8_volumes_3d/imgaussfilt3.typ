#import "../../nelson_help.typ": *

= imgaussfilt3 <image_processing:3_geometry_registration_3d.8_volumes_3d.imgaussfilt3>

Filtre un volume 3-D avec un noyau gaussien.

== Syntaxe

- #raw("B = imgaussfilt3(A)");
- #raw("B = imgaussfilt3(A, sigma)");
- #raw("B = imgaussfilt3(__, 'FilterSize', filterSize)");
- #raw("B = imgaussfilt3(__, 'Padding', pad)");
- #raw("B = imgaussfilt3(__, 'FilterDomain', domain)");

== Argument d'entrée

/ A: Volume 3-D numerique ou logique. Les volumes numeriques complexes sont filtres en appliquant le meme noyau separable aux parties reelle et imaginaire.
/ sigma: Ecart-type du noyau gaussien. Il peut etre un scalaire positif ou un vecteur a trois elements. La valeur par defaut est 0.5.
/ 'FilterSize': Scalaire impair positif ou vecteur a trois elements qui definit la taille du noyau. Par defaut, la taille est deduite de sigma.
/ 'Padding': Mode de gestion des bords : 'replicate', 'symmetric', 'circular', ou une valeur scalaire finie de remplissage.
/ 'FilterDomain': Accepte pour compatibilite. L'implementation courante utilise une convolution separable spatiale.

== Argument de sortie

/ B: Volume 3-D filtre, de meme taille que A.

== Description

Filtre un volume 3-D numerique ou logique avec un noyau gaussien separable. Les volumes numeriques complexes sont pris en charge en filtrant de facon coherente les parties reelle et imaginaire. Sigma peut etre scalaire ou un vecteur a trois elements. Padding peut valoir replicate, symmetric, circular, ou une valeur scalaire finie.


== Exemple

Lisser un volume 3-D synthetique

``````matlab
V = zeros(21, 21, 9);
V(8:14, 8:14, 4:6) = 1;
B = imgaussfilt3(V, 1.0, 'FilterSize', [5 5 5], 'Padding', 0);
B(:, :, 5)
``````


== Voir aussi

#nlink(<image_processing:1_image_basics.3_filtering_edges.imgaussfilt>)[imgaussfilt];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref3d>)[imref3d];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
