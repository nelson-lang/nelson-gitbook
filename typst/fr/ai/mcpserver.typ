#import "nelson_help.typ": *

= mcpserver <ai:mcpserver>

Demarre le serveur MCP Nelson sur l'entree et la sortie standard.

== Syntaxe

- #raw("mcpserver()");
- #raw("mcpserver('--nelson-display-mode=gui')");

== Description

#strong[mcpserver]; demarre un serveur MCP stdio exposant des outils adaptes a Nelson.

 Le transport utilise l'entree standard et la sortie standard. Les messages JSON-RPC MCP sont les seules donnees ecrites sur la sortie standard; les diagnostics vont sur l'erreur standard.

 Le mode d'affichage par defaut est #strong[adv-cli];. Il permet les commandes graphiques utilisees par #strong[create\_nelson\_plot]; tout en conservant le transport MCP sur la sortie standard. Le mode #strong[cli]; est reserve au texte. Le mode #strong[gui]; indique qu'une session graphique visible est souhaitee, avec un serveur toujours lance par #strong[nelson-adv-cli];.

 Les outils exposes sont #strong[detect\_nelson\_modules];, #strong[check\_nelson\_code];, #strong[lint\_nelson\_code];, #strong[check\_nelson\_format];, #strong[evaluate\_nelson\_code];, #strong[run\_nelson\_file];, #strong[run\_nelson\_test\_file];, #strong[format\_nelson\_file];, #strong[get\_nelson\_help];, #strong[find\_nelson\_symbol];, #strong[get\_nelson\_function\_info];, #strong[get\_nelson\_workspace];, #strong[get\_nelson\_version]; et #strong[create\_nelson\_plot];.

 Les outils bases sur des fichiers resolvent les chemins relatifs depuis la racine de workspace configuree et refusent les chemins hors de cette racine. La racine par defaut est #strong[nelsonroot];.

 Les appels d'outils retournent a la fois un contenu texte et un contenu structure avec les champs #strong[success];, #strong[output];, #strong[error];, #strong[image]; et #strong[duration];.

 Les champs longs #strong[output]; et #strong[error]; sont limites par #strong[--max-output-characters];. Le contenu structure inclut les indicateurs #strong[output\_truncated]; et #strong[error\_truncated];.

 Certains outils retournent aussi des metadonnees typees dans le champ structure #strong[data];, par exemple les modules, les compteurs de tests, les informations de version et les metadonnees PNG.

 Le serveur expose aussi des ressources locales en lecture seule sous #strong[guidelines:\/\/]; et des prompts reutilisables comme #strong[nelson-code-review];, #strong[nelson-test-author]; et #strong[nelson-plot-agent];.

 Ollama peut fournir le modele local pour un agent compatible MCP. Dans cette configuration, Ollama execute le modele, l'agent parle MCP, et #strong[mcpserver]; expose les outils Nelson a l'agent.

 Le transport JSON-RPC valide la version de protocole #strong[2.0];, refuse les requetes invalides et accepte les requetes par lots.

 Les options serveur peuvent etre passees comme chaines: #strong[--initial-working-folder\=CHEMIN];, #strong[--workspace-root\=CHEMIN];, #strong[--max-output-characters\=N];, #strong[--initialize-nelson-on-startup\=true|false];, #strong[--nelson-display-mode\=cli|adv-cli|gui];, #strong[--allow-execution\=true|false];, #strong[--allow-format\=true|false];, #strong[--log-folder\=CHEMIN]; et #strong[--log-level\=error|warn|info|debug];.


== Exemples

Declarer Nelson dans Codex.

``````matlab

codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver"

``````

Declarer Nelson avec le mode graphique visible.

``````matlab

codex mcp add nelson -- nelson-adv-cli --quiet --noipc --nouserstartup --nousermodules -e "mcpserver('--nelson-display-mode=gui')"

``````

Utiliser Nelson MCP avec un agent base sur Ollama.

``````matlab

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

``````

Configuration MCP generique de style JSON pour un agent base sur Ollama.

``````matlab

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

``````

Prompt a donner a un agent Ollama avec outils Nelson.

``````matlab

Utilise le serveur MCP Nelson.
Appelle d'abord get_nelson_workspace.
Appelle ensuite get_nelson_help pour "plot".
Cree et execute un script Nelson qui trace sin(0:0.1:10).
Retourne le chemin PNG produit par create_nelson_plot et resume la sortie Nelson.

``````


== Voir aussi

#nlink(<ai:aiask>)[aiask];, #nlink(<ai:mcpinfo>)[mcpinfo];, #nlink(<ai:mcpusage>)[mcpusage];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)
