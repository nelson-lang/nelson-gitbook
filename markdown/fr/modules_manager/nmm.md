# nmm

Gestionnaire de modules Nelson.

## 📝 Syntaxe

- st = nmm('list')
- st\_json = nmm('list', '-json')
- commands = nmm('commands')
- commands\_json = nmm('commands', '-json')
- report = nmm('help')
- report\_json = nmm('help', '-json')
- report = nmm('help', command)
- report\_json = nmm('help', command, '-json')
- report = nmm(command, ..., '-quiet')
- nmm('load', module\_name)
- nmm('load', module\_name, version)
- report = nmm('verify', package\_filename)
- report = nmm('verify', module\_path)
- lock = nmm('lock', module\_path)
- lock = nmm('lock', module\_path, '-dry-run')
- report = nmm('lock', module\_path, '-check')
- report = nmm('lock', module\_path, '-diff')
- report = nmm('config')
- report = nmm('pin', module\_name)
- report = nmm('pin', module\_name, version)
- report = nmm('unpin', module\_name)
- report = nmm('why', package\_name)
- report = nmm('why', install\_report, package\_name)
- json\_text = nmm('why', package\_name, '-json')
- report = nmm('tree', package\_name)
- report = nmm('tree', install\_report)
- json\_text = nmm('tree', package\_name, '-json')
- deps = nmm('deps', package\_name)
- deps = nmm('deps', install\_report)
- json\_text = nmm('deps', package\_name, '-json')
- rdeps = nmm('rdeps', package\_name)
- status = nmm('status', package\_name)
- report = nmm('explain', package\_name)
- graph = nmm('graph', package\_name)
- versions = nmm('installed', package\_name)
- info = nmm('latest', package\_name)
- report = nmm('resolve', package\_name, version\_spec)
- tf = nmm('satisfies', version, version\_spec)
- l = nmm('autoload', module\_name)
- nmm('autoload', module\_name, state)
- nmm('install', git\_url)
- nmm('install', module\_path, '-tests')
- nmm('install', module\_path, '-no-tests')
- nmm('install', git\_url, '-tests')
- report = nmm('install', package\_filename, '-dry-run')
- report = nmm('install', package\_filename, '-force')
- report = nmm('install', package\_name, '-dry-run')
- nmm('install', package\_name, version)
- report = nmm('install', package\_name, version, '-dry-run')
- nmm('install', package\_name, version, '-tests')
- nmm('install', package\_name, version, '-no-tests')
- nmm('install', package\_name, version, '-force')
- report = nmm('install', package\_name, version, '-offline', '-dry-run')
- nmm('uninstall', module\_name)
- nmm('uninstall', module\_name, version)
- nmm('remove', module\_name)
- report = nmm('remove', module\_name, '-dry-run')
- report = nmm('remove', module\_name, '-force')
- nmm('remove', module\_name, version)
- report = nmm('remove', module\_name, version, '-dry-run')
- orphans = nmm('orphans')
- orphans\_json = nmm('orphans', '-json')
- report = nmm('autoremove')
- report = nmm('autoremove', '-dry-run')
- report\_json = nmm('autoremove', '-dry-run', '-json')
- package\_filename = nmm('package', module\_name, destination\_dir)
- package\_filename = nmm('pack', module\_path, destination\_dir)
- report = nmm('pack', module\_path, '-dry-run')
- report = nmm('pack', module\_path, destination\_dir, '-dry-run')
- package\_filename = nmm('pack', module\_path, destination\_dir, '-no-tests')
- report = nmm('publish', package\_filename)
- report = nmm('publish', package\_filename, '-dry-run')
- report = nmm('publish', package\_filename, '-check')
- report = nmm('publish', package\_filename, '-force')
- json\_text = nmm('publish', package\_filename, '-json')
- report = nmm('publish', package\_filename, '-source', url)
- tf = nmm('validate', module\_path)
- tf = nmm('validate', module\_path, '-strict')
- report = nmm('validate', module\_path, '-warnings')
- json\_text = nmm('validate', module\_path, '-json')
- report = nmm('audit')
- report = nmm('audit', package\_name)
- json\_text = nmm('audit', '-json')
- report = nmm('doctor')
- report = nmm('doctor', package\_name)
- json\_text = nmm('doctor', package\_name, '-json')
- report = nmm('repair')
- packages = nmm('search', query)
- json\_text = nmm('search', query, '-json')
- packages = nmm('search', query, '-platform')
- info = nmm('info', package\_name)
- info = nmm('info', package\_name, version)
- json\_text = nmm('info', package\_name, '-json')
- versions = nmm('versions', package\_name)
- json\_text = nmm('versions', package\_name, '-json')
- report = nmm('registry', 'list')
- report = nmm('registry', 'check')
- report = nmm('registry', 'validate')
- report = nmm('registry', 'stats')
- report = nmm('registry', 'doctor')
- outdated = nmm('outdated')
- outdated = nmm('outdated', module\_name)
- json\_text = nmm('outdated', module\_name, '-json')
- report = nmm('update')
- report = nmm('update', '-dry-run')
- report = nmm('update', module\_name)
- report = nmm('update', module\_name, '-dry-run')
- cache\_dir = nmm('cache', 'dir')
- cache\_packages = nmm('cache', 'list')
- report = nmm('cache', 'size')
- info = nmm('cache', 'info', package\_name, version)
- tf = nmm('cache', 'has', package\_name, version)
- report = nmm('cache', 'add', package\_filename)
- report = nmm('cache', 'export', destination\_dir)
- report = nmm('cache', 'import', source\_dir)
- report = nmm('cache', 'remove', package\_name, version)
- report = nmm('cache', 'verify')
- report = nmm('cache', 'prune')
- report = nmm('cache', 'prune', '-dry-run')
- status = nmm('cache', 'clear')
- nmm('install', package\_name, '-offline')
- nmm('install', package\_name, version, '-offline')

## 📥 Argument d'entrée

- query - chaîne : texte à chercher dans les métadonnées du registre.
- package\_name - chaîne : nom du paquet dans le registre configuré.
- version - chaîne : version exacte du paquet ou contrainte semver.
- module\_path - chaîne : chemin vers un répertoire de module contenant module.json.
- module\_name - chaîne : nom court du module.
- state - logique : true active le chargement automatique du module au démarrage, false désactive l'autoload pour ce module.
- git\_url - chaîne : une URL git (protocole http/https).
- destination\_dir - chaîne : répertoire de destination existant où l'archive sera créée.

## 📤 Argument de sortie

- outdated - tableau de struct : modules installés ayant une version plus récente dans le registre.
- cache\_dir - chaîne : répertoire du cache local de nmm.
- cache\_packages - tableau de struct : paquets en cache avec les champs name, version, path et has\_sha256.
- json\_text - chaîne : rapport d'audit encodé en JSON.
- status - logique : true lorsque la commande de cache réussit.
- packages - tableau de struct : entrées de paquet correspondant à la recherche.
- info - struct : entrée de paquet du registre.
- versions - cellule de chaînes : versions du paquet listées dans le registre.
- report - struct : état d'audit avec les champs ok et issues.
- tf - logique : true si module.json est valide, sinon une erreur est émise.
- st - struct : liste des modules installés.
- l - logique : état courant de l'autoload.
- package\_filename - chaîne : nom du fichier.
- lock - struct : contenu module-lock.json généré.

## 📄 Description


<b>nmm</b> est le gestionnaire de modules Nelson. 

Les installations sont préparées dans un répertoire temporaire, construites, verrouillées, puis copiées vers le répertoire final des modules utilisateur. En cas d'erreur avant la fin, <b>nmm</b> annule le module partiellement installé. 

Les dépendances de modules source déclarées dans <b>module.json</b> sont résolues avant la construction du module. Lorsqu'un module source fournit déjà <b>module-lock.json</b>, ses versions exactes verrouillées de dépendances sont utilisées à la place des plages déclaratives. Les chemins locaux, archives et dépôts Git HTTP sont installés récursivement. Les contraintes de version sont vérifiées avec les dépendances déjà installées et les conflits arrêtent l'installation avant la copie du module. Les installations source construisent le module en staging avant de l'écrire dans le répertoire final des modules. Les tests du paquet ne sont pas exécutés à l'installation par défaut : passez <b>-tests</b> pour les lancer, ou définissez la variable d'environnement <b>NELSON\_NMM\_INSTALL\_TESTS=1</b> pour les lancer à chaque installation source ; <b>-no-tests</b> reste accepté. Une entrée de registre déclarant <b>"tests": "required"</b> exécute toujours les tests du paquet, et l'installation échoue s'ils échouent. Les archives préconstruites n'exécutent jamais de tests : elles ont été testées lors de l'empaquetage (<b>nmm pack</b> exige des tests réussis). Si une installation source échoue, une version déjà installée du même module reste installée et active. 

Les modules source et les archives précompilées sont validés avant installation. Les paquets dont la plage de compatibilité <b>nelson</b> ne correspond pas à la version de Nelson en cours sont refusés avant construction ou copie finale. 

Les paquets distribués au format source permettent d'obtenir des paquets optimisés pour votre machine et de disposer de dépôts distribués. 

Les modules installés sont compilés localement et peuvent nécessiter un compilateur C/C++. 

 

<b>st = nmm('list')</b> récupère la liste des modules installés. Cette lecture du registre local ne fait aucun accès réseau ni chargement de paquet. Elle exige uniquement le module json, pas webtools ni file\_archiver. Les formes -json et -quiet ont les mêmes dépendances. 

Ajouter <b>'-json'</b> a <b>list</b>, <b>commands</b>, <b>help</b>, <b>tree</b>, <b>why</b>, <b>deps</b>, <b>outdated</b> ou <b>doctor</b> retourne le meme rapport encode en JSON pour les scripts. 

Ajouter <b>'-quiet'</b> en dernier argument supprime la sortie console tout en conservant les valeurs retournees. Cette option est destinee aux scripts CI autour des commandes qui lancent des builders ou des tests. 

<b>nmm('commands')</b> retourne une courte liste scriptable des groupes de commandes supportes, des exemples de syntaxe et des alias. <b>nmm('help')</b> liste les noms de commandes. <b>nmm('help', command)</b> retourne l'entree d'une commande ou d'un alias. 

<b>nmm('config')</b> retourne le registre configure, le repertoire de cache, le repertoire des modules utilisateur, l'etat de la cle de signature, le nombre de cles de registre de confiance, l'autorisation des registres non signes et le nombre d'archives en cache offline. 

 

<b>nmm('install', git\_url)</b> installe un module distant. 

Par exemple : 'https://github.com/nelson-lang/module\_skeleton\_basic.git#v1.0.0' 

'#v1.0.0' est un<i>commit-ish</i>: il permet de cloner exactement un commit. 

Le commit-ish peut être un tag (version exacte), un sha1 (commit exact) ou un nom de branche. 

Sans commit-ish, la branche master sera utilisée. 

<b>nmm('orphans')</b> liste les paquets de dependance installes automatiquement qui ne sont plus atteignables depuis les modules installes explicitement. <b>nmm('autoremove', '-dry-run')</b> rapporte ces paquets sans les supprimer, et <b>nmm('autoremove')</b> les supprime avec force explicite car ils sont deja classes comme dependances orphelines. Les deux commandes supportent la sortie <b>'-json'</b> pour les scripts. 

 

<b>nmm('install', package\_name, version)</b> installe une version exacte de paquet ou la version la plus récente correspondant à une contrainte semver depuis le registre configuré. L'entrée du registre doit contenir une source d'installation via <b>source</b>, <b>url</b> ou <b>archive</b>. Les dépendances déclarées par l'entrée du registre sont résolues récursivement avant l'installation du paquet demandé. 

Les contraintes semver acceptées incluent par exemple <b>>=1.2.0</b>, <b>~1.4</b> et <b>^2.0.0</b>. 

Les installations depuis le registre refusent les entrées dont les métadonnées <b>platforms</b> ou <b>nelson</b> ne sont pas compatibles avec l'exécution courante avant de lire la source du paquet. 

<b>nmm('install', package\_name, '-dry-run')</b> resout le dernier paquet compatible du registre. <b>nmm('install', package\_name, version, '-dry-run')</b> resout le paquet du registre et ses dependances recursives, verifie la compatibilite et les checksums d'archives locales disponibles, puis retourne un plan sans modifier les modules installes ni le cache. 

<b>nmm('install', package\_name, version, '-tests')</b> installe un paquet du registre en exécutant ses tests lorsque sa source est une arborescence locale ou un dépôt Git ; <b>-no-tests</b> les ignore explicitement (comportement par défaut, sauf si l'entrée de registre déclare <b>"tests": "required"</b>). <b>nmm('install', package\_name, version, '-force')</b> reinstalle cette version du paquet du registre en remplacant une copie deja installee si necessaire. 

 

<b>nmm('install', filename\_nmz)</b> installe un module externe précompilé. 

Les archives précompilées doivent contenir <b>module-lock.json</b>. Les dépendances listées dans ce fichier doivent déjà être installées et la plateforme de l'archive doit correspondre à l'architecture courante ou valoir <b>all</b>. Les paquets binaires exigent aussi que l'architecture Nelson et le tag ABI verrouillés correspondent au build Nelson en cours. Si un fichier voisin <b>.sha256</b> existe, il est vérifié avant extraction. 

<b>nmm('install', module\_path, '-tests')</b> installe un module source local (ou un dépôt Git) en exécutant ses tests de paquet avant l'enregistrement ; <b>nmm('install', module\_path, '-no-tests')</b> les ignore explicitement. Sans option, les tests ne sont pas exécutés, sauf si <b>NELSON\_NMM\_INSTALL\_TESTS=1</b> est défini. 

<b>nmm('install', package\_filename, '-dry-run')</b> vérifie le plan d'installation d'une archive sans écrire dans <b>modules.json</b> ni copier de fichiers dans le répertoire des modules utilisateur. 

<b>nmm('install', package\_filename, '-force')</b> reinstalle la meme version d'archive verifiee en supprimant la version deja installee apres validation dry-run de l'archive. 

<b>nmm('verify', package\_filename)</b> vérifie une archive <b>.nmz</b> sans l'installer. La commande contrôle la structure, <b>module.json</b>, <b>module-lock.json</b>, les checksums embarqués, le sidecar optionnel <b>.sha256</b>, et la compatibilité d'architecture ou d'ABI Nelson des paquets binaires. <b>nmm('verify', module\_path)</b> verifie que le lockfile d'un module source est a jour. 

 

<b>nmm('load', module\_name)</b> charge un module installé pour la session courante. 

<b>nmm('load', module\_name, version)</b> charge une version installée spécifique d'un module. 

Plusieurs versions du même module peuvent être installées côte à côte. La version active est la version installée la plus récente sauf si une version a été épinglée. 

<b>nmm('pin', module\_name, version)</b> choisit la version active par défaut et l'enregistre dans <b>modules.json</b> comme <b>pinned\_version</b>. Si la version est omise, la version active courante est epinglee. 

<b>nmm('unpin', module\_name)</b> supprime <b>pinned\_version</b> sans desinstaller le module et active la version installee la plus recente. 

<b>nmm('why', package\_name)</b> indique quels modules installes dependent d'un paquet en lisant les dependances des <b>module-lock.json</b> installes. <b>nmm('why', install\_report, package\_name)</b> explique pourquoi un paquet apparait dans un plan dry-run d'installation depuis le registre. 

<b>nmm('tree', package\_name)</b> retourne l'arbre des dependances installees d'un package en lisant <b>module-lock.json</b>. <b>nmm('tree', install\_report)</b> retourne l'arbre de dependances represente par un plan dry-run d'installation depuis le registre. Le rapport contient les dependances imbriquees, les packages manquants et les conflits. 

<b>nmm('deps', package\_name)</b> et <b>nmm('deps', install\_report)</b> retournent une liste plate des dependances depuis un arbre de package installe ou un plan dry-run d'installation depuis le registre. <b>nmm('rdeps', package\_name)</b> retourne les packages installes qui dependent d'un package. <b>nmm('status', package\_name)</b> retourne un resume scriptable de l'etat installe, de la version active, du lockfile, des dependances manquantes et des dependances inverses. 

<b>nmm('explain', package\_name)</b> combine le status, l'arbre de dependances et les dependances inverses dans un rapport scriptable avec des lignes de resume lisibles. <b>nmm('graph', package\_name)</b> exporte le graphe de dependances installees en texte DOT et Mermaid. 

<b>nmm('installed', package\_name)</b> retourne uniquement les versions installees localement. <b>nmm('latest', package\_name)</b> retourne le dernier package compatible du registre. <b>nmm('resolve', package\_name, version\_spec)</b> retourne la version exacte compatible choisie pour une contrainte de version sans installation. <b>nmm('satisfies', version, version\_spec)</b> verifie une version avec une version exacte ou une contrainte semver. 

 

<b>l = nmm('autoload', module\_name</b> retourne l'état courant d'autoload pour<b>module\_name</b>. 

 

<b>nmm('autoload', module\_name, state)</b> marque un module installé pour être chargé automatiquement au démarrage. 

Par défaut, les modules sont marqués pour l'autoload. 

 

<b>nmm('uninstall', module\_name)</b> désinstalle un module installé. 

<b>nmm('remove', module\_name)</b> est un alias de <b>nmm('uninstall', module\_name)</b>. La suppression retourne un rapport lorsqu'il est demande, avec les chemins supprimes, les dependances inverses et l'etat de modification des modules installes. 

<b>nmm('remove', module\_name, version)</b> supprime uniquement la version installée sélectionnée. Sans argument de version, toutes les versions installées du module sont supprimées. <b>nmm('remove', module\_name, '-dry-run')</b> retourne l'impact sans effacer de fichiers. Par defaut, la suppression est refusee lorsque des modules installes dependent encore du paquet; utiliser <b>-force</b> pour le supprimer quand meme. 

 

<b>nmm('orphans')</b> liste les paquets de dependance installes automatiquement qui ne sont plus atteignables depuis les modules installes explicitement. <b>nmm('autoremove', '-dry-run')</b> rapporte ces paquets sans les supprimer, et <b>nmm('autoremove')</b> les supprime avec force explicite car ils sont deja classes comme dependances orphelines. Les deux commandes supportent la sortie <b>'-json'</b> pour les scripts. 

<b>nmm('package', module\_name, destination\_dir)</b> empaquette un module dans un fichier zip. 

Le fichier <b>module-lock.json</b> généré conserve les versions exactes des dépendances installées, le format du verrou, le type de paquet (<b>source</b> ou <b>binary</b>), les métadonnées de source, la version de Nelson, l'architecture, le tag ABI et les checksums des fichiers installés essentiels comme <b>module.json</b>, <b>loader.m</b>, <b>builder.m</b> et les scripts de démarrage ou de fin. Le module empaqueté décrit ainsi l'ensemble de dépendances, le contexte d'exécution et l'état d'intégrité utilisés lors de la construction. 

L'empaquetage écrit aussi <b>package\_filename.sha256</b>. Ce sidecar est optionnel pour une distribution en fichier unique : l'installation ou la publication d'une archive <b>.nmz</b> le vérifie lorsqu'il est présent, sinon elle s'appuie sur les checksums embarqués dans <b>module-lock.json</b>. 

 

<b>nmm('pack', module\_path, destination\_dir)</b> valide et construit un module source dans un répertoire temporaire, exécute les tests du module avec arrêt au premier échec, génère <b>module-lock.json</b>, puis crée une archive <b>.nmz</b> et son checksum <b>.sha256</b>. 

<b>nmm('pack', module\_path, '-dry-run')</b> valide, construit, teste et calcule le lockfile sans creer d'archive. Avec un repertoire de destination, le rapport contient aussi le chemin d'archive qui serait ecrit. 

<b>nmm('pack', module\_path, destination\_dir, '-no-tests')</b> crée l'archive sans exécuter les tests du paquet. Cette option vise uniquement les archives locales de développement. 

Par défaut l'archive exclut les répertoires de gestion de version, les sorties de compilation (<b>bin/</b>, <b>x64/</b>, fichiers objets et bibliothèques, caches cmake) et les fichiers temporaires d'éditeur, de sorte qu'un module empaqueté est propre sans aucune configuration. Un fichier <b>.nmignore</b> à la racine du module ajoute des exclusions avec des motifs à la manière de gitignore (commentaires <b>#</b>, <b>\*</b>, <b>\*\*</b>, un <b>/</b> final pour un répertoire, un <b>!</b> initial pour réinclure, un nom sans barre oblique correspond à n'importe quelle profondeur tandis qu'un motif avec barre oblique est ancré à la racine du module) ; un fichier dont le répertoire parent est exclu ne peut pas être réinclus. Un tableau <b>files</b> optionnel dans <b>module.json</b> est une liste blanche de motifs glob : lorsqu'il est présent, seuls les fichiers correspondants sont empaquetés (toujours moins les exclusions par défaut, et en conservant toujours <b>module.json</b>, <b>module-lock.json</b> et <b>loader.m</b>). <b>nmm('pack', module\_path, '-dry-run')</b> liste exactement les fichiers qui seraient empaquetés, afin de vérifier la sélection avant d'écrire une archive. 

<b>nmm('lock', module\_path)</b> construit le loader source si nécessaire et écrit ou rafraîchit <b>module-lock.json</b> dans l'arborescence source sans installer ni empaqueter le module. <b>nmm('lock', module\_path, '-dry-run')</b> retourne le lock calcule sans l'ecrire. <b>nmm('lock', module\_path, '-check')</b> indique si le lockfile courant est a jour. <b>nmm('lock', module\_path, '-diff')</b> retourne aussi le lock courant et le lock attendu. 

<b>nmm('publish', package\_filename)</b> publie une archive <b>.nmz</b> verifiee dans le fichier JSON du registre local configure. La commande ajoute les metadonnees du paquet depuis <b>module.json</b>, dont le resume, la description, la licence, les auteurs, le depot, les tags et le type de paquet lorsqu'ils existent, ainsi que le chemin source et le checksum SHA-256, puis ecrit <b>registry.json.sha256</b>. Lorsque <b>NELSON\_NMM\_REGISTRY\_SIGNING\_KEY</b> contient une graine privee Ed25519 (64 caracteres hexadecimaux), elle ecrit aussi le sidecar <b>registry.json.sig</b> : un document JSON portant la signature Ed25519 des octets exacts du registre et la cle publique correspondante (voir <b>crypto.ed25519.sign</b>). 

<b>nmm('publish', package\_filename, '-dry-run')</b> verifie l'archive, lit le registre local cible et retourne l'entree qui serait ecrite sans modifier les fichiers. <b>nmm('publish', package\_filename, '-check')</b> indique si la publication est possible. <b>nmm('publish', package\_filename, '-force')</b> remplace explicitement une entree existante avec le meme paquet et la meme version. <b>-json</b> retourne le rapport de publication en JSON. 

<b>nmm('publish', package\_filename, '-source', url)</b> enregistre <b>url</b> (une adresse <b>http</b> ou <b>https</b>, typiquement un lien de telechargement de release) comme source de l'archive au lieu du chemin local d'empaquetage. La somme de controle reste calculee a partir de l'archive locale publiee, qui doit etre identique au fichier heberge. C'est ainsi qu'un registre heberge reference ses archives. 

Un paquet binaire (builtin) est specifique a une architecture, donc son archive est stockee sous une table <b>artifacts</b> indexee par architecture (par exemple <b>win64</b> et <b>woa64</b>). Publier une autre architecture de la meme version fusionne dans la meme entree de registre au lieu de la remplacer, de sorte qu'un meme nom et une meme version peuvent livrer plusieurs architectures publiees a des moments differents ; seule la republication de la meme architecture necessite <b>-force</b>. A l'installation, l'archive correspondant a l'architecture courante est selectionnee. Les paquets source conservent la plateforme <b>all</b> avec une source et une somme de controle uniques. 

 

<b>nmm('validate', module\_path)</b> valide le descripteur du module avant installation ou empaquetage. 

La validation vérifie les champs obligatoires, la syntaxe du nom de module, la syntaxe de version sémantique, les plateformes supportées, la compatibilité avec la version de Nelson, le type de builtin, l'expression de licence SPDX, les déclarations de dépendances et la structure du module source. Un module source valide doit fournir <b>builder.m</b> ou <b>loader.m</b>, <b>etc/startup.m</b>, <b>etc/finish.m</b>, <b>help</b> et <b>tests</b>. L'empaquetage exige aussi au moins un fichier de test et s'arrête lorsqu'un test du paquet échoue. 

<b>nmm('validate', module\_path, '-strict')</b> exige aussi des métadonnées orientées publication comme <b>repository</b>, <b>homepage</b> et des <b>keywords</b> non vides, ainsi qu'au moins un test et un fichier d'aide XML. 

<b>nmm('validate', module\_path, '-warnings')</b> retourne des avertissements non bloquants pour les metadonnees faibles comme une description absente, un depot absent ou une aide reduite au chapitre. 

<b>nmm('validate', module\_path, '-json')</b> retourne un rapport de validation JSON au lieu d'émettre des erreurs de validation. 

Les archives empaquetées sont aussi vérifiées après construction : <b>loader.m</b> et <b>module-lock.json</b> doivent exister avant l'écriture ou l'installation d'une archive <b>.nmz</b>. 

 

<b>nmm('audit')</b> vérifie les enregistrements des modules installés. 

L'audit vérifie les chemins installés, <b>module.json</b>, <b>module-lock.json</b>, la compatibilité de plateforme verrouillée, la compatibilité d'ABI Nelson des paquets binaires, les dépendances verrouillées et les checksums du lockfile. Il retourne une struct avec les champs <b>ok</b> et <b>issues</b>. 

<b>nmm('audit', package\_name)</b> execute les memes verifications pour un seul package installe. 

<b>nmm('audit', '-json')</b> retourne le même rapport d'audit encodé en JSON pour les usages CI. 

<b>nmm('doctor')</b> retourne le rapport d'audit avec la version Nelson, l'architecture, le tag ABI, <b>usermodulesdir()</b>, le registre configuré, le répertoire de cache et les noms des modules cassés. 

<b>nmm('doctor', package\_name)</b> retourne le meme diagnostic pour un seul package et inclut son rapport <b>status</b>. 

<b>nmm('repair')</b> supprime les entrées cassées de <b>modules.json</b> dont le chemin installé est absent. La commande retourne la liste des entrées supprimées. 

 

<b>nmm('search', query)</b>, <b>nmm('info', package\_name)</b> et <b>nmm('versions', package\_name)</b> lisent l'index du registre configuré. 

<b>nmm('search', query, '-json')</b>, <b>nmm('info', package\_name, '-json')</b> et <b>nmm('versions', package\_name, '-json')</b> retournent une sortie JSON pour les workflows CI et scripts. 

Par défaut, <b>search</b> rapporte l'ensemble du registre indépendamment de la machine courante. <b>nmm('search', query, '-platform')</b> ne conserve que les paquets installables sur l'architecture courante (leur champ <b>platforms</b> contient <b>computer('arch')</b> ou <b>all</b>) ; c'est un opt-in pour que les scripts obtiennent par défaut des résultats indépendants de la machine, et les couches de présentation comme la fenêtre du gestionnaire de paquets l'utilisent pour masquer les paquets construits pour une autre architecture. 

<b>nmm('registry', 'check')</b> verifie le registre configure (fichier local ou source distante), son sidecar checksum et son sidecar de signature Ed25519, puis retourne un rapport de diagnostic incluant la cle de signature, le nombre de cles de confiance et, pour un registre distant, la copie en cache et l'etat hors ligne. 

<b>nmm('registry', 'validate')</b> est un alias de <b>check</b>. <b>nmm('registry', 'stats')</b> retourne les compteurs d'entrees, de packages uniques, la liste des plateformes et les compteurs de checksums/signatures. <b>nmm('registry', 'list')</b> retourne le registre configure, les packages et les stats. <b>nmm('registry', 'doctor')</b> combine la validation du registre avec les doublons, sources manquantes, packages non signes et packages sans checksum. 

La source du registre est <b>NELSON\_NMM\_REGISTRY</b> si elle est définie, sinon <b>registry.json</b> dans <b>usermodulesdir()</b>. La source peut être un fichier JSON local ou un endpoint distant (<b>http://</b>, <b>https://</b> ou <b>file://</b>). Les fichiers de registre locaux doivent avoir un sidecar <b>registry.json.sha256</b> et sont vérifiés avant lecture ; si <b>registry.json.sig</b> est présent, sa signature Ed25519 doit être valide et provenir d'une clé de confiance. Les registres distants sont téléchargés en octets bruts avec <b>registry.json.sig</b>, vérifiés avant l'analyse du JSON, puis mis en cache dans le répertoire de cache nmm : si la source est injoignable, la dernière copie vérifiée est revérifiée et utilisée (mode hors ligne). Un registre distant sans signature est refusé sauf si <b>NELSON\_NMM\_REGISTRY\_ALLOW\_UNSIGNED=1</b> est défini (un avertissement est émis une fois par session). Les clés de confiance sont les clés officielles du registre Nelson embarquées dans Nelson, les clés listées dans <b>NELSON\_NMM\_REGISTRY\_PUBLIC\_KEY</b> (séparées par ';', 64 caractères hexadécimaux chacune) et la clé dérivée de <b>NELSON\_NMM\_REGISTRY\_SIGNING\_KEY</b>. L'installation d'une entrée d'archive vérifie aussi le checksum du paquet avant extraction. 

 

<b>nmm('outdated')</b> liste les modules installés pour lesquels le registre contient une version sémantique plus récente. 

<b>nmm('update')</b> met à jour les modules installés vers la dernière version du registre. Avec un nom de module, seul ce module est mis à jour. 

<b>nmm('update', module\_name, '-dry-run')</b> retourne le plan de mise à jour sans modifier les modules installés. 

<b>nmm('update', '-dry-run')</b> retourne le plan de mise a jour de tous les modules installes sans les modifier. 

 

<b>nmm('cache', 'dir')</b> retourne le répertoire du cache local d'archives et <b>nmm('cache', 'clear')</b> le vide. L'installation d'une archive <b>.nmz</b> vérifiée la stocke dans le cache. 

<b>nmm('cache', 'list')</b> liste les paquets offline actuellement disponibles dans le cache local. 

<b>nmm('cache', 'size')</b> retourne le nombre d'archives et la taille totale en octets. <b>nmm('cache', 'remove', package\_name, version)</b> supprime une archive en cache et son checksum. 

<b>nmm('cache', 'info', package\_name, version)</b> retourne le chemin de l'archive en cache, le checksum, la taille et la date. <b>nmm('cache', 'has', package\_name, version)</b> retourne true lorsque cette archive est disponible. 

<b>nmm('cache', 'add', package\_filename)</b> verifie et precharge une archive locale <b>.nmz</b> dans le cache. <b>nmm('cache', 'export', destination\_dir)</b> copie les archives en cache et les checksums vers un repertoire. <b>nmm('cache', 'import', source\_dir)</b> verifie et importe les archives en cache depuis un repertoire. 

<b>nmm('cache', 'verify')</b> vérifie les archives du cache et signale les entrées corrompues. <b>nmm('cache', 'prune')</b> supprime les anciennes versions en cache en gardant la dernière version en cache de chaque paquet. <b>nmm('cache', 'prune', '-dry-run')</b> retourne les memes suppressions sans effacer les fichiers. 

<b>nmm('install', package\_name, '-offline')</b> installe la version de paquet la plus récente présente dans le cache, sans lire le registre ni la source du paquet. 

<b>nmm('install', package\_name, version, '-offline')</b> installe une version exacte depuis le cache local, ou la version en cache la plus récente correspondant à une contrainte semver, sans lire le registre ni la source du paquet. Ajouter <b>'-dry-run'</b> verifie le plan de l'archive en cache sans l'installer. 



## 💡 Exemples

Deploy module_skeleton_basic template

```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
    macro_sum(3, 4)
    nmm('uninstall', 'module_skeleton_basic')
end
```
Package a module

```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
end
package_filename = nmm('package', 'module_skeleton_basic', tempdir())

```


## 🔗 Voir aussi

[ismodule](../modules_manager/ismodule.md), [getmodules](../modules_manager/getmodules.md), [nmm_gui](../nmm_gui/nmm_gui.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | workflows de gestion de paquets, registre, lockfile et cache |

<!--
## 👤 Auteur

Allan CORNET
-->
