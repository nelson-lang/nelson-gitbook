# compiler\_embedded\_data\_tutorial

Tutoriel : embarquer des donnees NH5 et MAT dans un executable.

## 📝 Syntaxe

- options = ncc('options', entry, 'AdditionalFiles', files)
- result = ncc(options)

## 📄 Description


Les fichiers .nh5 et .mat peuvent etre embarques comme ressources binaires dans l'executable. Ils sont copies sans modification dans l'archive applicative, sans conversion en bytecode et sans fichier de donnees separe a cote de l'executable. Le runtime les extrait dans le dossier prive ctfroot avant leur lecture par l'application. 

Utiliser AdditionalFiles ou l'option nelsonc -a pour une inclusion explicite. AutoDetectDataFiles reconnait aussi les noms de fichiers litteraux passes a load, loadnh5 et loadmat. Les noms calcules, notamment avec fullfile, necessitent une inclusion explicite. Desactiver la detection automatique ne retire pas les ressources explicitement incluses. 

La meme option AdditionalFiles est disponible avec compiler.build.standaloneApplication et compiler.build.standaloneWindowsApplication. Les deux embarquent les donnees dans l'executable ; choisir un runtime deja installe ne laisse pas les donnees applicatives a l'exterieur de l'executable. 

Pour un appel litteral load('mesures') ou load mesures sans extension, la detection automatique cherche d'abord le nom exact, puis mesures.nh5, puis mesures.mat dans chaque dossier de recherche applicatif. Une extension existante n'est pas remplacee. Cette regle appartient au load generique, pas a loadnh5, loadmat, fopen ou fileread. Preferer les noms explicites lorsque plusieurs formats coexistent. 

L'exemple cree un fichier .nh5 et un fichier .mat v7.3 contenant la meme matrice, puis construit et execute les deux modes de runtime. Executer les trois blocs dans l'ordre, dans la meme session. Chaque execution affiche EMBEDDED\_SUM=10. Les fichiers d'origine ne sont pas requis sur la machine destinataire. 

Le point d'entree fourni utilise fullfile(fileparts(mfilename('fullpath')), filename) pour ne pas dependre du dossier courant du processus. Le load generique recherche aussi dans les chemins applicatifs et detecte le format. Les lecteurs explicites loadnh5 et loadmat prennent un chemin du systeme de fichiers. 

L'inclusion binaire et la selection du runtime sont distinctes. loadnh5 requiert le module hdf5 ; loadmat requiert matio. Le load generique conserve les lecteurs natifs disponibles car le format est choisi a l'execution. Une application sans chargement de donnees ne recupere pas ces modules du seul fait de cette fonctionnalite. 

Le lanceur actuel extrait les ressources applicatives a chaque lancement, sans cache d'extraction persistant. Les gros fichiers augmentent donc la taille de l'executable et les entrees/sorties disque au demarrage. Le moteur de calcul numerique reste inchange. Conserver les jeux de donnees tres volumineux ou souvent modifies a l'exterieur lorsque leur inclusion n'est pas necessaire. Enregistrer les resultats hors de ctfroot : le dossier prive d'extraction est temporaire, pas un stockage persistant. 

Les lecteurs habituels conservent leur prise en charge des formats et types : .nh5, .mat v7 et .mat v7.3 sont verifies dans les tests de deploiement. Le packaging n'etend pas leurs types acceptes. Les objets serialises et les handles de fonctions peuvent necessiter du code de classe ou de fonction impossible a deduire de l'extension ; inclure ce code explicitement avec AdditionalFiles ou une directive de dependance de fonction. 

Les donnees embarquees ne sont pas chiffrees. Les controles SHA256 detectent les changements des octets d'entree ; ce ne sont ni une protection de confidentialite ni une signature d'editeur. Des donnees plus volumineuses augmentent la taille de l'executable et le travail d'extraction au demarrage. Aucun controle supplementaire n'est ajoute a l'execution numerique ou aux appels individuels de load. 

Ne pas enregistrer de modifications persistantes sous ctfroot : ce dossier d'extraction est supprime apres l'arret normal. Enregistrer les resultats dans un chemin externe choisi par l'utilisateur. Distribuer result.Executable seul avec un runtime installe compatible, ou les deux entrees de bundled.Files pour distribuer le runtime selectionne.

## 💡 Exemples

1. Creer la source et les donnees

```matlab
ncc('--help');
work = tempname();
mkdir(work);
source = fullfile(work, 'source');
mkdir(source);
example = fullfile(modulepath('compiler'), 'examples', 'embedded_data');
copyfile(fullfile(example, 'embedded_data_entry.m'), source);
A = [1, 2; 3, 4];
savenh5(fullfile(source, 'values.nh5'), 'A');
savemat(fullfile(source, 'values.mat'), '-v7.3', 'A');
```
2. Embarquer explicitement les deux fichiers

```matlab
options = ncc('options', fullfile(source, 'embedded_data_entry.m'), ...
  'AdditionalFiles', {fullfile(source, 'values.nh5'), fullfile(source, 'values.mat')}, ...
  'OutputDir', fullfile(work, 'installed'), 'RuntimeMode', 'installed');
result = ncc(options);
disp(result.Files);
```
3. Executer les distributions installed et bundled

```matlab
previousRuntime = getenv('NELSONC_RUNTIME_ROOT');
restoreRuntime = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', previousRuntime));
setenv('NELSONC_RUNTIME_ROOT', nelsonroot());
[status, output] = system(['"', result.Executable, '"'], 60);
if status ~= 0
  error(output);
end
disp(output);
options.RuntimeMode = 'bundled';
options.OutputDir = fullfile(work, 'bundled');
bundled = ncc(options);
[status, output] = system(['"', bundled.Executable, '"'], 60);
if status ~= 0
  error(output);
end
disp(output);
clear restoreRuntime;
```


## 🔗 Voir aussi

[ncc](../modules_manager/ncc.md), [compiler_standalone_tutorial](../compiler/compiler_standalone_tutorial.md), [nelson.compiler.BuildOptions](../compiler/nelson.compiler.BuildOptions.md), [loadnh5](../hdf5/loadnh5.md), [loadmat](../matio/loadmat.md), [ctfroot](../interpreter/ctfroot.md).
<!--
## 👤 Auteur

Allan CORNET
-->
