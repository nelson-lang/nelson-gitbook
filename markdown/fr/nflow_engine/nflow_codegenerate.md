# nflow_codegenerate

Genere du code C ou Rust autonome depuis un modele nflow.

## 📝 Syntaxe

- nflow_codegenerate(model)
- nflow_codegenerate(model, destination)
- nflow_codegenerate(model, destination, includeMain)
- nflow_codegenerate(model, destination, includeMain, lang)
- r = nflow_codegenerate(model, destination, includeMain, lang, options)

## 📥 Argument d'entrée

- model - une chaine : chemin du fichier .nflow.
- destination - une chaine : repertoire de destination (un sous-repertoire au nom du modele est cree). Defaut : le repertoire du modele.
- includeMain - un logique : emet aussi un main executable (ecriture CSV) et l'echafaudage de build (CMakeLists.txt pour C, Cargo.toml pour Rust). Defaut : true.
- lang - une chaine : 'C' (defaut) ou 'rust'.
- options - une struct scalaire : champs 'build' (logique, compile le code genere via CMake / cargo), 'buildConfig' ('Release' par defaut), 'failOnWarning' (logique, transforme les warnings codegen en erreurs).

## 📤 Argument de sortie

- r - une struct : 'dir' (repertoire genere) et 'warnings' (cell des warnings codegen, p. ex. une retrogradation de solveur).

## 📄 Description

<b>nflow_codegenerate</b> abaisse un diagramme nflow en <b>C</b> ou <b>Rust</b> autonome sans dependance runtime : une struct <code>ModelState</code>, <code>nflow_init</code> / <code>nflow_step</code> / <code>nflow_terminate</code>, un champ <code>ModelInput</code> par label source externe et un champ <code>ModelOutput</code> par label sink externe (et par <code>fileSink</code>).

<b>Solveurs.</b> Pas fixe <code>ode1</code> (Euler avant par bloc) et <code>ode4</code> (un Runge–Kutta 4 global sur l'etat continu empaquete), plus l'adaptatif embarque <code>ode45</code> (Dormand–Prince 5(4)). Sous <code>ode4</code> / <code>ode45</code>, les surfaces de zero-crossing (integrateur borne, saturation, zone morte, switch, step) sont localisees par bissection exactement comme le simulateur. Les solveurs runtime-only (<code>dae</code>, ...) sont rejetes. Quand un bloc ne peut pas rejoindre le schema RK4, le modele est retrograde en Euler avec un warning <code>solverDowngrade</code> explicite ; <code>ode1</code> avertit que les croisements ne sont pas localises.

<b>Couverture.</b> Discret, math, logique, lookup (splines incluses), routage, abaissement bus et complexes, quantification des petits entiers/booleens, voies entieres 64 bits exactes, blocs discrets multi-cadence, ilots acausaux (lineaires, Newton embarque et mecanique plane sans joints), et sous-systemes conditionnels (gates enable, trigger, reset, action). Les constructions non supportees sont rejetees avec un message type nommant le bloc fautif, jamais de code silencieusement faux.

<b>Verification.</b> Le code genere est valide localement par le harnais numerique (<code>nflow_codegen_check_numeric</code>) : compiler, executer, et comparer les trajectoires echantillon par echantillon contre <code>**nflow_simulate**</code>.

## 💡 Exemple

Generer du C, puis du Rust, depuis un fichier modele.

```matlab
% model = 'C:/models/lowpass.nflow';
% nflow_codegenerate(model, tempdir(), true, 'C');
% nflow_codegenerate(model, tempdir(), true, 'rust');
% r = nflow_codegenerate(model, tempdir(), true, 'C', struct('build', true));
```

## 🔗 Voir aussi

[sim](../nflow_engine/sim.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
