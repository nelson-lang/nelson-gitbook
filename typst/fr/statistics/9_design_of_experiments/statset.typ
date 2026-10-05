#import "../nelson_help.typ": *

= statset <statistics:9_design_of_experiments.statset>

Creer ou modifier des structures d'options statistiques.

== Syntaxe

- #raw("options = statset()");
- #raw("options = statset(statfun)");
- #raw("options = statset(Name, Value, ...)");
- #raw("options = statset(oldOptions, Name, Value, ...)");

== Argument d'entrée

/ statfun: nom de fonction statistique utilise pour initialiser les valeurs par defaut, par exemple 'kmeans'.
/ Name, Value: noms d'options et valeurs. Les noms peuvent etre abreges lorsque l'abreviation est unique.
/ oldOptions: structure scalaire d'options existante a modifier ou fusionner.

== Argument de sortie

/ options: structure scalaire contenant les champs d'options statistiques.

== Description

#strong[statset]; cree une structure scalaire avec des options statistiques communes. La structure peut etre transmise aux fonctions qui acceptent un argument nom-valeur #strong[Options];.

 Les champs d'options paralleles et de flux sont acceptes par les fonctions statistiques qui les prennent en charge. L'execution peut rester sequentielle lorsqu'une fonction n'utilise pas d'evaluation parallele. #strong[Streams]; peut contenir un objet #strong[RandStream]; ou un tableau de cellules de flux.


== Fonction(s) utilisée(s)

statget kmeans

== Exemples

Creer les options par defaut pour kmeans.

``````matlab
opts = statset('kmeans');
opts.Display
opts.MaxIter
``````

Modifier une structure d'options et l'utiliser avec kmeans.

``````matlab
X = [0 0; 0 1; 5 5; 5 6];
opts = statset('kmeans', 'Display', 'final', 'MaxIter', 20);
[idx, C] = kmeans(X, 2, 'Start', [0 0; 5 5], 'Options', opts)
``````

Definir les champs d'options paralleles.

``````matlab
opts = statset('UseParallel', true, 'UseSubstreams', true, 'Streams', {});
statget(opts, 'UseParallel')
``````

