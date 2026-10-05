#import "nelson_help.typ": *

= nflow\_codegenerate <nflow_engine:nflow_codegenerate>

Genere du code C ou Rust autonome depuis un modele nflow.

== Syntaxe

- #raw("nflow_codegenerate(model)");
- #raw("nflow_codegenerate(model, destination)");
- #raw("nflow_codegenerate(model, destination, includeMain)");
- #raw("nflow_codegenerate(model, destination, includeMain, lang)");
- #raw("r = nflow_codegenerate(model, destination, includeMain, lang, options)");

== Argument d'entrée

/ model: une chaine : chemin du fichier .nflow.
/ destination: une chaine : repertoire de destination (un sous-repertoire au nom du modele est cree). Defaut : le repertoire du modele.
/ includeMain: un logique : emet aussi un main executable (ecriture CSV) et l'echafaudage de build (CMakeLists.txt pour C, Cargo.toml pour Rust). Defaut : true.
/ lang: une chaine : 'C' (defaut) ou 'rust'.
/ options: une struct scalaire : champs 'build' (logique, compile le code genere via CMake \/ cargo), 'buildConfig' ('Release' par defaut), 'failOnWarning' (logique, transforme les warnings codegen en erreurs).

== Argument de sortie

/ r: une struct : 'dir' (repertoire genere) et 'warnings' (cell des warnings codegen, p. ex. une retrogradation de solveur).

== Description

#strong[nflow\_codegenerate]; abaisse un diagramme nflow en #strong[C]; ou #strong[Rust]; autonome sans dependance runtime : une struct #raw("ModelState");, #raw("nflow_init"); \/ #raw("nflow_step"); \/ #raw("nflow_terminate");, un champ #raw("ModelInput"); par label source externe et un champ #raw("ModelOutput"); par label sink externe (et par #raw("fileSink");).

 #strong[Solveurs.]; Pas fixe #raw("ode1"); (Euler avant par bloc) et #raw("ode4"); (un Runge–Kutta 4 global sur l'etat continu empaquete), plus l'adaptatif embarque #raw("ode45"); (Dormand–Prince 5(4)). Sous #raw("ode4"); \/ #raw("ode45");, les surfaces de zero-crossing (integrateur borne, saturation, zone morte, switch, step) sont localisees par bissection exactement comme le simulateur. Les solveurs runtime-only (#raw("dae");, ...) sont rejetes. Quand un bloc ne peut pas rejoindre le schema RK4, le modele est retrograde en Euler avec un warning #raw("solverDowngrade"); explicite ; #raw("ode1"); avertit que les croisements ne sont pas localises.

 #strong[Couverture.]; Discret, math, logique, lookup (splines incluses), routage, abaissement bus et complexes, quantification des petits entiers\/booleens, voies entieres 64 bits exactes, blocs discrets multi-cadence, ilots acausaux (lineaires, Newton embarque et mecanique plane sans joints), et sous-systemes conditionnels (gates enable, trigger, reset, action). Les constructions non supportees sont rejetees avec un message type nommant le bloc fautif, jamais de code silencieusement faux.

 #strong[Verification.]; Le code genere est valide localement par le harnais numerique (#raw("nflow_codegen_check_numeric");) : compiler, executer, et comparer les trajectoires echantillon par echantillon contre #raw("__nflow_simulate__");.


== Exemple

Generer du C, puis du Rust, depuis un fichier modele.

``````matlab
% model = 'C:/models/lowpass.nflow';
% nflow_codegenerate(model, tempdir(), true, 'C');
% nflow_codegenerate(model, tempdir(), true, 'rust');
% r = nflow_codegenerate(model, tempdir(), true, 'C', struct('build', true));
``````


== Voir aussi

#nlink(<nflow_engine:sim>)[sim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
