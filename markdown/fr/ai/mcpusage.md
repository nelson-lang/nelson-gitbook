# mcpusage

Utiliser Nelson via MCP depuis un agent IA.

## 📄 Description


<b>mcpusage</b> explique comment connecter un agent IA compatible MCP a Nelson. 

Nelson lance le serveur MCP avec <b>mcpserver</b>. L'agent IA est le client MCP. Un fournisseur de modele local comme Ollama peut executer le modele de langage, mais Ollama lui-meme n'est pas le client MCP. 

L'executable recommande est <b>nelson-adv-cli</b>, car il peut executer les commandes graphiques utilisees par <b>create\_nelson\_plot</b> tout en gardant la sortie standard reservee aux messages JSON-RPC MCP. 

Declarer Nelson dans un client MCP est normalement une configuration a faire une seule fois. Refaire cette declaration seulement si le chemin de l'executable Nelson, le nom du serveur, la racine de workspace ou les options serveur changent. 

Utiliser <b>--workspace-root</b> pour limiter les outils bases sur des fichiers a un dossier projet. Utiliser <b>--allow-execution=false</b> pour desactiver les outils d'execution, et <b>--allow-format=false</b> pour desactiver les outils de formatage.

## 💡 Exemples

Demarrer le serveur MCP Nelson manuellement.

```matlab

nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli')"

```
Declarer Nelson comme serveur MCP dans Codex.

```matlab

# Executer cette commande une fois par configuration Codex. La relancer seulement pour changer la commande ou les options.
codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli')"

```
Configuration client MCP generique avec un modele Ollama local.

```matlab

{
  "model": {
    "provider": "ollama",
    "baseUrl": "http://127.0.0.1:11434",
    "name": "gemma4:latest"
  },
  "mcpServers": {
    "nelson": {
      "command": "nelson-adv-cli",
      "args": [
        "--quiet",
        "--noipc",
        "--nouserstartup",
        "--nousermodules",
        "-e",
        "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli --max-output-characters=200000')"
      ]
    }
  }
}

```
Premier prompt conseille pour un agent MCP.

```matlab

Utilise le serveur MCP Nelson.
Appelle d'abord get_nelson_workspace.
Appelle ensuite get_nelson_version.
Utilise get_nelson_help quand tu as besoin de la syntaxe Nelson.
Avant de modifier des fichiers, inspecte-les avec les outils en lecture seule.
Pour creer un graphique, utilise create_nelson_plot et retourne le chemin PNG.

```
Outils MCP utiles exposes par Nelson.

```matlab

get_nelson_workspace      Inspecte les dossiers racine et la politique active.
get_nelson_version        Inspecte les versions Nelson et serveur MCP.
get_nelson_help           Lit l'aide locale d'un symbole.
detect_nelson_modules     Liste modules, fonctions, tests, builtins et aide.
find_nelson_symbol        Localise definitions, tests, enregistrements et aide.
get_nelson_function_info  Inspecte which, nargin, nargout, tests et aide d'un symbole.
lint_nelson_code          Lance nelson-lint sur un fichier ou dossier sans modifier les fichiers.
check_nelson_format       Verifie nelson-format sans modifier les fichiers.
evaluate_nelson_code      Execute un snippet Nelson.
run_nelson_file           Execute un fichier .m.
run_nelson_test_file      Lance un fichier de test ou un module.
format_nelson_file        Formate un fichier .m dans la racine de workspace.
create_nelson_plot        Execute du code graphique et retourne un chemin PNG.

```
Diagnostiquer les problemes MCP courants.

```matlab

Si le client ne liste pas les outils:
  Verifier que le serveur MCP a ete declare dans la configuration du client.
  Verifier que nelson-adv-cli est dans PATH ou utiliser un chemin absolu.
  Garder --quiet --noipc dans la commande.
  Ne pas ecrire de diagnostic sur la sortie standard.

Si le workspace ou les options ont change:
  Mettre a jour la declaration dans le client MCP.
  Dans Codex, relancer codex mcp add avec les nouvelles options mcpserver.

Si les outils fichiers sont refuses:
  Verifier --workspace-root et utiliser des chemins dans ce dossier.

Si la generation de graphiques echoue:
  Utiliser --nelson-display-mode=adv-cli ou --nelson-display-mode=gui.
  Le mode cli est reserve au texte.

Si les reponses sont trop longues:
  Reduire --max-output-characters ou demander a l'agent de retourner des sorties plus petites.

```


## 🔗 Voir aussi

[mcpserver](../ai/mcpserver.md), [mcpinfo](../ai/mcpinfo.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
