#import "nelson_help.typ": *

= nmm <modules_manager:nmm>

Gestionnaire de modules Nelson.

== Syntaxe

- #raw("st = nmm('list')");
- #raw("st_json = nmm('list', '-json')");
- #raw("commands = nmm('commands')");
- #raw("commands_json = nmm('commands', '-json')");
- #raw("report = nmm('help')");
- #raw("report_json = nmm('help', '-json')");
- #raw("report = nmm('help', command)");
- #raw("report_json = nmm('help', command, '-json')");
- #raw("report = nmm(command, ..., '-quiet')");
- #raw("nmm('load', module_name)");
- #raw("nmm('load', module_name, version)");
- #raw("report = nmm('verify', package_filename)");
- #raw("report = nmm('verify', module_path)");
- #raw("lock = nmm('lock', module_path)");
- #raw("lock = nmm('lock', module_path, '-dry-run')");
- #raw("report = nmm('lock', module_path, '-check')");
- #raw("report = nmm('lock', module_path, '-diff')");
- #raw("report = nmm('config')");
- #raw("report = nmm('pin', module_name)");
- #raw("report = nmm('pin', module_name, version)");
- #raw("report = nmm('unpin', module_name)");
- #raw("report = nmm('why', package_name)");
- #raw("report = nmm('why', install_report, package_name)");
- #raw("json_text = nmm('why', package_name, '-json')");
- #raw("report = nmm('tree', package_name)");
- #raw("report = nmm('tree', install_report)");
- #raw("json_text = nmm('tree', package_name, '-json')");
- #raw("deps = nmm('deps', package_name)");
- #raw("deps = nmm('deps', install_report)");
- #raw("json_text = nmm('deps', package_name, '-json')");
- #raw("rdeps = nmm('rdeps', package_name)");
- #raw("status = nmm('status', package_name)");
- #raw("report = nmm('explain', package_name)");
- #raw("graph = nmm('graph', package_name)");
- #raw("versions = nmm('installed', package_name)");
- #raw("info = nmm('latest', package_name)");
- #raw("report = nmm('resolve', package_name, version_spec)");
- #raw("tf = nmm('satisfies', version, version_spec)");
- #raw("l = nmm('autoload', module_name)");
- #raw("nmm('autoload', module_name, state)");
- #raw("nmm('install', git_url)");
- #raw("nmm('install', module_path, '-tests')");
- #raw("nmm('install', module_path, '-no-tests')");
- #raw("nmm('install', git_url, '-tests')");
- #raw("report = nmm('install', package_filename, '-dry-run')");
- #raw("report = nmm('install', package_filename, '-force')");
- #raw("report = nmm('install', package_name, '-dry-run')");
- #raw("nmm('install', package_name, version)");
- #raw("report = nmm('install', package_name, version, '-dry-run')");
- #raw("nmm('install', package_name, version, '-tests')");
- #raw("nmm('install', package_name, version, '-no-tests')");
- #raw("nmm('install', package_name, version, '-force')");
- #raw("report = nmm('install', package_name, version, '-offline', '-dry-run')");
- #raw("nmm('uninstall', module_name)");
- #raw("nmm('uninstall', module_name, version)");
- #raw("nmm('remove', module_name)");
- #raw("report = nmm('remove', module_name, '-dry-run')");
- #raw("report = nmm('remove', module_name, '-force')");
- #raw("nmm('remove', module_name, version)");
- #raw("report = nmm('remove', module_name, version, '-dry-run')");
- #raw("orphans = nmm('orphans')");
- #raw("orphans_json = nmm('orphans', '-json')");
- #raw("report = nmm('autoremove')");
- #raw("report = nmm('autoremove', '-dry-run')");
- #raw("report_json = nmm('autoremove', '-dry-run', '-json')");
- #raw("package_filename = nmm('package', module_name, destination_dir)");
- #raw("package_filename = nmm('pack', module_path, destination_dir)");
- #raw("report = nmm('pack', module_path, '-dry-run')");
- #raw("report = nmm('pack', module_path, destination_dir, '-dry-run')");
- #raw("package_filename = nmm('pack', module_path, destination_dir, '-no-tests')");
- #raw("report = nmm('publish', package_filename)");
- #raw("report = nmm('publish', package_filename, '-dry-run')");
- #raw("report = nmm('publish', package_filename, '-check')");
- #raw("report = nmm('publish', package_filename, '-force')");
- #raw("json_text = nmm('publish', package_filename, '-json')");
- #raw("report = nmm('publish', package_filename, '-source', url)");
- #raw("tf = nmm('validate', module_path)");
- #raw("tf = nmm('validate', module_path, '-strict')");
- #raw("report = nmm('validate', module_path, '-warnings')");
- #raw("json_text = nmm('validate', module_path, '-json')");
- #raw("report = nmm('audit')");
- #raw("report = nmm('audit', package_name)");
- #raw("json_text = nmm('audit', '-json')");
- #raw("report = nmm('doctor')");
- #raw("report = nmm('doctor', package_name)");
- #raw("json_text = nmm('doctor', package_name, '-json')");
- #raw("report = nmm('repair')");
- #raw("packages = nmm('search', query)");
- #raw("json_text = nmm('search', query, '-json')");
- #raw("packages = nmm('search', query, '-platform')");
- #raw("info = nmm('info', package_name)");
- #raw("info = nmm('info', package_name, version)");
- #raw("json_text = nmm('info', package_name, '-json')");
- #raw("versions = nmm('versions', package_name)");
- #raw("json_text = nmm('versions', package_name, '-json')");
- #raw("report = nmm('registry', 'list')");
- #raw("report = nmm('registry', 'check')");
- #raw("report = nmm('registry', 'validate')");
- #raw("report = nmm('registry', 'stats')");
- #raw("report = nmm('registry', 'doctor')");
- #raw("outdated = nmm('outdated')");
- #raw("outdated = nmm('outdated', module_name)");
- #raw("json_text = nmm('outdated', module_name, '-json')");
- #raw("report = nmm('update')");
- #raw("report = nmm('update', '-dry-run')");
- #raw("report = nmm('update', module_name)");
- #raw("report = nmm('update', module_name, '-dry-run')");
- #raw("cache_dir = nmm('cache', 'dir')");
- #raw("cache_packages = nmm('cache', 'list')");
- #raw("report = nmm('cache', 'size')");
- #raw("info = nmm('cache', 'info', package_name, version)");
- #raw("tf = nmm('cache', 'has', package_name, version)");
- #raw("report = nmm('cache', 'add', package_filename)");
- #raw("report = nmm('cache', 'export', destination_dir)");
- #raw("report = nmm('cache', 'import', source_dir)");
- #raw("report = nmm('cache', 'remove', package_name, version)");
- #raw("report = nmm('cache', 'verify')");
- #raw("report = nmm('cache', 'prune')");
- #raw("report = nmm('cache', 'prune', '-dry-run')");
- #raw("status = nmm('cache', 'clear')");
- #raw("nmm('install', package_name, '-offline')");
- #raw("nmm('install', package_name, version, '-offline')");

== Argument d'entrée

/ query: chaîne : texte à chercher dans les métadonnées du registre.
/ package\_name: chaîne : nom du paquet dans le registre configuré.
/ version: chaîne : version exacte du paquet ou contrainte semver.
/ module\_path: chaîne : chemin vers un répertoire de module contenant module.json.
/ module\_name: chaîne : nom court du module.
/ state: logique : true active le chargement automatique du module au démarrage, false désactive l'autoload pour ce module.
/ git\_url: chaîne : une URL git (protocole http\/https).
/ destination\_dir: chaîne : répertoire de destination existant où l'archive sera créée.

== Argument de sortie

/ outdated: tableau de struct : modules installés ayant une version plus récente dans le registre.
/ cache\_dir: chaîne : répertoire du cache local de nmm.
/ cache\_packages: tableau de struct : paquets en cache avec les champs name, version, path et has\_sha256.
/ json\_text: chaîne : rapport d'audit encodé en JSON.
/ status: logique : true lorsque la commande de cache réussit.
/ packages: tableau de struct : entrées de paquet correspondant à la recherche.
/ info: struct : entrée de paquet du registre.
/ versions: cellule de chaînes : versions du paquet listées dans le registre.
/ report: struct : état d'audit avec les champs ok et issues.
/ tf: logique : true si module.json est valide, sinon une erreur est émise.
/ st: struct : liste des modules installés.
/ l: logique : état courant de l'autoload.
/ package\_filename: chaîne : nom du fichier.
/ lock: struct : contenu module-lock.json généré.

== Description

#strong[nmm]; est le gestionnaire de modules Nelson.

 Les installations sont préparées dans un répertoire temporaire, construites, verrouillées, puis copiées vers le répertoire final des modules utilisateur. En cas d'erreur avant la fin, #strong[nmm]; annule le module partiellement installé.

 Les dépendances de modules source déclarées dans #strong[module.json]; sont résolues avant la construction du module. Lorsqu'un module source fournit déjà #strong[module-lock.json];, ses versions exactes verrouillées de dépendances sont utilisées à la place des plages déclaratives. Les chemins locaux, archives et dépôts Git HTTP sont installés récursivement. Les contraintes de version sont vérifiées avec les dépendances déjà installées et les conflits arrêtent l'installation avant la copie du module. Les installations source construisent le module en staging avant de l'écrire dans le répertoire final des modules. Les tests du paquet ne sont pas exécutés à l'installation par défaut : passez #strong[-tests]; pour les lancer, ou définissez la variable d'environnement #strong[NELSON\_NMM\_INSTALL\_TESTS\=1]; pour les lancer à chaque installation source ; #strong[-no-tests]; reste accepté. Une entrée de registre déclarant #strong["tests": "required"]; exécute toujours les tests du paquet, et l'installation échoue s'ils échouent. Les archives préconstruites n'exécutent jamais de tests : elles ont été testées lors de l'empaquetage (#strong[nmm pack]; exige des tests réussis). Si une installation source échoue, une version déjà installée du même module reste installée et active.

 Les modules source et les archives précompilées sont validés avant installation. Les paquets dont la plage de compatibilité #strong[nelson]; ne correspond pas à la version de Nelson en cours sont refusés avant construction ou copie finale.

 Les paquets distribués au format source permettent d'obtenir des paquets optimisés pour votre machine et de disposer de dépôts distribués.

 Les modules installés sont compilés localement et peuvent nécessiter un compilateur C\/C++.

 

 #strong[st \= nmm('list')]; récupère la liste des modules installés. Cette lecture du registre local ne fait aucun accès réseau ni chargement de paquet. Elle exige uniquement le module json, pas webtools ni file\_archiver. Les formes -json et -quiet ont les mêmes dépendances.

 Ajouter #strong['-json']; a #strong[list];, #strong[commands];, #strong[help];, #strong[tree];, #strong[why];, #strong[deps];, #strong[outdated]; ou #strong[doctor]; retourne le meme rapport encode en JSON pour les scripts.

 Ajouter #strong['-quiet']; en dernier argument supprime la sortie console tout en conservant les valeurs retournees. Cette option est destinee aux scripts CI autour des commandes qui lancent des builders ou des tests.

 #strong[nmm('commands')]; retourne une courte liste scriptable des groupes de commandes supportes, des exemples de syntaxe et des alias. #strong[nmm('help')]; liste les noms de commandes. #strong[nmm('help', command)]; retourne l'entree d'une commande ou d'un alias.

 #strong[nmm('config')]; retourne le registre configure, le repertoire de cache, le repertoire des modules utilisateur, l'etat de la cle de signature, le nombre de cles de registre de confiance, l'autorisation des registres non signes et le nombre d'archives en cache offline.

 

 #strong[nmm('install', git\_url)]; installe un module distant.

 Par exemple : 'https:\/\/github.com\/nelson-lang\/module\_skeleton\_basic.git\#v1.0.0'

 '\#v1.0.0' est un#emph[commit-ish];: il permet de cloner exactement un commit.

 Le commit-ish peut être un tag (version exacte), un sha1 (commit exact) ou un nom de branche.

 Sans commit-ish, la branche master sera utilisée.

 #strong[nmm('orphans')]; liste les paquets de dependance installes automatiquement qui ne sont plus atteignables depuis les modules installes explicitement. #strong[nmm('autoremove', '-dry-run')]; rapporte ces paquets sans les supprimer, et #strong[nmm('autoremove')]; les supprime avec force explicite car ils sont deja classes comme dependances orphelines. Les deux commandes supportent la sortie #strong['-json']; pour les scripts.

 

 #strong[nmm('install', package\_name, version)]; installe une version exacte de paquet ou la version la plus récente correspondant à une contrainte semver depuis le registre configuré. L'entrée du registre doit contenir une source d'installation via #strong[source];, #strong[url]; ou #strong[archive];. Les dépendances déclarées par l'entrée du registre sont résolues récursivement avant l'installation du paquet demandé.

 Les contraintes semver acceptées incluent par exemple #strong[\>\=1.2.0];, #strong[\~1.4]; et #strong[^2.0.0];.

 Les installations depuis le registre refusent les entrées dont les métadonnées #strong[platforms]; ou #strong[nelson]; ne sont pas compatibles avec l'exécution courante avant de lire la source du paquet.

 #strong[nmm('install', package\_name, '-dry-run')]; resout le dernier paquet compatible du registre. #strong[nmm('install', package\_name, version, '-dry-run')]; resout le paquet du registre et ses dependances recursives, verifie la compatibilite et les checksums d'archives locales disponibles, puis retourne un plan sans modifier les modules installes ni le cache.

 #strong[nmm('install', package\_name, version, '-tests')]; installe un paquet du registre en exécutant ses tests lorsque sa source est une arborescence locale ou un dépôt Git ; #strong[-no-tests]; les ignore explicitement (comportement par défaut, sauf si l'entrée de registre déclare #strong["tests": "required"];). #strong[nmm('install', package\_name, version, '-force')]; reinstalle cette version du paquet du registre en remplacant une copie deja installee si necessaire.

 

 #strong[nmm('install', filename\_nmz)]; installe un module externe précompilé.

 Les archives précompilées doivent contenir #strong[module-lock.json];. Les dépendances listées dans ce fichier doivent déjà être installées et la plateforme de l'archive doit correspondre à l'architecture courante ou valoir #strong[all];. Les paquets binaires exigent aussi que l'architecture Nelson et le tag ABI verrouillés correspondent au build Nelson en cours. Si un fichier voisin #strong[.sha256]; existe, il est vérifié avant extraction.

 #strong[nmm('install', module\_path, '-tests')]; installe un module source local (ou un dépôt Git) en exécutant ses tests de paquet avant l'enregistrement ; #strong[nmm('install', module\_path, '-no-tests')]; les ignore explicitement. Sans option, les tests ne sont pas exécutés, sauf si #strong[NELSON\_NMM\_INSTALL\_TESTS\=1]; est défini.

 #strong[nmm('install', package\_filename, '-dry-run')]; vérifie le plan d'installation d'une archive sans écrire dans #strong[modules.json]; ni copier de fichiers dans le répertoire des modules utilisateur.

 #strong[nmm('install', package\_filename, '-force')]; reinstalle la meme version d'archive verifiee en supprimant la version deja installee apres validation dry-run de l'archive.

 #strong[nmm('verify', package\_filename)]; vérifie une archive #strong[.nmz]; sans l'installer. La commande contrôle la structure, #strong[module.json];, #strong[module-lock.json];, les checksums embarqués, le sidecar optionnel #strong[.sha256];, et la compatibilité d'architecture ou d'ABI Nelson des paquets binaires. #strong[nmm('verify', module\_path)]; verifie que le lockfile d'un module source est a jour.

 

 #strong[nmm('load', module\_name)]; charge un module installé pour la session courante.

 #strong[nmm('load', module\_name, version)]; charge une version installée spécifique d'un module.

 Plusieurs versions du même module peuvent être installées côte à côte. La version active est la version installée la plus récente sauf si une version a été épinglée.

 #strong[nmm('pin', module\_name, version)]; choisit la version active par défaut et l'enregistre dans #strong[modules.json]; comme #strong[pinned\_version];. Si la version est omise, la version active courante est epinglee.

 #strong[nmm('unpin', module\_name)]; supprime #strong[pinned\_version]; sans desinstaller le module et active la version installee la plus recente.

 #strong[nmm('why', package\_name)]; indique quels modules installes dependent d'un paquet en lisant les dependances des #strong[module-lock.json]; installes. #strong[nmm('why', install\_report, package\_name)]; explique pourquoi un paquet apparait dans un plan dry-run d'installation depuis le registre.

 #strong[nmm('tree', package\_name)]; retourne l'arbre des dependances installees d'un package en lisant #strong[module-lock.json];. #strong[nmm('tree', install\_report)]; retourne l'arbre de dependances represente par un plan dry-run d'installation depuis le registre. Le rapport contient les dependances imbriquees, les packages manquants et les conflits.

 #strong[nmm('deps', package\_name)]; et #strong[nmm('deps', install\_report)]; retournent une liste plate des dependances depuis un arbre de package installe ou un plan dry-run d'installation depuis le registre. #strong[nmm('rdeps', package\_name)]; retourne les packages installes qui dependent d'un package. #strong[nmm('status', package\_name)]; retourne un resume scriptable de l'etat installe, de la version active, du lockfile, des dependances manquantes et des dependances inverses.

 #strong[nmm('explain', package\_name)]; combine le status, l'arbre de dependances et les dependances inverses dans un rapport scriptable avec des lignes de resume lisibles. #strong[nmm('graph', package\_name)]; exporte le graphe de dependances installees en texte DOT et Mermaid.

 #strong[nmm('installed', package\_name)]; retourne uniquement les versions installees localement. #strong[nmm('latest', package\_name)]; retourne le dernier package compatible du registre. #strong[nmm('resolve', package\_name, version\_spec)]; retourne la version exacte compatible choisie pour une contrainte de version sans installation. #strong[nmm('satisfies', version, version\_spec)]; verifie une version avec une version exacte ou une contrainte semver.

 

 #strong[l \= nmm('autoload', module\_name]; retourne l'état courant d'autoload pour#strong[module\_name];.

 

 #strong[nmm('autoload', module\_name, state)]; marque un module installé pour être chargé automatiquement au démarrage.

 Par défaut, les modules sont marqués pour l'autoload.

 

 #strong[nmm('uninstall', module\_name)]; désinstalle un module installé.

 #strong[nmm('remove', module\_name)]; est un alias de #strong[nmm('uninstall', module\_name)];. La suppression retourne un rapport lorsqu'il est demande, avec les chemins supprimes, les dependances inverses et l'etat de modification des modules installes.

 #strong[nmm('remove', module\_name, version)]; supprime uniquement la version installée sélectionnée. Sans argument de version, toutes les versions installées du module sont supprimées. #strong[nmm('remove', module\_name, '-dry-run')]; retourne l'impact sans effacer de fichiers. Par defaut, la suppression est refusee lorsque des modules installes dependent encore du paquet; utiliser #strong[-force]; pour le supprimer quand meme.

 

 #strong[nmm('orphans')]; liste les paquets de dependance installes automatiquement qui ne sont plus atteignables depuis les modules installes explicitement. #strong[nmm('autoremove', '-dry-run')]; rapporte ces paquets sans les supprimer, et #strong[nmm('autoremove')]; les supprime avec force explicite car ils sont deja classes comme dependances orphelines. Les deux commandes supportent la sortie #strong['-json']; pour les scripts.

 #strong[nmm('package', module\_name, destination\_dir)]; empaquette un module dans un fichier zip.

 Le fichier #strong[module-lock.json]; généré conserve les versions exactes des dépendances installées, le format du verrou, le type de paquet (#strong[source]; ou #strong[binary];), les métadonnées de source, la version de Nelson, l'architecture, le tag ABI et les checksums des fichiers installés essentiels comme #strong[module.json];, #strong[loader.m];, #strong[builder.m]; et les scripts de démarrage ou de fin. Le module empaqueté décrit ainsi l'ensemble de dépendances, le contexte d'exécution et l'état d'intégrité utilisés lors de la construction.

 L'empaquetage écrit aussi #strong[package\_filename.sha256];. Ce sidecar est optionnel pour une distribution en fichier unique : l'installation ou la publication d'une archive #strong[.nmz]; le vérifie lorsqu'il est présent, sinon elle s'appuie sur les checksums embarqués dans #strong[module-lock.json];.

 

 #strong[nmm('pack', module\_path, destination\_dir)]; valide et construit un module source dans un répertoire temporaire, exécute les tests du module avec arrêt au premier échec, génère #strong[module-lock.json];, puis crée une archive #strong[.nmz]; et son checksum #strong[.sha256];.

 #strong[nmm('pack', module\_path, '-dry-run')]; valide, construit, teste et calcule le lockfile sans creer d'archive. Avec un repertoire de destination, le rapport contient aussi le chemin d'archive qui serait ecrit.

 #strong[nmm('pack', module\_path, destination\_dir, '-no-tests')]; crée l'archive sans exécuter les tests du paquet. Cette option vise uniquement les archives locales de développement.

 Par défaut l'archive exclut les répertoires de gestion de version, les sorties de compilation (#strong[bin\/];, #strong[x64\/];, fichiers objets et bibliothèques, caches cmake) et les fichiers temporaires d'éditeur, de sorte qu'un module empaqueté est propre sans aucune configuration. Un fichier #strong[.nmignore]; à la racine du module ajoute des exclusions avec des motifs à la manière de gitignore (commentaires #strong[\#];, #strong[\*];, #strong[\*\*];, un #strong[\/]; final pour un répertoire, un #strong[!]; initial pour réinclure, un nom sans barre oblique correspond à n'importe quelle profondeur tandis qu'un motif avec barre oblique est ancré à la racine du module) ; un fichier dont le répertoire parent est exclu ne peut pas être réinclus. Un tableau #strong[files]; optionnel dans #strong[module.json]; est une liste blanche de motifs glob : lorsqu'il est présent, seuls les fichiers correspondants sont empaquetés (toujours moins les exclusions par défaut, et en conservant toujours #strong[module.json];, #strong[module-lock.json]; et #strong[loader.m];). #strong[nmm('pack', module\_path, '-dry-run')]; liste exactement les fichiers qui seraient empaquetés, afin de vérifier la sélection avant d'écrire une archive.

 #strong[nmm('lock', module\_path)]; construit le loader source si nécessaire et écrit ou rafraîchit #strong[module-lock.json]; dans l'arborescence source sans installer ni empaqueter le module. #strong[nmm('lock', module\_path, '-dry-run')]; retourne le lock calcule sans l'ecrire. #strong[nmm('lock', module\_path, '-check')]; indique si le lockfile courant est a jour. #strong[nmm('lock', module\_path, '-diff')]; retourne aussi le lock courant et le lock attendu.

 #strong[nmm('publish', package\_filename)]; publie une archive #strong[.nmz]; verifiee dans le fichier JSON du registre local configure. La commande ajoute les metadonnees du paquet depuis #strong[module.json];, dont le resume, la description, la licence, les auteurs, le depot, les tags et le type de paquet lorsqu'ils existent, ainsi que le chemin source et le checksum SHA-256, puis ecrit #strong[registry.json.sha256];. Lorsque #strong[NELSON\_NMM\_REGISTRY\_SIGNING\_KEY]; contient une graine privee Ed25519 (64 caracteres hexadecimaux), elle ecrit aussi le sidecar #strong[registry.json.sig]; : un document JSON portant la signature Ed25519 des octets exacts du registre et la cle publique correspondante (voir #strong[crypto.ed25519.sign];).

 #strong[nmm('publish', package\_filename, '-dry-run')]; verifie l'archive, lit le registre local cible et retourne l'entree qui serait ecrite sans modifier les fichiers. #strong[nmm('publish', package\_filename, '-check')]; indique si la publication est possible. #strong[nmm('publish', package\_filename, '-force')]; remplace explicitement une entree existante avec le meme paquet et la meme version. #strong[-json]; retourne le rapport de publication en JSON.

 #strong[nmm('publish', package\_filename, '-source', url)]; enregistre #strong[url]; (une adresse #strong[http]; ou #strong[https];, typiquement un lien de telechargement de release) comme source de l'archive au lieu du chemin local d'empaquetage. La somme de controle reste calculee a partir de l'archive locale publiee, qui doit etre identique au fichier heberge. C'est ainsi qu'un registre heberge reference ses archives.

 Un paquet binaire (builtin) est specifique a une architecture, donc son archive est stockee sous une table #strong[artifacts]; indexee par architecture (par exemple #strong[win64]; et #strong[woa64];). Publier une autre architecture de la meme version fusionne dans la meme entree de registre au lieu de la remplacer, de sorte qu'un meme nom et une meme version peuvent livrer plusieurs architectures publiees a des moments differents ; seule la republication de la meme architecture necessite #strong[-force];. A l'installation, l'archive correspondant a l'architecture courante est selectionnee. Les paquets source conservent la plateforme #strong[all]; avec une source et une somme de controle uniques.

 

 #strong[nmm('validate', module\_path)]; valide le descripteur du module avant installation ou empaquetage.

 La validation vérifie les champs obligatoires, la syntaxe du nom de module, la syntaxe de version sémantique, les plateformes supportées, la compatibilité avec la version de Nelson, le type de builtin, l'expression de licence SPDX, les déclarations de dépendances et la structure du module source. Un module source valide doit fournir #strong[builder.m]; ou #strong[loader.m];, #strong[etc\/startup.m];, #strong[etc\/finish.m];, #strong[help]; et #strong[tests];. L'empaquetage exige aussi au moins un fichier de test et s'arrête lorsqu'un test du paquet échoue.

 #strong[nmm('validate', module\_path, '-strict')]; exige aussi des métadonnées orientées publication comme #strong[repository];, #strong[homepage]; et des #strong[keywords]; non vides, ainsi qu'au moins un test et un fichier d'aide XML.

 #strong[nmm('validate', module\_path, '-warnings')]; retourne des avertissements non bloquants pour les metadonnees faibles comme une description absente, un depot absent ou une aide reduite au chapitre.

 #strong[nmm('validate', module\_path, '-json')]; retourne un rapport de validation JSON au lieu d'émettre des erreurs de validation.

 Les archives empaquetées sont aussi vérifiées après construction : #strong[loader.m]; et #strong[module-lock.json]; doivent exister avant l'écriture ou l'installation d'une archive #strong[.nmz];.

 

 #strong[nmm('audit')]; vérifie les enregistrements des modules installés.

 L'audit vérifie les chemins installés, #strong[module.json];, #strong[module-lock.json];, la compatibilité de plateforme verrouillée, la compatibilité d'ABI Nelson des paquets binaires, les dépendances verrouillées et les checksums du lockfile. Il retourne une struct avec les champs #strong[ok]; et #strong[issues];.

 #strong[nmm('audit', package\_name)]; execute les memes verifications pour un seul package installe.

 #strong[nmm('audit', '-json')]; retourne le même rapport d'audit encodé en JSON pour les usages CI.

 #strong[nmm('doctor')]; retourne le rapport d'audit avec la version Nelson, l'architecture, le tag ABI, #strong[usermodulesdir()];, le registre configuré, le répertoire de cache et les noms des modules cassés.

 #strong[nmm('doctor', package\_name)]; retourne le meme diagnostic pour un seul package et inclut son rapport #strong[status];.

 #strong[nmm('repair')]; supprime les entrées cassées de #strong[modules.json]; dont le chemin installé est absent. La commande retourne la liste des entrées supprimées.

 

 #strong[nmm('search', query)];, #strong[nmm('info', package\_name)]; et #strong[nmm('versions', package\_name)]; lisent l'index du registre configuré.

 #strong[nmm('search', query, '-json')];, #strong[nmm('info', package\_name, '-json')]; et #strong[nmm('versions', package\_name, '-json')]; retournent une sortie JSON pour les workflows CI et scripts.

 Par défaut, #strong[search]; rapporte l'ensemble du registre indépendamment de la machine courante. #strong[nmm('search', query, '-platform')]; ne conserve que les paquets installables sur l'architecture courante (leur champ #strong[platforms]; contient #strong[computer('arch')]; ou #strong[all];) ; c'est un opt-in pour que les scripts obtiennent par défaut des résultats indépendants de la machine, et les couches de présentation comme la fenêtre du gestionnaire de paquets l'utilisent pour masquer les paquets construits pour une autre architecture.

 #strong[nmm('registry', 'check')]; verifie le registre configure (fichier local ou source distante), son sidecar checksum et son sidecar de signature Ed25519, puis retourne un rapport de diagnostic incluant la cle de signature, le nombre de cles de confiance et, pour un registre distant, la copie en cache et l'etat hors ligne.

 #strong[nmm('registry', 'validate')]; est un alias de #strong[check];. #strong[nmm('registry', 'stats')]; retourne les compteurs d'entrees, de packages uniques, la liste des plateformes et les compteurs de checksums\/signatures. #strong[nmm('registry', 'list')]; retourne le registre configure, les packages et les stats. #strong[nmm('registry', 'doctor')]; combine la validation du registre avec les doublons, sources manquantes, packages non signes et packages sans checksum.

 La source du registre est #strong[NELSON\_NMM\_REGISTRY]; si elle est définie, sinon #strong[registry.json]; dans #strong[usermodulesdir()];. La source peut être un fichier JSON local ou un endpoint distant (#strong[http:\/\/];, #strong[https:\/\/]; ou #strong[file:\/\/];). Les fichiers de registre locaux doivent avoir un sidecar #strong[registry.json.sha256]; et sont vérifiés avant lecture ; si #strong[registry.json.sig]; est présent, sa signature Ed25519 doit être valide et provenir d'une clé de confiance. Les registres distants sont téléchargés en octets bruts avec #strong[registry.json.sig];, vérifiés avant l'analyse du JSON, puis mis en cache dans le répertoire de cache nmm : si la source est injoignable, la dernière copie vérifiée est revérifiée et utilisée (mode hors ligne). Un registre distant sans signature est refusé sauf si #strong[NELSON\_NMM\_REGISTRY\_ALLOW\_UNSIGNED\=1]; est défini (un avertissement est émis une fois par session). Les clés de confiance sont les clés officielles du registre Nelson embarquées dans Nelson, les clés listées dans #strong[NELSON\_NMM\_REGISTRY\_PUBLIC\_KEY]; (séparées par ';', 64 caractères hexadécimaux chacune) et la clé dérivée de #strong[NELSON\_NMM\_REGISTRY\_SIGNING\_KEY];. L'installation d'une entrée d'archive vérifie aussi le checksum du paquet avant extraction.

 

 #strong[nmm('outdated')]; liste les modules installés pour lesquels le registre contient une version sémantique plus récente.

 #strong[nmm('update')]; met à jour les modules installés vers la dernière version du registre. Avec un nom de module, seul ce module est mis à jour.

 #strong[nmm('update', module\_name, '-dry-run')]; retourne le plan de mise à jour sans modifier les modules installés.

 #strong[nmm('update', '-dry-run')]; retourne le plan de mise a jour de tous les modules installes sans les modifier.

 

 #strong[nmm('cache', 'dir')]; retourne le répertoire du cache local d'archives et #strong[nmm('cache', 'clear')]; le vide. L'installation d'une archive #strong[.nmz]; vérifiée la stocke dans le cache.

 #strong[nmm('cache', 'list')]; liste les paquets offline actuellement disponibles dans le cache local.

 #strong[nmm('cache', 'size')]; retourne le nombre d'archives et la taille totale en octets. #strong[nmm('cache', 'remove', package\_name, version)]; supprime une archive en cache et son checksum.

 #strong[nmm('cache', 'info', package\_name, version)]; retourne le chemin de l'archive en cache, le checksum, la taille et la date. #strong[nmm('cache', 'has', package\_name, version)]; retourne true lorsque cette archive est disponible.

 #strong[nmm('cache', 'add', package\_filename)]; verifie et precharge une archive locale #strong[.nmz]; dans le cache. #strong[nmm('cache', 'export', destination\_dir)]; copie les archives en cache et les checksums vers un repertoire. #strong[nmm('cache', 'import', source\_dir)]; verifie et importe les archives en cache depuis un repertoire.

 #strong[nmm('cache', 'verify')]; vérifie les archives du cache et signale les entrées corrompues. #strong[nmm('cache', 'prune')]; supprime les anciennes versions en cache en gardant la dernière version en cache de chaque paquet. #strong[nmm('cache', 'prune', '-dry-run')]; retourne les memes suppressions sans effacer les fichiers.

 #strong[nmm('install', package\_name, '-offline')]; installe la version de paquet la plus récente présente dans le cache, sans lire le registre ni la source du paquet.

 #strong[nmm('install', package\_name, version, '-offline')]; installe une version exacte depuis le cache local, ou la version en cache la plus récente correspondant à une contrainte semver, sans lire le registre ni la source du paquet. Ajouter #strong['-dry-run']; verifie le plan de l'archive en cache sans l'installer.

 


== Exemples

Deploy module\_skeleton\_basic template

``````matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
    macro_sum(3, 4)
    nmm('uninstall', 'module_skeleton_basic')
end
``````

Package a module

``````matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
end
package_filename = nmm('package', 'module_skeleton_basic', tempdir())

``````


== Voir aussi

#nlink(<modules_manager:ismodule>)[ismodule];, #nlink(<modules_manager:getmodules>)[getmodules];, #nlink(<nmm_gui:nmm_gui>)[nmm\_gui];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [workflows de gestion de paquets, registre, lockfile et cache],
)

// Auteur: Allan CORNET
