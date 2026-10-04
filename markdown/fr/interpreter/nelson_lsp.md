# nelson-lsp

Point d'entree Language Server Protocol pour les diagnostics de code Nelson.

## 📝 Syntaxe

- nelson-lsp

## 📄 Description

<b>nelson-lsp</b> est un serveur JSON-RPC Language Server Protocol sur l'entree standard et la sortie standard.

L'executable est destine a etre lance par un editeur ou un environnement de developpement. Il n'ouvre pas d'invite interactive et ne lit pas de fichiers source depuis la ligne de commande. Le client envoie les messages Language Server Protocol sur stdin avec l'en-tete standard <b>Content-Length</b>, et le serveur ecrit les reponses et notifications JSON-RPC sur stdout.

Le serveur maintient un modele leger de document et de workspace. Les documents ouverts sont indexes avec leur texte courant, leur version, leurs diagnostics, leurs symboles, leurs fonctions locales, leurs classes, leurs imports et leurs variables locales. Les racines de workspace sont indexees separement; chaque racine garde les fichiers <b>.m</b> trouves, les fonctions publiques, les fonctions locales, les classes, les chemins de modules et un cache invalide par date de fichier, hash de contenu et configuration lint.

Le serveur publie les diagnostics de l'analyseur de code Nelson pour les buffers ouverts. Les diagnostics utilisent <b>nelson-lint</b> comme source et exposent l'identifiant de regle, la severite, le message, la plage de texte, des <b>data</b> stables pour les actions de code ulterieures, les liens d'aide <b>codeDescription</b>, <b>relatedInformation</b> et les tags LSP pour les elements inutilises ou obsoletes lorsque c'est applicable.

Les editeurs qui utilisent les diagnostics en pull peuvent appeler <b>textDocument/diagnostic</b> pour un document ou <b>workspace/diagnostic</b> pour tous les fichiers sous les racines de workspace initialisees. Les diagnostics workspace reutilisent l'analyse recursive, respectent la configuration partagee d'inclusion et d'exclusion, et prennent en charge les notifications de progression partielle.

Les corrections rapides sont renvoyees par <b>textDocument/codeAction</b>. Si un diagnostic porte des edits de texte surs, le serveur renvoie une action <b>quickfix</b> qui applique ces edits. Pour chaque diagnostic non supprime, le serveur propose aussi une action de suppression locale qui ajoute <b>%#ok<ID></b> sur la ligne du diagnostic et une action de suppression fichier en tete du fichier.

Les actions source incluent <b>source.fixAll.nelson-lint</b> pour toutes les corrections lint sures d'un document, <b>source.organizeImports</b> pour nettoyer les imports et <b>source.nelson.generateHelpSkeleton</b> pour generer une commande de squelette d'aide. Certains diagnostics peuvent aussi proposer des corrections plus riches, comme creer un fichier de fonction manquant ou ajouter un stub de fonction locale.

Le formatage est expose par <b>textDocument/formatting</b>, <b>textDocument/rangeFormatting</b> et <b>textDocument/onTypeFormatting</b>. Le serveur utilise le meme coeur de formatage Nelson que <b>nelson-format</b> et renvoie des edits utilisables pour le format-on-save et le formatage declenche par l'editeur.

La surface de navigation et d'edition prend en charge <b>textDocument/hover</b>, <b>textDocument/completion</b>, <b>completionItem/resolve</b>, <b>textDocument/signatureHelp</b>, <b>textDocument/definition</b>, <b>textDocument/declaration</b>, <b>textDocument/implementation</b>, <b>textDocument/references</b>, <b>textDocument/documentHighlight</b>, <b>textDocument/prepareRename</b> et <b>textDocument/rename</b>. Le renommage est volontairement limite aux edits locaux dans le document courant.

Les completions couvrent les mots-cles Nelson, les snippets, les variables locales, les fonctions locales, les fonctions du workspace, les classes et les chemins de modules connus. Les requetes hover renvoient les informations de regle de l'analyseur lorsque le curseur est sur un diagnostic, ou les informations de symbole lorsque le curseur est sur un symbole local ou workspace connu.

La surface IDE structurelle prend en charge <b>textDocument/documentSymbol</b>, <b>workspace/symbol</b>, <b>textDocument/foldingRange</b>, <b>textDocument/selectionRange</b>, <b>textDocument/semanticTokens/full</b>, <b>textDocument/codeLens</b> et <b>textDocument/documentLink</b>. Les semantic tokens identifient les mots-cles, fonctions, variables, classes, proprietes, methodes, chaines et commentaires.

Les code lenses exposent des actions preparees pour lancer le fichier courant, lancer les tests du module et inspecter le nombre d'issues du document courant. Les liens de document sont renvoyes pour les chemins de type fichier trouves dans le texte source.

Le provider <b>workspace/executeCommand</b> accepte <b>nelson.runFile</b>, <b>nelson.runSelection</b>, <b>nelson.runTestsForModule</b>, <b>nelson.openHelp</b>, <b>nelson.lintWorkspace</b>, <b>nelson.clearLspCache</b> et <b>nelson.createFunctionFile</b>. Les commandes renvoient des donnees structurees que le client peut executer ou afficher; le serveur ne modifie pas les fichiers sauf si le client applique explicitement un workspace edit ou un resultat de commande renvoye.

La surface actuelle du protocole prend en charge <b>initialize</b>, <b>shutdown</b>, <b>exit</b>, <b>$/cancelRequest</b>, <b>workspace/didChangeConfiguration</b>, <b>workspace/didChangeWorkspaceFolders</b>, <b>workspace/executeCommand</b>, <b>workspace/symbol</b>, <b>textDocument/didOpen</b>, <b>textDocument/didChange</b>, <b>textDocument/didSave</b>, <b>textDocument/didClose</b>, <b>textDocument/willSaveWaitUntil</b>, <b>textDocument/diagnostic</b>, <b>workspace/diagnostic</b>, <b>textDocument/formatting</b>, <b>textDocument/rangeFormatting</b>, <b>textDocument/onTypeFormatting</b>, <b>textDocument/codeAction</b>, <b>codeAction/resolve</b>, <b>textDocument/hover</b>, <b>textDocument/completion</b>, <b>completionItem/resolve</b>, <b>textDocument/signatureHelp</b>, <b>textDocument/definition</b>, <b>textDocument/declaration</b>, <b>textDocument/implementation</b>, <b>textDocument/references</b>, <b>textDocument/documentHighlight</b>, <b>textDocument/prepareRename</b>, <b>textDocument/rename</b>, <b>textDocument/documentSymbol</b>, <b>textDocument/foldingRange</b>, <b>textDocument/selectionRange</b>, <b>textDocument/semanticTokens/full</b>, <b>textDocument/codeLens</b> et <b>textDocument/documentLink</b>.

La reponse <b>initialize</b> annonce une synchronisation incrementale du texte, les notifications d'ouverture et de fermeture, les diagnostics en pull, les diagnostics workspace, le formatage de document, le formatage de plage, le formatage on-type, les actions de code avec support de resolution, les informations de hover, la completion avec support de resolution, l'aide de signature, la navigation vers definition, declaration et implementation, les references, les highlights de document, le prepare-rename, les symboles de document, les symboles workspace, les folding ranges, les selection ranges, les semantic tokens, les code lenses, les liens de document, les commandes execute, les dossiers workspace et les notifications de sauvegarde. <b>textDocument/didChange</b> accepte les changements de document complet et les patches incrementaux avec plage de texte dans l'ordre envoye par le client.

Lorsqu'un client envoie des versions de document, les diagnostics publies pour les documents ouverts incluent la meme version. Les diagnostics workspace utilisent <b>null</b> comme version pour les fichiers analyses depuis le disque et la version courante pour les buffers ouverts.

Les diagnostics workspace prennent en charge <b>partialResultToken</b>. Lorsque le token est present, le serveur envoie les elements de diagnostic via une notification de resultat partiel <b>$/progress</b> et renvoie une liste finale vide pour cette requete.

Les requetes de hover sur un diagnostic actif renvoient du Markdown avec l'identifiant de regle, le nom de regle, la severite, la categorie, la fixabilite, une description courte, le message du diagnostic et le lien d'aide lorsqu'il existe.

Les URI de fichier au format <b>file:///</b> sont converties en chemins locaux avant l'analyse. Les autres schemas d'URI sont analyses comme un buffer en memoire nomme <b>buffer.m</b>.

La configuration est partagee avec l'analyseur de code. Lorsqu'un espace de travail contient un fichier de configuration de lint Nelson, les diagnostics suivent les memes severites et seuils que <b>checkcode</b>, <b>codeIssues</b> et <b>nelson-lint</b>.

Les editeurs peuvent aussi envoyer <b>workspace/didChangeConfiguration</b>. Le serveur accepte les reglages lint sous <b>settings.nelson.lint</b>, <b>settings.nelsonLint</b>, <b>settings.nelson-lint</b>, ou dans un objet de premier niveau contenant <b>rules</b> ou <b>files</b>. Les champs pris en charge reprennent la forme de la configuration lint pour <b>rules</b>, <b>files.include</b> et <b>files.exclude</b>; ces reglages sont appliques au-dessus de la configuration workspace pour les diagnostics suivants et les buffers ouverts sont rafraichis.

L'annulation suit la notification Language Server Protocol <b>$/cancelRequest</b>. Si une requete en attente est annulee avant son traitement, le serveur renvoie une erreur JSON-RPC avec le code <b>-32800</b>.

## Fonction(s) utilisée(s)

checkcode, codeIssues, nelson-lint, nelson-format

## 💡 Exemples

Demarrer le serveur depuis un client editeur.

```matlab
nelson-lsp
```

Configuration typique d'une commande editeur.

```matlab

{
  "command": "nelson-lsp",
  "args": [],
  "transport": "stdio",
  "filetypes": ["nelson", "m"]
}

```

Corps minimal d'une requete initialize envoyee apres l'en-tete Content-Length.

```matlab

{
  "jsonrpc": "2.0",
  "id": 1,
  "method": "initialize",
  "params": {
    "processId": null,
    "rootUri": "file:///C:/work/project",
    "capabilities": {}
  }
}

```

Ouvrir un document et recevoir les diagnostics.

```matlab

{
  "jsonrpc": "2.0",
  "method": "textDocument/didOpen",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m",
      "languageId": "nelson",
      "version": 1,
      "text": "function y = example(x)\ny = x + 1;\nend\n"
    }
  }
}

```

Demander les corrections rapides et suppressions pour le buffer courant.

```matlab

{
  "jsonrpc": "2.0",
  "id": 2,
  "method": "textDocument/codeAction",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m"
    },
    "range": {
      "start": { "line": 0, "character": 0 },
      "end": { "line": 0, "character": 0 }
    },
    "context": {
      "diagnostics": []
    }
  }
}

```

Appliquer un changement incremental avec une plage de texte.

```matlab

{
  "jsonrpc": "2.0",
  "method": "textDocument/didChange",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m",
      "version": 2
    },
    "contentChanges": [
      {
        "range": {
          "start": { "line": 1, "character": 5 },
          "end": { "line": 1, "character": 5 }
        },
        "text": " + 1"
      }
    ]
  }
}

```

Demander les edits de formatage avant sauvegarde.

```matlab

{
  "jsonrpc": "2.0",
  "id": 3,
  "method": "textDocument/willSaveWaitUntil",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m"
    },
    "reason": 1
  }
}

```

Mettre a jour les reglages lint depuis un editeur.

```matlab

{
  "jsonrpc": "2.0",
  "method": "workspace/didChangeConfiguration",
  "params": {
    "settings": {
      "nelson": {
        "lint": {
          "rules": {
            "NLS0010": { "level": "allow" }
          }
        }
      }
    }
  }
}

```

Demander les diagnostics workspace apres initialize.

```matlab

{
  "jsonrpc": "2.0",
  "id": 4,
  "method": "workspace/diagnostic",
  "params": {
    "previousResultIds": []
  }
}

```

Demander les completions a la position courante du curseur.

```matlab

{
  "jsonrpc": "2.0",
  "id": 5,
  "method": "textDocument/completion",
  "params": {
    "textDocument": {
      "uri": "file:///C:/work/project/example.m"
    },
    "position": { "line": 1, "character": 4 }
  }
}

```

Demander une commande preparee via le provider de commandes LSP.

```matlab

{
  "jsonrpc": "2.0",
  "id": 6,
  "method": "workspace/executeCommand",
  "params": {
    "command": "nelson.runFile",
    "arguments": ["file:///C:/work/project/example.m"]
  }
}

```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
