#import "nelson_help.typ": *

= nelson-lsp <interpreter:nelson_lsp>

Point d'entree Language Server Protocol pour les diagnostics de code Nelson.

== Syntaxe

- #raw("nelson-lsp");

== Description

#strong[nelson-lsp]; est un serveur JSON-RPC Language Server Protocol sur l'entree standard et la sortie standard.

 L'executable est destine a etre lance par un editeur ou un environnement de developpement. Il n'ouvre pas d'invite interactive et ne lit pas de fichiers source depuis la ligne de commande. Le client envoie les messages Language Server Protocol sur stdin avec l'en-tete standard #strong[Content-Length];, et le serveur ecrit les reponses et notifications JSON-RPC sur stdout.

 Le serveur maintient un modele leger de document et de workspace. Les documents ouverts sont indexes avec leur texte courant, leur version, leurs diagnostics, leurs symboles, leurs fonctions locales, leurs classes, leurs imports et leurs variables locales. Les racines de workspace sont indexees separement; chaque racine garde les fichiers #strong[.m]; trouves, les fonctions publiques, les fonctions locales, les classes, les chemins de modules et un cache invalide par date de fichier, hash de contenu et configuration lint.

 Le serveur publie les diagnostics de l'analyseur de code Nelson pour les buffers ouverts. Les diagnostics utilisent #strong[nelson-lint]; comme source et exposent l'identifiant de regle, la severite, le message, la plage de texte, des #strong[data]; stables pour les actions de code ulterieures, les liens d'aide #strong[codeDescription];, #strong[relatedInformation]; et les tags LSP pour les elements inutilises ou obsoletes lorsque c'est applicable.

 Les editeurs qui utilisent les diagnostics en pull peuvent appeler #strong[textDocument\/diagnostic]; pour un document ou #strong[workspace\/diagnostic]; pour tous les fichiers sous les racines de workspace initialisees. Les diagnostics workspace reutilisent l'analyse recursive, respectent la configuration partagee d'inclusion et d'exclusion, et prennent en charge les notifications de progression partielle.

 Les corrections rapides sont renvoyees par #strong[textDocument\/codeAction];. Si un diagnostic porte des edits de texte surs, le serveur renvoie une action #strong[quickfix]; qui applique ces edits. Pour chaque diagnostic non supprime, le serveur propose aussi une action de suppression locale qui ajoute #strong[%\#ok\<ID\>]; sur la ligne du diagnostic et une action de suppression fichier en tete du fichier.

 Les actions source incluent #strong[source.fixAll.nelson-lint]; pour toutes les corrections lint sures d'un document, #strong[source.organizeImports]; pour nettoyer les imports et #strong[source.nelson.generateHelpSkeleton]; pour generer une commande de squelette d'aide. Certains diagnostics peuvent aussi proposer des corrections plus riches, comme creer un fichier de fonction manquant ou ajouter un stub de fonction locale.

 Le formatage est expose par #strong[textDocument\/formatting];, #strong[textDocument\/rangeFormatting]; et #strong[textDocument\/onTypeFormatting];. Le serveur utilise le meme coeur de formatage Nelson que #strong[nelson-format]; et renvoie des edits utilisables pour le format-on-save et le formatage declenche par l'editeur.

 La surface de navigation et d'edition prend en charge #strong[textDocument\/hover];, #strong[textDocument\/completion];, #strong[completionItem\/resolve];, #strong[textDocument\/signatureHelp];, #strong[textDocument\/definition];, #strong[textDocument\/declaration];, #strong[textDocument\/implementation];, #strong[textDocument\/references];, #strong[textDocument\/documentHighlight];, #strong[textDocument\/prepareRename]; et #strong[textDocument\/rename];. Le renommage est volontairement limite aux edits locaux dans le document courant.

 Les completions couvrent les mots-cles Nelson, les snippets, les variables locales, les fonctions locales, les fonctions du workspace, les classes et les chemins de modules connus. Les requetes hover renvoient les informations de regle de l'analyseur lorsque le curseur est sur un diagnostic, ou les informations de symbole lorsque le curseur est sur un symbole local ou workspace connu.

 La surface IDE structurelle prend en charge #strong[textDocument\/documentSymbol];, #strong[workspace\/symbol];, #strong[textDocument\/foldingRange];, #strong[textDocument\/selectionRange];, #strong[textDocument\/semanticTokens\/full];, #strong[textDocument\/codeLens]; et #strong[textDocument\/documentLink];. Les semantic tokens identifient les mots-cles, fonctions, variables, classes, proprietes, methodes, chaines et commentaires.

 Les code lenses exposent des actions preparees pour lancer le fichier courant, lancer les tests du module et inspecter le nombre d'issues du document courant. Les liens de document sont renvoyes pour les chemins de type fichier trouves dans le texte source.

 Le provider #strong[workspace\/executeCommand]; accepte #strong[nelson.runFile];, #strong[nelson.runSelection];, #strong[nelson.runTestsForModule];, #strong[nelson.openHelp];, #strong[nelson.lintWorkspace];, #strong[nelson.clearLspCache]; et #strong[nelson.createFunctionFile];. Les commandes renvoient des donnees structurees que le client peut executer ou afficher; le serveur ne modifie pas les fichiers sauf si le client applique explicitement un workspace edit ou un resultat de commande renvoye.

 La surface actuelle du protocole prend en charge #strong[initialize];, #strong[shutdown];, #strong[exit];, #strong[\$\/cancelRequest];, #strong[workspace\/didChangeConfiguration];, #strong[workspace\/didChangeWorkspaceFolders];, #strong[workspace\/executeCommand];, #strong[workspace\/symbol];, #strong[textDocument\/didOpen];, #strong[textDocument\/didChange];, #strong[textDocument\/didSave];, #strong[textDocument\/didClose];, #strong[textDocument\/willSaveWaitUntil];, #strong[textDocument\/diagnostic];, #strong[workspace\/diagnostic];, #strong[textDocument\/formatting];, #strong[textDocument\/rangeFormatting];, #strong[textDocument\/onTypeFormatting];, #strong[textDocument\/codeAction];, #strong[codeAction\/resolve];, #strong[textDocument\/hover];, #strong[textDocument\/completion];, #strong[completionItem\/resolve];, #strong[textDocument\/signatureHelp];, #strong[textDocument\/definition];, #strong[textDocument\/declaration];, #strong[textDocument\/implementation];, #strong[textDocument\/references];, #strong[textDocument\/documentHighlight];, #strong[textDocument\/prepareRename];, #strong[textDocument\/rename];, #strong[textDocument\/documentSymbol];, #strong[textDocument\/foldingRange];, #strong[textDocument\/selectionRange];, #strong[textDocument\/semanticTokens\/full];, #strong[textDocument\/codeLens]; et #strong[textDocument\/documentLink];.

 La reponse #strong[initialize]; annonce une synchronisation incrementale du texte, les notifications d'ouverture et de fermeture, les diagnostics en pull, les diagnostics workspace, le formatage de document, le formatage de plage, le formatage on-type, les actions de code avec support de resolution, les informations de hover, la completion avec support de resolution, l'aide de signature, la navigation vers definition, declaration et implementation, les references, les highlights de document, le prepare-rename, les symboles de document, les symboles workspace, les folding ranges, les selection ranges, les semantic tokens, les code lenses, les liens de document, les commandes execute, les dossiers workspace et les notifications de sauvegarde. #strong[textDocument\/didChange]; accepte les changements de document complet et les patches incrementaux avec plage de texte dans l'ordre envoye par le client.

 Lorsqu'un client envoie des versions de document, les diagnostics publies pour les documents ouverts incluent la meme version. Les diagnostics workspace utilisent #strong[null]; comme version pour les fichiers analyses depuis le disque et la version courante pour les buffers ouverts.

 Les diagnostics workspace prennent en charge #strong[partialResultToken];. Lorsque le token est present, le serveur envoie les elements de diagnostic via une notification de resultat partiel #strong[\$\/progress]; et renvoie une liste finale vide pour cette requete.

 Les requetes de hover sur un diagnostic actif renvoient du Markdown avec l'identifiant de regle, le nom de regle, la severite, la categorie, la fixabilite, une description courte, le message du diagnostic et le lien d'aide lorsqu'il existe.

 Les URI de fichier au format #strong[file:\/\/\/]; sont converties en chemins locaux avant l'analyse. Les autres schemas d'URI sont analyses comme un buffer en memoire nomme #strong[buffer.m];.

 La configuration est partagee avec l'analyseur de code. Lorsqu'un espace de travail contient un fichier de configuration de lint Nelson, les diagnostics suivent les memes severites et seuils que #strong[checkcode];, #strong[codeIssues]; et #strong[nelson-lint];.

 Les editeurs peuvent aussi envoyer #strong[workspace\/didChangeConfiguration];. Le serveur accepte les reglages lint sous #strong[settings.nelson.lint];, #strong[settings.nelsonLint];, #strong[settings.nelson-lint];, ou dans un objet de premier niveau contenant #strong[rules]; ou #strong[files];. Les champs pris en charge reprennent la forme de la configuration lint pour #strong[rules];, #strong[files.include]; et #strong[files.exclude];; ces reglages sont appliques au-dessus de la configuration workspace pour les diagnostics suivants et les buffers ouverts sont rafraichis.

 L'annulation suit la notification Language Server Protocol #strong[\$\/cancelRequest];. Si une requete en attente est annulee avant son traitement, le serveur renvoie une erreur JSON-RPC avec le code #strong[-32800];.


== Fonction(s) utilisée(s)

checkcode, codeIssues, nelson-lint, nelson-format

== Exemples

Demarrer le serveur depuis un client editeur.

``````matlab
nelson-lsp
``````

Configuration typique d'une commande editeur.

``````matlab

{
  "command": "nelson-lsp",
  "args": [],
  "transport": "stdio",
  "filetypes": ["nelson", "m"]
}

``````

Corps minimal d'une requete initialize envoyee apres l'en-tete Content-Length.

``````matlab

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

``````

Ouvrir un document et recevoir les diagnostics.

``````matlab

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

``````

Demander les corrections rapides et suppressions pour le buffer courant.

``````matlab

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

``````

Appliquer un changement incremental avec une plage de texte.

``````matlab

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

``````

Demander les edits de formatage avant sauvegarde.

``````matlab

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

``````

Mettre a jour les reglages lint depuis un editeur.

``````matlab

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

``````

Demander les diagnostics workspace apres initialize.

``````matlab

{
  "jsonrpc": "2.0",
  "id": 4,
  "method": "workspace/diagnostic",
  "params": {
    "previousResultIds": []
  }
}

``````

Demander les completions a la position courante du curseur.

``````matlab

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

``````

Demander une commande preparee via le provider de commandes LSP.

``````matlab

{
  "jsonrpc": "2.0",
  "id": 6,
  "method": "workspace/executeCommand",
  "params": {
    "command": "nelson.runFile",
    "arguments": ["file:///C:/work/project/example.m"]
  }
}

``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
