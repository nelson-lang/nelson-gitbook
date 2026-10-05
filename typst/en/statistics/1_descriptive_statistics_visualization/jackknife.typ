#import "../nelson_help.typ": *

= jackknife <statistics:1_descriptive_statistics_visualization.jackknife>

Jackknife statistics.

== Syntax

- #raw("jackstat = jackknife(jackfun, X)");
- #raw("jackstat = jackknife(jackfun, X, Y, ...)");
- #raw("jackstat = jackknife(..., 'Options', options)");

== Description

#strong[jackknife]; evaluates a function on leave-one-out samples of nonscalar input data.


== Used function(s)

bootstrp bootci statset

== Examples

Compute leave-one-out estimates of the mean.

``````matlab
x = (1:5)';
jackstat = jackknife(@mean, x)
``````

Return several statistics for each jackknife sample.

``````matlab
x = (1:5)';
jackstat = jackknife(@jackknifeStats, x)

function y = jackknifeStats(x)
  y = [mean(x) std(x)];
end
``````

