# executable

Exécutables pour démarrer le logiciel Nelson.

## Syntaxe

- nelson arg1 ... argn
- nelson-cli arg1 ... argn
- nelson-adv-cli arg1 ... argn
- nelson-gui arg1 ... argn

## Argument d'entrée

- -cli - équivalent à l'appel de 'nelson-cli'.
- -adv-cli - équivalent à l'appel de 'nelson-adv-cli'.
- -gui - équivalent à l'appel de 'nelson-gui'.
- -e "nelson instructions" - Si cette option est présente, les instructions Nelson sont exécutées juste après l'exécution du fichier de démarrage. Les options -e et -f sont mutuellement exclusives.
- -f filename - Un script Nelson est exécuté juste après l'exécution du fichier de démarrage. Les options -e et -f sont mutuellement exclusives.
- -F filename - Si cette option est présente, le script Nelson est exécuté juste après l'exécution du fichier de démarrage dans un processus Nelson existant ou en crée un.
- --help - aide sur les options du programme.
- --version - Retourne la version de Nelson.
- --vscode - active le mode Visual Studio Code.
- --open - ouvre des fichiers ; arg2 ... argN doivent être des noms de fichiers valides/existants.
- --mat - charge des fichiers ; arg2 ... argN doivent être des fichiers .nh5 ou .mat valides/existants.
- --nostartup - désactive l'exécution du fichier script principal de Nelson au démarrage.
- --nousermodules - désactive le chargement des modules utilisateur (chargés avant le script utilisateur).
- --nouserstartup - désactive le script utilisateur exécuté au démarrage après le fichier principal.
- --minimize - minimise la fenêtre principale du GUI (mode GUI uniquement).
- --noipc - désactive les fonctionnalités interprocessus (association de fichiers, ipc intégré).
- --withoutfilewatcher - désactive la fonctionnalité de surveillance de fichiers pour cette session.
- --noaudio - désactive le module audio.
- --without_python - désactive le module python_engine.
- --language lang - Si cette option est présente, elle fixe la langue de l'utilisateur. Actuellement, lang peut être : fr_FR fr_FR.
- --quiet - Si cette option est présente, aucune bannière ni version n'est affichée.

## Description

<p>
            nelson-cli : terminal basique, sans GUI (pas de dépendance au framework GUI), sans historique, sans complétion (encodage ISO Latin).</p>

<p>
            nelson-adv-cli : terminal avancé, console graphique absente, historique et complétion disponibles (support UTF-16).</p>

<p>
            nelson-gui : console graphique, historique et complétion disponibles (support UTF-16).</p>

<p></p>

<p>Si vous avez installé Nelson sur Windows, la variable d'environnement NELSON_RUNTIME_PATH sera définie.</p>

<p>Elle permet d'appeler facilement Nelson "%NELSON_RUNTIME_PATH%\nelson.bat".</p>

## Exemples

```matlab
nelson-adv-cli -q -e "a = 1 + 2"
```

```matlab
nelson-gui -v
```

```matlab
nelson-gui --help
```

## Voir aussi

[startup](../engine/startup.md).

## Historique

| Version | Description                                          |
| ------- | ---------------------------------------------------- |
| 1.0.0   | version initiale                                     |
| 1.4.0   | --without_python added                               |
| 1.11.0  | About NELSON_RUNTIME_PATH environment variable added |
| 1.11.0  | --vsocde argument                                    |

## Auteur

Allan CORNET
