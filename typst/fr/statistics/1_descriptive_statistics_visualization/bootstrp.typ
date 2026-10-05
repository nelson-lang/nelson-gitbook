#import "../nelson_help.typ": *

= bootstrp <statistics:1_descriptive_statistics_visualization.bootstrp>

Echantillonnage bootstrap.

== Syntaxe

- #raw("bootstat = bootstrp(nboot, bootfun, d)");
- #raw("bootstat = bootstrp(nboot, bootfun, d1, ..., dN)");
- #raw("[bootstat, bootsam] = bootstrp(...)");
- #raw("[bootstat, bootsam] = bootstrp(nboot, [], d)");

== Argument d'entrée

/ nboot: entier positif indiquant le nombre d'echantillons bootstrap.
/ bootfun: fonction appliquee a chaque echantillon bootstrap. Utilisez une valeur vide pour retourner seulement les indices.
/ d: vecteur ou matrice numerique ou logique. Les lignes sont tirees avec remise.

== Argument de sortie

/ bootstat: statistiques bootstrap, une ligne par echantillon.
/ bootsam: indices tires, une colonne par echantillon bootstrap.

== Description

#strong[bootstrp]; tire des echantillons bootstrap avec le generateur aleatoire de Nelson et applique une fonction statistique a chaque echantillon.


== Fonction(s) utilisée(s)

bootci jackknife randsample rng

== Exemple

Moyennes bootstrap.

``````matlab
rng('default');
[bootstat, bootsam] = bootstrp(20, @mean, (1:10)')
``````

