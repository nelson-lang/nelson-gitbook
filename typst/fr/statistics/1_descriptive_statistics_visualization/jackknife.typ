#import "../nelson_help.typ": *

= jackknife <statistics:1_descriptive_statistics_visualization.jackknife>

Statistiques jackknife.

== Syntaxe

- #raw("jackstat = jackknife(jackfun, X)");
- #raw("jackstat = jackknife(jackfun, X, Y, ...)");
- #raw("jackstat = jackknife(..., 'Options', options)");

== Description

#strong[jackknife]; evalue une fonction sur des echantillons obtenus en supprimant une observation.


== Fonction(s) utilisée(s)

bootstrp bootci statset

== Exemples

Calculer les estimations leave-one-out de la moyenne.

``````matlab
x = (1:5)';
jackstat = jackknife(@mean, x)
``````

Retourner plusieurs statistiques pour chaque echantillon jackknife.

``````matlab
x = (1:5)';
jackstat = jackknife(@jackknifeStats, x)

function y = jackknifeStats(x)
  y = [mean(x) std(x)];
end
``````

