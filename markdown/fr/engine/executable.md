# executable

Executables pour demarrer le logiciel Nelson.

## 📝 Syntaxe

- nelson arg1 ... argn
- nelson-cli arg1 ... argn
- nelson-adv-cli arg1 ... argn
- nelson-gui arg1 ... argn
- nelson --webview [--url hote] [--port port]
- nelson --web [--url hote] [--port port]
- nelson-webview [--web] [--url hote] [--port port]
- nelson-cli options -- user\_arg1 ... user\_argn

## 📥 Argument d'entrée

- -cli - selectionne <b>nelson-cli</b> quand l'option est passee au lanceur <b>nelson</b>.
- -adv-cli - selectionne <b>nelson-adv-cli</b> quand l'option est passee au lanceur <b>nelson</b>.
- -gui - selectionne <b>nelson-gui</b> quand l'option est passee au lanceur <b>nelson</b>.
- --webview - selectionne <b>nelson-webview</b> en mode webview desktop quand l'option est passee au lanceur <b>nelson</b>. Passee directement a <b>nelson-adv-cli</b>, c'est au contraire une option qui rend les figures avec le backend web (RenderWeb), sans fenetre figure Qt, tout en conservant le REPL terminal.
- --web - selectionne <b>nelson-webview</b> en mode serveur HTTP quand l'option est passee au lanceur <b>nelson</b>. La meme option selectionne le mode serveur pour l'executable direct <b>nelson-webview</b>.
- --url hote - fixe l'hote HTTP. Cette option est valide uniquement avec <b>--web</b>, <b>--webview</b>, ou l'executable direct <b>nelson-webview</b>.
- --port port - fixe le port web entre 1 et 65535. Cette option est valide uniquement avec <b>--web</b>, <b>--webview</b>, ou l'executable direct <b>nelson-webview</b>.
- -- - arrete l'analyse des options Nelson. Les arguments apres ce separateur sont renvoyes par <b>argv('user')</b>.
- -e, --execute command - execute une commande Nelson apres le demarrage. Les options <b>-e</b> et <b>-f</b> sont mutuellement exclusives.
- -f, --file filename - execute un fichier script Nelson apres le demarrage. Les options <b>-e</b> et <b>-f</b> sont mutuellement exclusives.
- -F, --file-ipc filename - execute un fichier script Nelson dans un processus Nelson existant ou en cree un. Mode GUI uniquement.
- --help, -h - affiche l'aide des options du programme.
- --version, -v - renvoie la version de Nelson.
- --vscode - active le mode Visual Studio Code.
- --open, -o filename1 [filename2 ...] - ouvre un ou plusieurs fichiers valides existants dans l'editeur de texte. Mode GUI uniquement.
- --mat, -m filename1 [filename2 ...] - charge un ou plusieurs fichiers .nh5 ou .mat valides existants.
- --nostartup - desactive le script principal de demarrage de Nelson.
- --nousermodules - desactive le chargement des modules utilisateur.
- --nouserstartup - desactive le script de demarrage utilisateur.
- --minimize - minimise la fenetre principale. Mode GUI uniquement.
- --noipc - desactive les fonctionnalites interprocessus.
- --withoutfilewatcher - desactive la surveillance de fichiers pour cette session.
- --noaudio - desactive le code de demarrage du module audio.
- --without\_python - desactive le code de demarrage du module python\_engine.
- --language, -l lang - fixe la langue de la session. Actuellement, lang peut etre : fr\_FR en\_US.
- --quiet, -q - demarre sans afficher la banniere ni la version.
- --timeout seconds - termine le processus Nelson apres le nombre positif de secondes indique.

## 📄 Description


<b>nelson-cli</b> : terminal basique, sans dependance au framework gui, sans historique, sans completion. 

<b>nelson-adv-cli</b> : terminal avance, sans console graphique, historique et completion disponibles. 

<b>nelson-gui</b> : console graphique, historique et completion disponibles. 

<b>nelson --webview</b> et <b>nelson-webview</b> ouvrent une webview desktop native par defaut avec un port localhost prive qui n'est pas affiche. Fournir <b>--url</b> ou <b>--port</b> garde la webview ouverte et publie la meme session a l'adresse HTTP selectionnee. Si la webview native est indisponible, Nelson s'arrete avec une erreur. 

<b>nelson --web</b> et <b>nelson-webview --web</b> demarrent un serveur HTTP sans ouvrir de fenetre desktop et affichent l'URL servie. 

Les selecteurs de mode <b>-cli</b>, <b>-adv-cli</b>, <b>-gui</b>, <b>--webview</b> et le <b>--web</b> du lanceur sont valides uniquement pour le lanceur generique <b>nelson</b>. Les executables directs comme <b>nelson-cli</b>, <b>nelson-adv-cli</b> et <b>nelson-gui</b> les refusent avant <b>--</b>. La seule exception est <b>nelson-adv-cli --webview</b>, ou <b>--webview</b> est accepte comme option qui bascule le backend des figures vers le rendu web (RenderWeb). 

Apres <b>--</b>, les selecteurs de mode sont des arguments utilisateur normaux et peuvent etre lus avec <b>argv('user')</b>. 

Les arguments de demarrage de modules comme <b>--noaudio</b> et <b>--without\_python</b> restent visibles dans <b>argv()</b> pour compatibilite. Les nouveaux constructeurs de commandes doivent placer les arguments utilisateur apres <b>--</b> et les lire avec <b>argv('user')</b>. 

Les guillemets utilises pour grouper les arguments sont interpretes par le systeme d'exploitation ou le shell avant le demarrage de Nelson. Utiliser une forme portable comme <b>nelson-cli -e "disp('hello world'); quit"</b>. 

Si Nelson est installe sur Windows, la variable d'environnement <b>NELSON\_RUNTIME\_PATH</b> est definie et peut etre utilisee pour appeler <b>"%NELSON\_RUNTIME\_PATH%\\nelson.bat"</b>.

## 💡 Exemples



```matlab
nelson-adv-cli -q -e "a = 1 + 2"
```


```matlab
nelson-cli -e "disp(argv('user')); quit" -- "a b" "c d"
```


```matlab
nelson-gui --help
```


## 🔗 Voir aussi

[argv](../engine/argv.md), [startup](../engine/startup.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.4.0   | --without_python added |
| 1.11.0   | About NELSON_RUNTIME_PATH environment variable added |
| 1.11.0   | --vscode argument |

<!--
## 👤 Auteur

Allan CORNET
-->
