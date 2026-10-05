#import "nelson_help.typ": *

= compiler\_linux\_installer\_tutorial <compiler:compiler_linux_installer_tutorial>

Construire, installer et supprimer une application Linux.

== Syntaxe

- #raw("compiler.package.installer(result, 'Options', options)");

== Description

Executer les quatre blocs dans une meme session Nelson sous Linux, avec un utilisateur ordinaire. La generation demande Bash 4 ou ulterieur, GNU tar, gzip et les utilitaires de base GNU. Le fichier .install est autonome : son installation ne demande pas Nelson sur la machine cible. L'application demande toujours un systeme Linux et une architecture compatibles.

 Le premier bloc construit une application console. Le deuxieme prepare l'application et son runtime minimal pour une distribution hors ligne. Le troisieme installe dans un dossier temporaire prive, execute sans runtime selectionne de l'exterieur puis supprime l'application installee. La sortie attendue est LINUX\_INSTALLER\_TUTORIAL\_OK. Aucun privilege administrateur, raccourci global ou changement d'environnement n'est necessaire.

 Distribuer le fichier .install en conservant sa permission executable. Le lancer avec #strong[-agreeToLicense yes]; en premier, puis #strong[-applicationFolder]; suivi du chemin absolu de destination. Son dossier parent doit deja exister et etre accessible en ecriture. #strong[-outputFile]; sauvegarde aussi la sortie console dans un nouveau fichier. L'installation interactive n'est pas encore disponible.

 Il est aussi possible d'utiliser #strong[-inputFile]; suivi d'un fichier de controle UTF-8 contenant une paire cle\=valeur par ligne. Commencer par agreeToLicense\=yes, puis applicationFolder\=\/chemin\/absolu. Les lignes vides et celles commencant par \# sont ignorees. Ces valeurs restent des donnees et ne sont jamais executees comme des commandes shell.

 RuntimeDelivery\='installer' inclut par defaut un runtime adjacent prive ; RuntimeDelivery\='none' demande un runtime compatible deja accessible au lanceur. Le quatrieme bloc installe le meme paquet avec -runtimeFolder, puis retire l'application et le runtime independamment. Le runtime occupe un sous-dossier nomme par l'empreinte du moteur. -runtimeFolder peut accompagner -applicationFolder mais pas -destinationFolder. Les deux racines installees ne doivent pas se chevaucher.

 L'installation partagee requiert un lanceur actuel et RuntimeDelivery\='installer'. Elle enregistre le runtime dans le dossier de configuration utilisateur. Les applications compatibles ajoutent seulement les composants manquants a ce runtime. La suppression applicative ne le retire jamais. Une reinstallation verifie ou reprend aussi l'installation du runtime partage ; changer de mode prive\/partage demande de supprimer d'abord l'application. La distribution web, les paquets ZIP et les mises a jour d'installation applicative ne sont pas encore disponibles sous Linux.

 Le desinstallateur est .nelson-install\/uninstall.sh dans le dossier de destination. Il supprime seulement les fichiers inchanges du manifeste et les dossiers vides. Les fichiers modifies, les remplacements par des liens symboliques et les nouveaux fichiers utilisateur sont conserves. Si des fichiers distribues modifies restent presents, conserver le manifeste et le desinstallateur pour un nouvel essai. Ne pas modifier manuellement les metadonnees d'installation.


== Exemples

Etape 1

``````matlab
ncc('--help');
work = [tempname(), ' linux installer'];
mkdir(work);
entry = fullfile(work, 'hello_install.m');
filewrite(entry, 'function hello_install(); disp(''LINUX_INSTALLER_TUTORIAL_OK''); end');
result = compiler.build.standaloneApplication(entry, ...
  'OutputDir', fullfile(work, 'build'));
``````

Etape 2

``````matlab
options = compiler.package.InstallerOptions(result, ...
  'RuntimeDelivery', 'installer', 'OptionalDependencies', 'none', ...
  'OutputDir', fullfile(work, 'distribution'));
compiler.package.installer(result, 'Options', options);
setup = fullfile(options.OutputDir, [options.InstallerName, '.install']);
report = jsondecode(fileread(fullfile(result.Options.OutputDir, 'buildresult.json')));
``````

Etape 3

``````matlab
quote = @(text) [char(39), strrep(text, char(39), char([39 34 39 34 39])), char(39)];
target = fullfile(work, 'installed');
[status, output] = system([quote(setup), ...
  ' -agreeToLicense yes -applicationFolder ', quote(target)], 180);
if status ~= 0; error(output); end
[status, output] = system(['env -u NELSONC_RUNTIME_ROOT -u LD_LIBRARY_PATH ', ...
  quote(fullfile(target, 'hello_install'))], 60);
if status ~= 0; error(output); end
disp(output);
[status, output] = system(quote(fullfile(target, '.nelson-install', 'uninstall.sh')), 180);
if status ~= 0; error(output); end
``````

Etape 4 : runtime partage separe

``````matlab
[status, userId] = system('id -u');
if status ~= 0 || strcmp(strtrim(userId), '0'); error('Run this example as an ordinary user.'); end
runtimeParent = fullfile(work, 'shared runtimes');
runtime = fullfile(runtimeParent, report.engineFingerprint);
isolated = ['env -u NELSONC_RUNTIME_ROOT -u NELSON_RUNTIME_PATH -u LD_LIBRARY_PATH ', ...
  quote(['XDG_CONFIG_HOME=', fullfile(work, 'configuration')]), ' ', ...
  quote(['XDG_CONFIG_DIRS=', fullfile(work, 'empty-system')]), ' PATH=/usr/bin:/bin '];
[status, output] = system([isolated, quote(setup), ' -agreeToLicense yes -applicationFolder ', ...
  quote(target), ' -runtimeFolder ', quote(runtimeParent)], 180);
if status ~= 0; error(output); end
[status, output] = system([isolated, quote(fullfile(target, 'hello_install'))], 60);
if status ~= 0; error(output); end
disp(output);
[status, output] = system(quote(fullfile(target, '.nelson-install', 'uninstall.sh')), 180);
if status ~= 0; error(output); end
asserts.istrue(isfile(fullfile(runtime, 'runtime.json')));
[status, output] = system(quote(fullfile(runtime, '.nelson-runtime', 'uninstall')), 180);
if status ~= 0; error(output); end
``````


== Voir aussi

#nlink(<compiler:compiler.package.installer>)[compiler.package.installer];, #nlink(<compiler:compiler.package.InstallerOptions>)[compiler.package.InstallerOptions];, #nlink(<compiler:compiler_installer_tutorial>)[compiler\_installer\_tutorial];.

// Auteur: Allan CORNET
