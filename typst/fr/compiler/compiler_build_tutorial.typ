#import "nelson_help.typ": *

= compiler\_build\_tutorial <compiler:compiler_build_tutorial>

Tutoriel : construire des applications avec et sans console.

== Syntaxe

- #raw("result = compiler.build.standaloneApplication(options)");
- #raw("result = compiler.build.standaloneWindowsApplication(options)");

== Description

Executer les trois blocs dans l'ordre, dans la meme session. Cet exemple construit une application a plusieurs fonctions et embarque son fichier factor.txt. Chaque executable affiche TUTORIAL\_RESULT\=30 pour l'entree 5.

 L'application avec console est native a la plateforme courante. Sous Windows, la seconde construction cree un executable distinct du sous-systeme Windows, sans demander de services graphiques pour cet exemple numerique.

 Chaque dossier de sortie contient un executable, readme.txt et le rapport de construction buildresult.json, pas de runtime ni d'installateur. Results.Files contient l'executable et readme.txt, ainsi que le .nca pour la variante externe. Distribuer ce dernier a cote de son executable, avec le meme nom de base. Le dernier bloc choisit l'installation Nelson courante comme runtime compatible. Sur une autre machine, installer un runtime compatible et definir NELSONC\_RUNTIME\_ROOT vers sa racine.

 RuntimeDependencies.Required est l'inventaire capture des fichiers runtime ; le consulter ne les copie pas. Le code applicatif retenu et factor.txt sont deja dans l'executable ou son archive externe : le dossier source copie n'est pas requis a l'execution.

 Les effets des options restantes restent a implementer. Les installateurs Windows d'applications et de runtime minimal partage sont decrits dans compiler\_installer\_tutorial et compiler\_runtime\_tutorial. Le mode ncc avec runtime adjacent est decrit dans compiler\_standalone\_tutorial.

 TreatInputsAsNumeric transmet l'entree 5 comme un double a app\_entry. L'exemple fourni accepte aussi le texte lorsque l'option est false. Une entree numerique invalide donne NaN ; les applications doivent valider leurs entrees avant le calcul.

 SupportPackages filtre les dependances nmm installees ; cet exemple utilise none car ses sources ne requierent aucun paquet externe.


== Exemples

1. Preparer les fichiers source

``````matlab
ncc('--help');
work = tempname();
mkdir(work);
source = fullfile(work, 'source');
mkdir(source);
example = fullfile(modulepath('compiler'), 'examples', 'standalone');
for name = {'app_entry.m', 'helper_value.m', 'factor.txt', 'app_icon.png'}
  copyfile(fullfile(example, name{1}), source);
end
``````

2. Construire et inspecter les resultats

``````matlab
options = compiler.build.StandaloneApplicationOptions(fullfile(source, 'app_entry.m'), ...
  'AdditionalFiles', fullfile(source, 'factor.txt'), ...
  'RuntimeLogFile', 'application.log', ...
  'TreatInputsAsNumeric', true, ...
  'SupportPackages', 'none', ...
  'OutputDir', fullfile(work, 'console'));
if ispc()
  options.ExecutableIcon = fullfile(source, 'app_icon.png');
end
result = compiler.build.standaloneApplication(options);
disp(result.Files);
disp(height(result.RuntimeDependencies.Required));
reportPath = fullfile(result.Options.OutputDir, 'buildresult.json');
report = jsondecode(fileread(reportPath));
disp(report.applicationName);
options.EmbedArchive = false;
options.OutputDir = fullfile(work, 'external');
external = compiler.build.standaloneApplication(options);
disp(external.Files);
options.EmbedArchive = true;
windowed = [];
if ispc()
  options.OutputDir = fullfile(work, 'windowed');
  windowed = compiler.build.standaloneWindowsApplication(options);
end
``````

3. Executer avec un runtime installe

``````matlab
previousRuntime = getenv('NELSONC_RUNTIME_ROOT');
restoreRuntime = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', previousRuntime));
setenv('NELSONC_RUNTIME_ROOT', nelsonroot());
applications = {result, external};
if ispc()
  applications{end + 1} = windowed;
end
for k = 1:numel(applications)
  executable = applications{k}.Files{1};
  [status, output] = system(['"', executable, '" 5'], 60);
  if status ~= 0
    error(output);
  end
  disp(output);
  logText = fileread(fullfile(applications{k}.Options.OutputDir, 'application.log'));
  asserts.istrue(contains(logText, 'TUTORIAL_RESULT=30'));
  disp(logText);
end
clear restoreRuntime;
``````


== Voir aussi

#nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions];, #nlink(<compiler:compiler.build.Results>)[compiler.build.Results];, #nlink(<compiler:compiler.runtime.Dependencies>)[compiler.runtime.Dependencies];, #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial];.

// Auteur: Allan CORNET
