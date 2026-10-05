#import "nelson_help.typ": *

= ncc <modules_manager:ncc>

Construire un executable natif a partir d'une application Nelson.

== Syntaxe

- #raw("options = ncc('options', entry, name, value, ...)");
- #raw("options = nelson.compiler.BuildOptions(entry, settings)");
- #raw("result = ncc(options)");
- #raw("result = nelson.compiler.build(options)");
- #raw("plan = nelson.compiler.analyze(options)");
- #raw("plan = ncc(options, '--explain-link')");
- #raw("output = ncc(entry, '-o', executable, options...)");
- #raw("plan = ncc(entry, '--explain-link', options...)");
- #raw("nelsonc entry.m -o application.exe [-a file] [--gui|--cli] [--runtime bundled|installed]");
- #raw("nelsonc entry.m [ -a file ] [--gui|--cli] --explain-link");
- #raw("nelsonc entry.m -o application.exe --help-file help.txt");
- #raw("nelsonc entry.m -o application.exe [-X|--no-auto-data] [-a file]");
- #raw("nelsonc --help");

== Description

#strong[ExecutableVersion];, ou #strong[--executable-version version]; en ligne de commande, definit la version native de l'executable Windows. La valeur par defaut est #strong[1.0.0.0];. Fournir de un a quatre composants decimaux compris entre 0 et 65535 ; les composants finaux omis valent zero dans la ressource, donc #strong[4.0]; produit #strong[4.0.0.0];. FileVersion et ProductVersion contiennent la meme valeur. Le reglage original reste dans les options et le plan de dependances. Cette option est utilisee uniquement sous Windows ; les autres plateformes la valident sans modifier les octets de leur executable. La version est ecrite dans la copie de preparation verifiee, avant l'ajout de l'archive. Le lanceur installe et le runtime ne sont pas modifies. Des entrees et reglages identiques conservent un packaging deterministe. Cette version est independante de l'empreinte de compatibilite du runtime et n'ajoute aucun controle au demarrage applicatif ni aux boucles de calcul numerique.

 #strong[ncc]; est la fonction publique de packaging dans Nelson. La commande du système reste #strong[nelsonc]; ; les exemples en ligne de commande ci-dessous sont destinés au terminal système. Le module optionnel reste #strong[compiler];. L'ancienne macro de session #strong[nelsonc.m]; a été renommée ; les identifiants d'erreur internes #strong[Nelson:nelsonc:\*]; sont conservés.

 #strong[ncc('options', entry, ...)]; charge le module compiler optionnel et crée un objet valeur #strong[nelson.compiler.BuildOptions];. Une fois le module chargé, le constructeur accepte directement des paires nom-valeur ou une structure scalaire. Les noms sont insensibles à la casse, sans abréviation. Les options inconnues sont refusées. #strong[AppFile]; désigne le point d'entrée .m existant, fourni en premier argument. #strong[ExecutableName]; prend par défaut son nom sans extension ; ce doit être un identifiant, différent des noms de périphériques Windows réservés. #strong[OutputDir]; prend par défaut ExecutableName suivi de #strong[standaloneApplication];, au moment de la construction de l'objet.

 #strong[AdditionalFiles]; vaut par défaut une cellule vide et accepte un fichier, un dossier récursif, un motif de nom de fichier dans la dernière composante ou un vecteur de noms, avec les mêmes règles que #strong[-a];. #strong[AutoDetectDataFiles]; vaut true par défaut ; false correspond à #strong[-X];. #strong[CustomHelpTextFile]; est vide par défaut et sélectionne le document d'aide applicative UTF-8. #strong[Mode]; accepte auto (défaut), cli ou gui. #strong[NoConsole]; vaut false par défaut et sélectionne un exécutable du sous-système Windows lorsque true ; cette option est réservée à Windows. #strong[RuntimeMode]; accepte bundled (défaut) ou installed. #strong[Verbose]; vaut false par défaut. Les propriétés booléennes acceptent un scalaire logique, un nombre 0\/1 ou le texte on\/off.

 Les valeurs sont validées à l'affectation. Les chemins relatifs deviennent absolus à cet instant, sans résoudre les liens que le sélecteur d'entrées doit refuser. Changer ensuite le dossier courant ne les redirige pas. Cela ne fige ni le contenu des fichiers, ni les résultats des motifs, ni les dépendances : l'analyse et la compilation lisent leur état courant. Changer ExecutableName ne modifie pas un OutputDir déjà choisi. Copier l'objet valeur puis modifier ses propriétés ne change pas l'original. #strong[struct(options)]; expose les réglages ; utiliser AppFile comme premier argument et les autres champs comme structure pour reconstruire l'objet.

 #strong[ncc(options)]; et #strong[nelson.compiler.build(options)]; utilisent le pipeline de packaging existant et renvoient un #strong[nelson.compiler.BuildResult]; en lecture seule. Avec des options structurées, la compilation est silencieuse sauf si Verbose vaut true, même sans sortie demandée. #strong[nelson.compiler.analyze(options)]; et #strong[ncc(options, '--explain-link')]; renvoient le plan de dépendances de la commande sans créer le dossier de sortie. Les applications graphiques nécessitent toujours une session avancée ou graphique. Les sorties existantes ne sont pas écrasées.

 #strong[BuildType]; vaut standaloneApplication, ou standaloneWindowsApplication lorsque NoConsole vaut true. #strong[Files]; liste les chemins de premier niveau à distribuer : #strong[Executable]; et, en mode embarqué, #strong[RuntimeDirectory];. Ce dernier est vide en mode installed. #strong[Options]; est une copie par valeur ; #strong[DependencyPlan];, #strong[RuntimePlan]; et #strong[Manifest]; décrivent la compilation réalisée ; #strong[SHA256]; est l'empreinte de l'exécutable. RuntimePlan décrit les besoins du runtime et, en mode embarqué, l'inventaire figé de copie. Ces informations ne suivent pas les modifications ultérieures des fichiers. #strong[struct(result)]; convertit aussi Options en structure et peut être encodé en JSON. Les rapports peuvent contenir des chemins absolus de la machine de construction et ne sont pas des manifestes de distribution expurgés. L'API structurée reste réservée à la construction et n'ajoute aucun contrôle au démarrage applicatif ni dans les boucles numériques.

 #strong[-X]; et #strong[--no-auto-data]; désactivent l'inclusion automatique des noms littéraux de données dans les appels de lecture reconnus, y compris la forme commande et les dépendances source transitives. La détection reste activée par défaut. Le plan indique #strong[autoDetectDataFiles]; ; les références automatiques ignorées portent le type #strong[ignored-data]; et ne produisent pas de diagnostic de fichier absent. Les fichiers explicites #strong[-a]; et les inclusions #strong[%\#function]; restent actifs ; #strong[-a]; reste prioritaire sur #strong[%\#exclude];.

 Cette option conserve les dépendances de fonctions et scripts, les méthodes de classes et les bibliothèques littérales #strong[dlopen];. Le code et les dépendances natives absents restent des erreurs. L'analyse du démarrage et les ressources nécessaires du runtime ne changent pas. Les accès aux fichiers ne sont pas réécrits : les données ignorées doivent être fournies à l'exécution, par exemple dans le dossier d'invocation. L'option fonctionne depuis la commande native et la fonction Nelson, avec les deux modes de runtime et l'aide applicative personnalisée, sans ajouter de contrôle à l'exécution.

 #strong[%\#function callback\_helper package.extra "included data.txt"]; inclut les fonctions, définitions locales, constructeurs de classes et fichiers sans nécessiter un appel détecté. Les fichiers relatifs sont recherchés à côté du source, puis dans le dossier courant, le chemin utilisateur et l'ordre du chemin Nelson actif. Entourer de guillemets les noms contenant des espaces ; doubler un guillemet identique à l'intérieur du nom. Les commentaires de directive seuls ou en fin de ligne sont reconnus. Le texte entre guillemets, les commentaires ordinaires, les blocs de commentaires et les commentaires de continuation sont ignorés. Une inclusion absente est signalée avec sa ligne source.

 #strong[%\#exclude development\_only "ignored.txt"]; exclut les dépendances nommées et supprime leurs diagnostics de références absentes. Les exclusions découvertes s'appliquent à l'ensemble des dépendances de l'application, y compris au repli dynamique prudent. Une exclusion tardive retire les dépendances transitives devenues inaccessibles. Le point d'entrée et les entrées explicites #strong[-a]; sont prioritaires. Les enregistrements #strong[exclusions]; de #strong[--explain-link]; indiquent le source, le nom, la ligne, la cible résolue et #strong[explicitOverride]; ; les références exclues conservent #strong[referenceKind];.

 Une exclusion ne supprime pas les instructions exécutables ni les fonctions individuelles d'un fichier conservé. Protéger les appels réservés au développement avec #strong[if \~isdeployed()]; ; exécuter une dépendance exclue peut échouer. L'exclusion ne retire pas de fichiers individuels d'un module runtime complet requis par ailleurs. Les autres dépendances dynamiques gardent leur repli prudent. Utiliser #strong[-X]; pour désactiver globalement la détection automatique des données. Les directives sont traitées uniquement pendant le packaging, sans ajouter de contrôle au démarrage applicatif ni dans les boucles numériques.

 #strong[--help-file]; embarque un document UTF-8 de 1 Mio maximum. Le texte UTF-8 invalide et les caractères nuls sont rejetés ; une éventuelle marque d'ordre des octets est retirée. Un document vide est accepté. Son contenu est lu une seule fois pendant la construction, sans embarquer le nom du fichier d'origine. Un unique argument #strong[-?];, #strong[\/?]; ou #strong[--help]; affiche ce texte et termine l'application avec succès sans appeler son point d'entrée ni attendre ses fenêtres. Un runtime compatible reste nécessaire et est initialisé. Les autres listes d'arguments sont conservées. Sans cette option de construction, tous les arguments sont transmis sans modification. #strong[nelsonc --help]; et #strong[nelsonc -h]; restent les commandes d'aide du compilateur. Avec #strong[--explain-link];, le document est validé et son contenu apparaît dans le champ #strong[helpText]; du plan.

 #strong[isdeployed()]; vaut vrai pendant l'exécution du code applicatif et de ses callbacks graphiques. #strong[ctfroot()]; renvoie la racine temporaire d'extraction contenant #strong[application.json]; et les sous-répertoires #strong[roots];. Localisez les ressources embarquées relativement à leur fichier d'origine avec #strong[mfilename('fullpath')]; ; n'utilisez pas la racine d'extraction pour les sorties persistantes. Dans une session ordinaire, isdeployed vaut faux et ctfroot lève une erreur. Ces fonctions du runtime ne nécessitent pas le module de construction optionnel.

 La commande et le lanceur utilisant un runtime installe reconnaissent les prefixes d'installation CMake et les repertoires de build locaux. Les dossiers configures de donnees, bibliotheques et executables sont conserves relativement au prefixe ; les chemins absolus internes au prefixe sont convertis, et les chemins externes sont refuses pour les outils compiler. #strong[NELSONC\_RUNTIME\_ROOT]; accepte le prefixe ou son dossier de donnees Nelson. La recherche automatique utilise le dossier des executables depuis #strong[NELSON\_RUNTIME\_PATH]; ou #strong[PATH];, y compris un dossier configure imbrique. Les donnees et les bibliotheques doivent appartenir a la meme disposition. Le controle de l'empreinte de l'interpreteur reste inchange. Le runtime Windows produit utilise toujours #strong[bin\/x64]; ou #strong[bin\/ARM64];, quel que soit le nom du dossier binaire de l'installation source.

 Le module optionnel #strong[compiler]; requiert #strong[file\_archiver];, #strong[dynamic\_link]; et #strong[json];. Il constitue un composant separe de l'installateur Windows, inclus dans les installations completes et absent des installations minimales. Pour l'exclure du build CMake, utiliser #strong[-DWITHOUT\_COMPILER\_MODULE\=ON]; ; pour omettre ses references de projets depuis le CLI Visual Studio, utiliser #strong[\/p:WithoutCompilerModule\=true];. ISCC #strong[\/DWITHOUT\_COMPILER\_MODULE]; exclut le composant du build de l'installateur. La fonction publique signale l'absence du module si compiler n'est pas installe. Les applications deja construites n'ont pas besoin de ce module de construction.

 Depuis Nelson, appeler #strong[ncc('entry.m', '-o', 'application.exe')];. La fonction publique est une macro qui charge le module optionnel #strong[compiler]; au premier appel et utilise son builtin natif d'analyse, sans lancer un second processus Nelson. Le demarrage normal ne charge pas ce module de construction. Il est exclu des runtimes generes, y compris avec le repli dynamique ; les applications deployees ne peuvent pas dependre de ses services de construction.

 Avec la forme fonction utilisant les options de ligne de commande, les arguments sont des vecteurs de caracteres ou des strings scalaires. Les chemins relatifs partent du dossier courant de la session. Une sortie renvoie le chemin de l'executable, une structure avec #strong[--explain-link];, ou le texte d'utilisation avec #strong[--help];. Sans sortie, le resultat est affiche. Les erreurs remontent a l'appelant ; la session continue, son dossier courant et son environnement sont preserves. Le module reste charge. L'analyse utilise le catalogue charge dans la session : utiliser une session avancee ou graphique pour les fonctions graphiques.

 #strong[nelsonc]; est un outil experimental de packaging en ligne de commande. Il assemble un lanceur natif precompile, le bytecode de l'application, ses ressources et un manifeste. Il ne traduit pas tout code Nelson en code machine autonome.

 Par defaut (#strong[--runtime bundled];), le resultat comprend l'executable et un dossier adjacent portant le nom de sa sortie, par exemple #strong[application.runtime];. Distribuer et deplacer les deux ensemble. La machine cible n'a pas besoin d'une installation Nelson separee lorsque les dependances runtime necessaires sont incluses.

 #strong[--runtime installed]; cree l'executable avec le bytecode et les ressources de l'application, sans copier de runtime. La cible doit disposer d'une installation Nelson compatible. Definir #strong[NELSONC\_RUNTIME\_ROOT]; avec sa racine absolue pour la selectionner explicitement. Une selection explicite absente ou incompatible provoque une erreur sans repli. Sinon, le lanceur essaie le dossier adjacent application.runtime, puis #strong[NELSON\_RUNTIME\_PATH];, les enregistrements de runtimes partages, les dossiers partages standards sous Windows, puis les entrees absolues de #strong[PATH];. Un runtime adjacent existant mais incompatible provoque une erreur sans repli. Les entrees de recherche vides ou relatives sont ignorees. Le chemin d'installation de la machine de construction n'est pas embarque.

 Sous Linux, les enregistrements partages sont lus dans #strong[XDG\_CONFIG\_HOME];, avec repli sur #strong[HOME\/.config];, puis dans #strong[XDG\_CONFIG\_DIRS]; (#strong[\/etc\/xdg]; par defaut). Les dossiers de configuration doivent etre absolus ; les entrees relatives sont ignorees. Seules les 16 premieres entrees de dossiers systeme sont examinees. Un enregistrement porte le nom #strong[nelson\/runtimes\/architecture\/fingerprint.root];, relatif a un dossier de configuration, ou fingerprint est le SHA-256 de l'interpreteur. C'est un fichier ordinaire contenant exactement deux lignes terminees par LF : #strong[NELSON\_RUNTIME\_ROOT\_1]; et la racine absolue du runtime. Aucun BOM, caractere de controle, developpement shell ou chemin racine relatif n'est accepte. Les fichiers de plus de 32768 octets, les liens symboliques d'enregistrement et les fichiers speciaux sont ignores. Les liens de dossiers conservent leur sens normal dans le systeme de fichiers.

 Le premier runtime enregistre compatible est retenu, avec priorite a la configuration utilisateur sur la configuration systeme. L'empreinte de l'interpreteur reste verifiee ; un enregistrement n'est pas une signature d'editeur. La recherche ne modifie ni PATH, ni les fichiers de configuration, ni le calcul numerique. Reconstruire les applications avec les lanceurs actuels pour utiliser cette recherche Linux (runtimeDiscoveryVersion 3). Utiliser #nlink(<compiler:compiler.runtime.customInstaller>)[compiler.runtime.customInstaller]; pour distribuer, installer et completer un runtime minimal partage ; la recherche elle-meme n'installe aucun fichier.

 Le mode installe exige le meme build de l'interpreteur et la meme architecture, pas seulement le meme numero de version. L'empreinte de l'interpreteur est verifiee avant de charger le moteur, puis les controles existants du manifeste et des builtins sont appliques. La recherche et les empreintes ne concernent que le demarrage. Une installation complete peut charger davantage de modules au demarrage qu'un runtime reduit. Le lanceur ne modifie pas l'installation selectionnee ; le code de l'application conserve ses capacites ordinaires d'acces aux fichiers.

 Les fichiers #strong[.nbc]; de l'application sont des entrees de bytecode internes a l'archive applicative, integree a l'executable par defaut, pas des fichiers a distribuer separement. Les bibliotheques runtime restent externes. Les definitions de classes et les cas necessitant leur representation source peuvent conserver des fichiers #strong[.m]; dans l'archive. Le packaging n'est ni un chiffrement ni une garantie de confidentialite des sources.

 L'analyse des dependances de classes suit les superclasses, les methodes, les fonctions locales, les valeurs initiales, les types et les validateurs de proprietes sans instancier la classe. Les classes retenues incluent leurs methodes externes et leurs dependances privees ; les methodes externes peuvent etre embarquees en bytecode. Une implementation externe manquante est signalee pendant le packaging, tandis qu'une declaration de methode abstraite ne necessite pas de fichier separe. Les references statiques qualifiees et les appels de methodes sous forme de fonctions sont traites de maniere conservatrice, sans inference de types. L'utilisation d'une classe seule ne declenche pas le repli dynamique sur tout le projet. Les constructeurs historiques dans les repertoires #strong[\@Class]; et leurs methodes peuvent tous etre embarques en bytecode.

 L'entree peut etre un script ou une fonction, y compris une fonction dans des packages imbriques. Les arguments de la ligne de commande sont des chaines ; une fonction peut les recevoir avec #strong[varargin];. Un script les lit avec #strong[argv('user')];. Les arguments vides et entre guillemets sont preserves. Une erreur non interceptee produit un code de sortie en echec ; un code de sortie explicite est propage.

 #strong[-o]; indique l'executable de sortie. Sous Windows, son extension doit etre #strong[.exe];. Les executables et dossiers runtime existants ne sont pas ecrases. Les chemins de la ligne de commande sont resolus depuis le dossier dans lequel le compilateur est lance.

 Sous Windows, les lanceurs CLI, CLI avance, GUI et WebView declarent la meme prise en charge des chemins longs que la commande de packaging. Le packaging depuis une session peut copier des fichiers runtime imbriques au-dela de MAX\_PATH lorsque la politique #strong[LongPathsEnabled]; est activee sur la machine. Nelson ne modifie pas cette politique systeme. Les limites de longueur des composants et les restrictions des outils et API externes restent applicables.

 Les appels statiques qualifies compiles avant que leur classe soit disponible respectent encore les regles d'acces apres son chargement ou sa construction. Un cache de fonctions deja utilise ne doit pas exposer les methodes privees ou protegees aux appelants externes. Les appels publics et les appels internes autorises restent valides. Ce sont des regles du langage, pas un bac a sable de securite pour du code non fiable.

 #strong[-a input]; inclut explicitement un fichier, une arborescence récursive ou un motif de noms de fichiers, et peut être répété. Les motifs acceptent #strong[\*]; et #strong[?]; uniquement dans la dernière composante du chemin ; ils sélectionnent les fichiers de ce dossier sans parcourir les sous-dossiers. Mettre les motifs entre guillemets dans le shell. Les autres caractères sont littéraux ; un nom littéral existant est prioritaire. La comparaison ignore la casse sous Windows et la respecte ailleurs.

 Les arborescences sélectionnées, y compris les dossiers vides, conservent leur organisation relative dans #strong[roots\/N];. Sélectionner un ancêtre du point d'entrée préserve les chemins entre le code et les ressources voisines. Les dossiers ordinaires inclus sont accessibles par le chemin de recherche ; les dossiers de packages, classes et fonctions privées conservent leurs règles propres. Utiliser #strong[which('data.txt')]; ou un chemin relatif à #strong[mfilename('fullpath')];. Le packaging ne réécrit pas les accès aux fichiers ni les chemins absolus de la machine de construction.

 Les sélections explicites sont prioritaires sur #strong[%\#exclude]; et restent incluses avec #strong[-X];. Les doublons sont retirés. Les entrées absentes, motifs sans résultat, liens symboliques, points de réanalyse de dossiers et fichiers non ordinaires sont refusés. La sélection est limitée à 10 000 fichiers et dossiers. La liste est figée pendant l'analyse ; les octets sélectionnés sont vérifiés pendant la préparation. Le plan indique #strong[directories]; et les #strong[pathEntries]; ordonnés, séparément des racines physiques #strong[searchRoots];. Le parcours et le filtrage ont lieu uniquement pendant le packaging. Le volume embarqué et les chemins supplémentaires peuvent toutefois augmenter le coût du démarrage et de la résolution ordinaire.

 Les dépendances de fonctions résolues statiquement et les noms littéraux reconnus de fichiers d'entrée sont inclus automatiquement. Les noms calculés et les ressources fournies seulement à l'exécution ne peuvent pas être déduits de manière générale.

 #strong[--explain-link]; affiche le plan des dependances et du runtime au format JSON, sans creer d'application. Son champ #strong[complete]; concerne la resolution des references analysees : il ne prouve pas la couverture de tous les chemins d'execution dynamiques et de toutes les dependances de deploiement.

 Les appels dynamiques et les modifications du chemin de recherche elargissent prudemment le plan des dependances. Ces applications peuvent necessiter beaucoup plus de modules runtime. Les extensions natives et les bibliotheques externes chargees dynamiquement demandent une validation de deploiement supplementaire.

 Le demarrage graphique est selectionne automatiquement a partir des modules resolus. #strong[--gui]; le force ; #strong[--cli]; limite le compilateur au catalogue de base et rejette les dependances graphiques non resolues. Ces options sont mutuellement exclusives. Par defaut, le compilateur utilise le catalogue avance pour l'analyse, mais une application numerique generee utilise toujours le runtime de base. Le repli dynamique peut inclure prudemment les modules graphiques.

 Apres le retour de l'entree graphique, le lanceur continue de traiter les evenements tant que des figures visibles restent ouvertes, y compris avec #strong[HandleVisibility]; a #strong[off];. Les timers et callbacks de #strong[uicontrol]; peuvent masquer, fermer ou remplacer les fenetres. Des figures invisibles seules ne maintiennent pas l'executable actif. La cible graphique actuelle est celle des figures Qt ordinaires sous Windows x64, avec runtime livre ou installe. La duree de vie des fenetres QML seules, le deploiement WebView, la couverture de tous les controles et le deploiement graphique sur les autres plateformes restent a valider. Les executables utilisent le format natif de la plateforme hote ; la compilation croisee n'est pas prise en charge.

 L'implementation actuelle des timers exige de conserver une reference explicite apres le retour de la fonction qui les cree. Dans une application graphique, conserver le timer dans #strong[figure.UserData]; ou un autre proprietaire persistant. Cette limitation du runtime est independante du packaging.

 Les proprietes de callback textuelles et les valeurs de callback indeterminees activent l'inclusion conservative des dependances pour les fonctions natives graphiques, de timers, audio et de handles prises en charge. Les affectations directes aux proprietes de callback sont aussi analysees. Les handles de fonction litteraux, les cellules commencant par un handle et les callbacks vides n'activent pas eux-memes ce repli. Les noms de proprietes calcules sont traites de facon conservative, sauf si l'analyse peut prouver un suffixe sans callback. Les callbacks textuels peuvent donc agrandir le runtime ; preferer des handles explicites lorsque la cible est connue. Les appels de methodes arbitraires et les noms de callbacks generes par du code natif exigent encore des fichiers explicites et des tests de deploiement.

 L'application demarre dans le dossier depuis lequel son executable est lance. Les chemins relatifs d'entree et de sortie utilisent ce dossier, et les fichiers de sortie survivent au nettoyage de l'extraction. L'application peut changer explicitement de dossier ; une entree script ne le change pas implicitement.

 Les fichiers embarques sont extraits dans un dossier temporaire prive. Pour trouver une ressource placee a cote d'une fonction, utiliser #strong[fullfile(fileparts(mfilename('fullpath')), 'data.txt')]; et inclure explicitement cette ressource calculee avec #strong[-a];. L'inclusion ne reecrit pas les expressions d'acces aux fichiers. Ne pas utiliser le dossier d'extraction pour les sorties persistantes.

 Le lanceur ignore les indexes de sources implicites du dossier courant et du chemin utilisateur personnel. Des sources locales sans rapport avec l'application ne doivent pas remplacer le code embarque. Les dossiers ajoutes explicitement par l'application restent disponibles. La configuration ordinaire de l'interpreteur n'est pas modifiee hors du processus deploye, et les preferences du chemin utilisateur ne sont pas reecrites.

 La compatibilite du bytecode est verifiee avec le runtime correspondant. Conserver l'executable avec le runtime produit par le meme build. Les controles d'archive detectent les corruptions et chemins invalides ; ils n'authentifient pas l'editeur et n'isolent pas un code non fiable.

 L'analyse des dependances et le calcul des empreintes des copies du runtime ont lieu pendant le packaging. L'execution utilise le moteur bytecode et les bibliotheques numeriques existants. Mesurer separement le demarrage, le chargement et le calcul a chaud : le packaging natif ne garantit ni une acceleration du calcul ni une absence prouvee de regression.

 Aucun compilateur C++ n'est necessaire pour utiliser un #strong[nelsonc]; preconstruit. Conserver les notices de redistribution incluses dans le runtime et examiner les conditions de toutes les dependances de l'application et du runtime.

 Lorsque le module FFTW est retenu, le packaging inclut sa paire de bibliotheques double\/simple precision par defaut depuis le dossier binaire du runtime selectionne, puis suit ses imports. L'absence de cette paire fait echouer le packaging. Les emplacements de backend personnalises et les autres chargements dynamiques internes au code natif exigent encore une validation explicite du deploiement.

 Le lanceur natif supprime le dossier d'extraction apres un retour normal, un code de sortie explicite ou une erreur non interceptee. Un crash ou un arret force du processus peut toutefois laisser des donnees temporaires.

 L'inventaire des fichiers du runtime est fixe avant la copie. Les bibliotheques, les donnees des modules, les ressources et les notices de redistribution sont verifiees apres copie avec leurs empreintes SHA-256 prevues ; un changement detecte fait echouer le packaging. Le lanceur utilise aussi une copie de preparation verifiee. Le fichier genere #strong[runtime.json]; contient les chemins relatifs et les empreintes, sans les chemins sources de la machine de construction. Il n'est pas parcouru au demarrage de l'application. Ces controles ne constituent ni un instantane atomique du systeme de fichiers ni une signature de l'editeur.

 Sous Windows, les DLL fournies avec #strong[-a];, les noms litteraux de #strong[dlopen]; et les fonctions natives resolues statiquement incluent leurs imports binaires transitifs. Les imports manquants, les architectures incompatibles et les noms natifs en conflit font echouer le packaging. Les bibliotheques applicatives sont placees dans l'archive applicative ; les imports du runtime Nelson selectionne restent dans ce runtime. Les dossiers de recherche natifs sont enregistres uniquement pendant l'execution applicative, y compris la boucle d'evenements graphique, puis restaures. Cela concerne les deux modes de runtime et n'ajoute aucun travail aux boucles de calcul numerique.

 Les noms natifs calcules et les dependances chargees dynamiquement dans un binaire externe ne peuvent pas etre deduits et doivent etre fournis explicitement puis testes. Le deploiement des dependances natives applicatives se limite a Windows ; ce cas est rejete explicitement sur les autres plateformes en attendant son implementation et sa validation.

 L'analyse des imports ELF distingue #strong[RPATH];, heritable, de #strong[RUNPATH];, limite aux dependances directes et prioritaire sur le RPATH du meme objet. #strong[LD\_LIBRARY\_PATH]; est examine apres RPATH ou avant RUNPATH. Les chemins declares precedent le repli explicite vers le runtime selectionne. #strong[\$ORIGIN]; designe le dossier de l'objet concerne, ou celui de l'executable pour LD\_LIBRARY\_PATH ; une entree de chemin vide designe le dossier d'invocation. Un import contenant un chemin ne peut pas etre remplace silencieusement par un autre fichier de meme nom. #strong[\$LIB]; et #strong[\$PLATFORM]; provoquent une erreur explicite de resolution cible. Le cache du chargeur systeme, les variantes materielles et la relocation POSIX complete restent a implementer ; l'analyse hors execution ne prouve pas le support du deploiement natif. Ces controles ont lieu pendant le packaging, pas pendant le calcul numerique.

 Avant de charger le moteur sous Linux, le lanceur place le dossier canonique des bibliotheques runtime en tete de #strong[LD\_LIBRARY\_PATH]; et relance le meme executable avant l'extraction, en conservant les arguments, le dossier d'invocation et le chemin de recherche herite non vide. Si le dossier runtime est deja en tete, aucune relance n'est necessaire. Les dossiers runtime contenant deux-points, point-virgule ou dollar, ainsi que l'execution securisee avec #strong[AT\_SECURE];, sont refuses. Cette preparation du demarrage ne modifie ni les bibliotheques, ni les empreintes de l'interpreteur, ni le calcul numerique. Elle ne remplace pas la priorite de l'ancien #strong[DT\_RPATH]; ni les entrees #strong[DT\_NEEDED]; contenant un chemin et ne constitue pas un support complet de relocation POSIX.

 Des applications CLI sans sources, deplacees apres packaging, ont ete validees sur #strong[Debian 13]; x86-64 avec glibc 2.41, avec runtime embarque ou deja present, a partir du meme build source sans interface graphique. Le runtime a structure plate utilise #strong[bin\/linux];. Le packaging conserve les noms publics des gateways retournes par #strong[modulepath];, meme lorsque les identites en cache designent des bibliotheques partagees versionnees. Les tests couvrent dependances et ressources embarquees, arguments, sorties dans le dossier d'invocation, codes de retour et nettoyage. Cela ne valide ni les autres distributions, ni les installations Linux personnalisees, ni le graphique Linux, ni les extensions natives applicatives POSIX, ni le deploiement macOS ; ce n'est pas une mesure de performances.

 Un echec du script principal de demarrage du runtime retourne le code 1 sans executer le point d'entree de l'application, y compris si ce script ou une gateway requise manque. Une demande de fermeture avec succes ne peut pas masquer cet echec d'initialisation. Le demarrage normal et les codes de sortie explicites restent inchanges. Les runtimes Linux generes conservent le nom public de la bibliotheque de l'interpreteur et peuvent ainsi etre selectionnes comme runtimes installes correspondants. Ces controles n'ajoutent aucun travail dans la boucle de calcul numerique et ne constituent pas une verification generale de l'integrite d'un runtime endommage.

 Les applications minimales dont le plan de dependances contient zero ou un module sont prises en charge, comme les plans a plusieurs modules. Un enregistrement de module unique converti par #strong[jsondecode]; et #strong[jsonencode]; est normalise lors de la planification du runtime ; les enregistrements mal formes sont rejetes pendant le packaging. Les modules de demarrage requis sont conserves meme si la liste propre a l'application est vide. Cette normalisation n'ajoute aucun travail au calcul numerique.

 Les archives applicatives utilisent la date fixe #strong[1980-01-01]; et un ordre stable des chemins embarques. Avec les memes plateforme, binaires du compilateur et du runtime, octets et attributs des fichiers, dependances, options et nom de base de sortie, le packaging vise des executables identiques octet par octet dans differents dossiers. La reproductibilite d'une reconstruction de la chaine native est un sujet distinct. Les appels ordinaires a #strong[zip]; conservent leurs dates habituelles. Cette normalisation intervient uniquement pendant le packaging, sans surcout dans le calcul numerique.

 #strong[--no-console]; sélectionne le lanceur natif du sous-système Windows, indépendamment de #strong[--gui];, #strong[--cli]; et du mode de distribution du runtime. Aucune console n'est créée, masquée ou détachée. Une application numérique ne reçoit pas de dépendances graphiques du seul fait de cette option. Les arguments Unicode ou vides, les codes de sortie, les sorties redirigées et la durée de vie de la boucle graphique sont préservés. Sans redirection, aucune fenêtre de commande n'est disponible ; cette option ne fournit ni journal automatique, ni boîte de dialogue d'erreur. Elle est rejetée sur les autres plateformes. Les bytecodes et le choix du runtime restent inchangés ; le démarrage et les performances à chaud doivent être mesurés séparément.

 Les donnees NH5 et MAT sont embarquees sans modification comme ressources binaires avec #strong[-a]; ou #strong[AdditionalFiles];. La detection automatique reconnait les noms litteraux passes a #strong[load];, #strong[loadnh5]; et #strong[loadmat]; ; les chemins calcules necessitent une inclusion explicite. Le load generique conserve les lecteurs de formats disponibles dans le runtime. Lire une ressource relativement a mfilename('fullpath') ou via le chemin applicatif avec load. Les donnees d'origine ne sont pas requises sur la machine cible. Les ressources sont extraites sous ctfroot et ne sont pas chiffrees ; enregistrer les resultats persistants ailleurs.

 #strong[RuntimeLogFile];, ou #strong[--runtime-log-file fichier];, active un journal du runtime et des sorties en ajout. Il est desactive par defaut. Les chemins relatifs partent du dossier de l'executable genere, pas de celui de construction ; le dossier parent doit exister et etre accessible en ecriture. Les variables d'environnement ne sont pas developpees. La sortie console est conservee. Voir nelson.compiler.BuildOptions pour les erreurs.

 #strong[--executable-icon image];, ou #strong[ExecutableIcon]; dans BuildOptions, choisit une icone native Windows. Le chemin utilise pendant la construction accepte JPG, JPEG, PNG, BMP ou GIF ; la valeur vide par defaut conserve l'icone existante du lanceur. Voir compiler.build.StandaloneApplicationOptions pour les tailles et la transparence. Le runtime genere ne recoit pas les services d'images.

 #strong[-C]; ou #strong[--external-archive]; correspond a #strong[EmbedArchive\=false]; : l'archive applicative est placee dans un fichier .nca adjacent plutot que dans l'executable. Files inclut ce fichier. Distribuer la paire avec le meme nom de base. Les deux modes de runtime et les deux cibles natives sont pris en charge. Le lancement et la preparation de l'installateur verifient l'integrite de l'archive. Voir compiler.build.StandaloneApplicationOptions pour les limites et les exigences de format.

 #strong[TreatInputsAsNumeric]; (false par defaut) active une conversion unique des arguments de fonction par la builtin str2double. Les formes de commande sont #strong[-n]; et #strong[--numeric-inputs];. Le texte invalide donne NaN, aucun argument n'est execute comme du code et argv('user') conserve le texte original. Voir #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; pour les valeurs prises en charge et le runtime requis.

 #strong[SupportPackages]; vaut {'autodetect'} par defaut. Utiliser 'none' ou les noms de paquets nmm enregistres pour filtrer les dependances a la construction. L'option de commande repetable est #strong[--support-package nom];. Voir #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; pour les exclusions, les conflits avec les fichiers explicites et les limites.


== Exemples

Compiler avec des options validées et inspecter le résultat.

``````matlab
options = ncc('options', 'app_entry.m', 'ExecutableName', 'application', ...
  'OutputDir', 'dist', 'RuntimeMode', 'installed', 'AdditionalFiles', 'assets');
plan = nelson.compiler.analyze(options);
result = ncc(options);
disp(result.Files);
disp(result.SHA256);
``````

Construire et inspecter une application depuis une session Nelson.

``````matlab
output = ncc('app_entry.m', '-o', 'dist/application.exe');
plan = ncc('app_entry.m', '--runtime', 'installed', '--explain-link');
``````

Construire une application en ligne de commande sous Windows.

``````matlab
nelsonc app_entry.m -o dist/application.exe
``````

Inclure une ressource selectionnee explicitement.

``````matlab
nelsonc app_entry.m -a data/input.dat -o dist/application.exe
``````

Examiner les dependances d'une entree dans des packages imbriques.

``````matlab
nelsonc "+outer/+inner/app_entry.m" --explain-link
``````


== Voir aussi

#nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions];, #nlink(<compiler:nelson.compiler.BuildResult>)[nelson.compiler.BuildResult];, #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build];, #nlink(<compiler:nelson.compiler.analyze>)[nelson.compiler.analyze];, #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial];, #nlink(<compiler:compiler_embedded_data_tutorial>)[compiler\_embedded\_data\_tutorial];.

// Auteur: Allan CORNET
