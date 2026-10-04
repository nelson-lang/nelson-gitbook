# mcpserver

Demarre le serveur MCP Nelson sur l'entree et la sortie standard.

## 📝 Syntaxe

- mcpserver()
- mcpserver('--nelson-display-mode=gui')

## 📄 Description

<b>mcpserver</b> demarre un serveur MCP stdio exposant des outils adaptes a Nelson.

Le transport utilise l'entree standard et la sortie standard. Les messages JSON-RPC MCP sont les seules donnees ecrites sur la sortie standard; les diagnostics vont sur l'erreur standard.

Le mode d'affichage par defaut est <b>adv-cli</b>. Il permet les commandes graphiques utilisees par <b>create_nelson_plot</b> tout en conservant le transport MCP sur la sortie standard. Le mode <b>cli</b> est reserve au texte. Le mode <b>gui</b> indique qu'une session graphique visible est souhaitee, avec un serveur toujours lance par <b>nelson-adv-cli</b>.

Les outils exposes sont <b>detect_nelson_modules</b>, <b>check_nelson_code</b>, <b>lint_nelson_code</b>, <b>check_nelson_format</b>, <b>evaluate_nelson_code</b>, <b>run_nelson_file</b>, <b>run_nelson_test_file</b>, <b>format_nelson_file</b>, <b>get_nelson_help</b>, <b>find_nelson_symbol</b>, <b>get_nelson_function_info</b>, <b>get_nelson_workspace</b>, <b>get_nelson_version</b> et <b>create_nelson_plot</b>.

Les outils bases sur des fichiers resolvent les chemins relatifs depuis la racine de workspace configuree et refusent les chemins hors de cette racine. La racine par defaut est <b>nelsonroot</b>.

Les appels d'outils retournent a la fois un contenu texte et un contenu structure avec les champs <b>success</b>, <b>output</b>, <b>error</b>, <b>image</b> et <b>duration</b>.

Les champs longs <b>output</b> et <b>error</b> sont limites par <b>--max-output-characters</b>. Le contenu structure inclut les indicateurs <b>output_truncated</b> et <b>error_truncated</b>.

Certains outils retournent aussi des metadonnees typees dans le champ structure <b>data</b>, par exemple les modules, les compteurs de tests, les informations de version et les metadonnees PNG.

Le serveur expose aussi des ressources locales en lecture seule sous <b>guidelines://</b> et des prompts reutilisables comme <b>nelson-code-review</b>, <b>nelson-test-author</b> et <b>nelson-plot-agent</b>.

Ollama peut fournir le modele local pour un agent compatible MCP. Dans cette configuration, Ollama execute le modele, l'agent parle MCP, et <b>mcpserver</b> expose les outils Nelson a l'agent.

Le transport JSON-RPC valide la version de protocole <b>2.0</b>, refuse les requetes invalides et accepte les requetes par lots.

Les options serveur peuvent etre passees comme chaines: <b>--initial-working-folder=CHEMIN</b>, <b>--workspace-root=CHEMIN</b>, <b>--max-output-characters=N</b>, <b>--initialize-nelson-on-startup=true\|false</b>, <b>--nelson-display-mode=cli\|adv-cli\|gui</b>, <b>--allow-execution=true\|false</b>, <b>--allow-format=true\|false</b>, <b>--log-folder=CHEMIN</b> et <b>--log-level=error\|warn\|info\|debug</b>.

## 💡 Exemples

Declarer Nelson dans Codex.

```matlab

codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver"

```

Declarer Nelson avec le mode graphique visible.

```matlab

codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--nelson-display-mode=gui')"

```

Utiliser Nelson MCP avec un agent base sur Ollama.

```matlab

# Terminal 1: demarrer Ollama et verifier qu'un modele est disponible.
ollama serve
ollama pull llama3.2

# Terminal 2: configurer l'agent compatible MCP avec:
#   fournisseur modele: Ollama
#   endpoint modele: http://127.0.0.1:11434
#   nom du modele: llama3.2
#   nom du serveur MCP: nelson
#   commande du serveur MCP:
nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli --max-output-characters=200000')"

```

Configuration MCP generique de style JSON pour un agent base sur Ollama.

```matlab

{
  "model": {
    "provider": "ollama",
    "baseUrl": "http://127.0.0.1:11434",
    "name": "llama3.2"
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
        "mcpserver('--workspace-root=D:/work/nelson-project --nelson-display-mode=adv-cli --allow-execution=true --allow-format=true')"
      ]
    }
  }
}

```

Prompt a donner a un agent Ollama avec outils Nelson.

```matlab

Utilise le serveur MCP Nelson.
Appelle d'abord get_nelson_workspace.
Appelle ensuite get_nelson_help pour "plot".
Cree et execute un script Nelson qui trace sin(0:0.1:10).
Retourne le chemin PNG produit par create_nelson_plot et resume la sortie Nelson.

```

## 🔗 Voir aussi

[aiask](../ai/aiask.md), [mcpinfo](../ai/mcpinfo.md), [mcpusage](../ai/mcpusage.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |
