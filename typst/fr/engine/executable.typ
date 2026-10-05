#import "nelson_help.typ": *

= executable <engine:executable>

Executables pour demarrer le logiciel Nelson.

== Syntaxe

- #raw("nelson arg1 ... argn");
- #raw("nelson-cli arg1 ... argn");
- #raw("nelson-adv-cli arg1 ... argn");
- #raw("nelson-gui arg1 ... argn");
- #raw("nelson --webview [--url hote] [--port port]");
- #raw("nelson --web [--url hote] [--port port]");
- #raw("nelson-webview [--web] [--url hote] [--port port]");
- #raw("nelson-cli options -- user_arg1 ... user_argn");

== Argument d'entrée

/ -cli: selectionne #strong[nelson-cli]; quand l'option est passee au lanceur #strong[nelson];.
/ -adv-cli: selectionne #strong[nelson-adv-cli]; quand l'option est passee au lanceur #strong[nelson];.
/ -gui: selectionne #strong[nelson-gui]; quand l'option est passee au lanceur #strong[nelson];.
/ --webview: selectionne #strong[nelson-webview]; en mode webview desktop quand l'option est passee au lanceur #strong[nelson];. Passee directement a #strong[nelson-adv-cli];, c'est au contraire une option qui rend les figures avec le backend web (RenderWeb), sans fenetre figure Qt, tout en conservant le REPL terminal.
/ --web: selectionne #strong[nelson-webview]; en mode serveur HTTP quand l'option est passee au lanceur #strong[nelson];. La meme option selectionne le mode serveur pour l'executable direct #strong[nelson-webview];.
/ --url hote: fixe l'hote HTTP. Cette option est valide uniquement avec #strong[--web];, #strong[--webview];, ou l'executable direct #strong[nelson-webview];.
/ --port port: fixe le port web entre 1 et 65535. Cette option est valide uniquement avec #strong[--web];, #strong[--webview];, ou l'executable direct #strong[nelson-webview];.
/ --: arrete l'analyse des options Nelson. Les arguments apres ce separateur sont renvoyes par #strong[argv('user')];.
/ -e, --execute command: execute une commande Nelson apres le demarrage. Les options #strong[-e]; et #strong[-f]; sont mutuellement exclusives.
/ -f, --file filename: execute un fichier script Nelson apres le demarrage. Les options #strong[-e]; et #strong[-f]; sont mutuellement exclusives.
/ -F, --file-ipc filename: execute un fichier script Nelson dans un processus Nelson existant ou en cree un. Mode GUI uniquement.
/ --help, -h: affiche l'aide des options du programme.
/ --version, -v: renvoie la version de Nelson.
/ --vscode: active le mode Visual Studio Code.
/ --open, -o filename1 \[filename2 ...\]: ouvre un ou plusieurs fichiers valides existants dans l'editeur de texte. Mode GUI uniquement.
/ --mat, -m filename1 \[filename2 ...\]: charge un ou plusieurs fichiers .nh5 ou .mat valides existants.
/ --nostartup: desactive le script principal de demarrage de Nelson.
/ --nousermodules: desactive le chargement des modules utilisateur.
/ --nouserstartup: desactive le script de demarrage utilisateur.
/ --minimize: minimise la fenetre principale. Mode GUI uniquement.
/ --noipc: desactive les fonctionnalites interprocessus.
/ --withoutfilewatcher: desactive la surveillance de fichiers pour cette session.
/ --noaudio: desactive le code de demarrage du module audio.
/ --without\_python: desactive le code de demarrage du module python\_engine.
/ --language, -l lang: fixe la langue de la session. Actuellement, lang peut etre : fr\_FR en\_US.
/ --quiet, -q: demarre sans afficher la banniere ni la version.
/ --timeout seconds: termine le processus Nelson apres le nombre positif de secondes indique.

== Description

#strong[nelson-cli]; : terminal basique, sans dependance au framework gui, sans historique, sans completion.

 #strong[nelson-adv-cli]; : terminal avance, sans console graphique, historique et completion disponibles.

 #strong[nelson-gui]; : console graphique, historique et completion disponibles.

 #strong[nelson --webview]; et #strong[nelson-webview]; ouvrent une webview desktop native par defaut avec un port localhost prive qui n'est pas affiche. Fournir #strong[--url]; ou #strong[--port]; garde la webview ouverte et publie la meme session a l'adresse HTTP selectionnee. Si la webview native est indisponible, Nelson s'arrete avec une erreur.

 #strong[nelson --web]; et #strong[nelson-webview --web]; demarrent un serveur HTTP sans ouvrir de fenetre desktop et affichent l'URL servie.

 Les selecteurs de mode #strong[-cli];, #strong[-adv-cli];, #strong[-gui];, #strong[--webview]; et le #strong[--web]; du lanceur sont valides uniquement pour le lanceur generique #strong[nelson];. Les executables directs comme #strong[nelson-cli];, #strong[nelson-adv-cli]; et #strong[nelson-gui]; les refusent avant #strong[--];. La seule exception est #strong[nelson-adv-cli --webview];, ou #strong[--webview]; est accepte comme option qui bascule le backend des figures vers le rendu web (RenderWeb).

 Apres #strong[--];, les selecteurs de mode sont des arguments utilisateur normaux et peuvent etre lus avec #strong[argv('user')];.

 Les arguments de demarrage de modules comme #strong[--noaudio]; et #strong[--without\_python]; restent visibles dans #strong[argv()]; pour compatibilite. Les nouveaux constructeurs de commandes doivent placer les arguments utilisateur apres #strong[--]; et les lire avec #strong[argv('user')];.

 Les guillemets utilises pour grouper les arguments sont interpretes par le systeme d'exploitation ou le shell avant le demarrage de Nelson. Utiliser une forme portable comme #strong[nelson-cli -e "disp('hello world'); quit"];.

 Si Nelson est installe sur Windows, la variable d'environnement #strong[NELSON\_RUNTIME\_PATH]; est definie et peut etre utilisee pour appeler #strong["%NELSON\_RUNTIME\_PATH%\\nelson.bat"];.


== Exemples

``````matlab
nelson-adv-cli -q -e "a = 1 + 2"
``````

``````matlab
nelson-cli -e "disp(argv('user')); quit" -- "a b" "c d"
``````

``````matlab
nelson-gui --help
``````


== Voir aussi

#nlink(<engine:argv>)[argv];, #nlink(<engine:startup>)[startup];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.4.0], [--without\_python added],
  [1.11.0], [About NELSON\_RUNTIME\_PATH environment variable added],
  [1.11.0], [--vscode argument],
)

// Auteur: Allan CORNET
