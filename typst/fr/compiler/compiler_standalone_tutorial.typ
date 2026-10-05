#import "nelson_help.typ": *

= compiler\_standalone\_tutorial <compiler:compiler_standalone_tutorial>

Tutoriel : distribuer une application avec plusieurs sources et des donnees.

== Syntaxe

- #raw("ncc('options', AppFile, Name, Value, ...)");
- #raw("result = ncc(options)");

== Description

Ce tutoriel utilise les interfaces disponibles ncc et nelson.compiler. Le module optionnel compiler et ses lanceurs precompiles doivent etre installes. Aucun compilateur C++ n'est requis. Executer les quatre exemples suivants dans l'ordre, dans la meme session Nelson.

 L'exemple fourni contient trois fichiers dans #strong[modules\/compiler\/examples\/standalone]; : #strong[app\_entry.m]; accepte un argument de ligne de commande, le convertit explicitement avec str2double, lit factor.txt et appelle #strong[helper\_value.m];. La fonction auxiliaire multiplie par deux et factor.txt contient trois. L'entree 5 produit donc #strong[TUTORIAL\_RESULT\=30];.

 Le premier exemple prepare une copie de travail privee. Le second inclut explicitement factor.txt car son chemin est calcule relativement a mfilename('fullpath'). L'analyse statique selectionne la fonction auxiliaire. L'executable contient le bytecode applicatif (.nbc) et la ressource ; les fichiers .m d'origine ne sont plus necessaires a l'execution.

 La construction installed produit un executable sans dossier runtime. Le troisieme exemple selectionne l'installation Nelson courante compatible avec NELSONC\_RUNTIME\_ROOT, execute l'application puis restaure la variable d'environnement. L'architecture et l'empreinte du moteur doivent correspondre ; le numero de version seul ne suffit pas.

 Le quatrieme exemple modifie une copie des options pour utiliser bundled. Distribuer les deux chemins de bundledResult.Files : l'executable et le dossier .runtime voisin, en conservant leurs noms. C'est une distribution applicative portable, pas un installateur. Conserver les notices de licence du runtime.

 Examiner plan.runtime.modules et result.RuntimePlan pour comprendre la taille. Le mode bundled copie les dependances selectionnees. Les graphiques et les appels dynamiques insuffisamment resolus peuvent necessiter davantage de modules. Retirer des dependances sans analyse peut casser l'application deployee.

 Pour une application Windows sans console, definir #strong[NoConsole\=true]; et choisir un nouveau OutputDir ou ExecutableName. Utiliser #strong[Mode\='gui']; pour les graphiques ; NoConsole et le support graphique sont independants. Les callbacks des figures et uicontrol restent pris en charge par la boucle d'evenements tant que les fenetres applicatives existent.

 Construire sur chaque plateforme cible : Windows produit un .exe ; les autres plateformes prises en charge utilisent leur format executable natif. Le packaging utilise le moteur habituel et ne garantit ni acceleration des calculs ni temps de premier lancement particulier.

 Utiliser isdeployed pour distinguer l'execution deployee. ctfroot est un dossier d'extraction temporaire, supprime apres l'arret normal. Conserver les resultats persistants ailleurs. Le tutoriel garde le dossier work disponible pour inspection ; ne pas supprimer ni deplacer de fichiers d'installation sans rapport avec cet exemple.


== Exemples

1. Preparer l'exemple

``````matlab
ncc('--help');
work = tempname();
mkdir(work);
source = fullfile(work, 'source');
mkdir(source);
example = fullfile(modulepath('compiler'), 'examples', 'standalone');
for file = {'app_entry.m', 'helper_value.m', 'factor.txt'}
  copyfile(fullfile(example, file{1}), fullfile(source, file{1}));
end
``````

2. Analyser et construire avec un runtime installe

``````matlab
options = ncc('options', fullfile(source, 'app_entry.m'), ...
  'ExecutableName', 'application', 'ExecutableVersion', '2.0', ...
  'OutputDir', fullfile(work, 'installed'), 'RuntimeMode', 'installed', ...
  'AdditionalFiles', fullfile(source, 'factor.txt'));
plan = nelson.compiler.analyze(options);
disp(plan.runtime.modules);
result = ncc(options);
disp(result.Files);
``````

3. Executer l'application avec le runtime installe

``````matlab
previousRuntime = getenv('NELSONC_RUNTIME_ROOT');
restoreRuntime = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', previousRuntime));
setenv('NELSONC_RUNTIME_ROOT', nelsonroot());
[status, output] = system(['"', result.Executable, '" 5'], 60);
clear restoreRuntime;
if status ~= 0
  error(output);
end
disp(output);
``````

4. Construire et executer avec un runtime distribue

``````matlab
bundledOptions = options;
bundledOptions.RuntimeMode = 'bundled';
bundledOptions.OutputDir = fullfile(work, 'bundled');
bundledResult = ncc(bundledOptions);
disp(bundledResult.Files);
[status, output] = system(['"', bundledResult.Executable, '" 5'], 60);
if status ~= 0
  error(output);
end
disp(output);
``````


== Voir aussi

#nlink(<modules_manager:ncc>)[ncc];, #nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions];, #nlink(<compiler:nelson.compiler.BuildResult>)[nelson.compiler.BuildResult];, #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build];, #nlink(<compiler:nelson.compiler.analyze>)[nelson.compiler.analyze];, #nlink(<interpreter:isdeployed>)[isdeployed];, #nlink(<interpreter:ctfroot>)[ctfroot];.

// Auteur: Allan CORNET
