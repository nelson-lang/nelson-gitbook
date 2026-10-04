# nelson.compiler.build

Construire un executable natif avec des options structurees.

## 📝 Syntaxe

- result = nelson.compiler.build(options)
- nelson.compiler.build(options)

## 📥 Argument d'entrée

- options - Un objet scalaire nelson.compiler.BuildOptions. Aucun remplacement supplementaire d'option n'est accepte.

## 📤 Argument de sortie

- result - nelson.compiler.BuildResult contenant chemins produits, rapports de dependances et empreinte de l'executable.

## 📄 Description

C'est le point d'entree structure du module optionnel compiler. <b>ncc(options)</b> est equivalent. Utiliser ncc('options', ...) pour charger le module et construire la configuration.

La construction analyse les dependances, compile les fichiers .m applicatifs en bytecode .nbc, embarque code et donnees dans l'executable et selectionne les dependances du runtime. Un lanceur precompile est requis ; aucun compilateur C++ n'est necessaire sur la machine de construction.

Le fichier produit utilise le format natif de la plateforme hote : .exe sous Windows et fichier executable sur les plateformes Unix prises en charge. Ce n'est pas une compilation croisee. NoConsole selectionne le lanceur Windows sans console ; Mode selectionne independamment les capacites graphiques.

Avec <b>RuntimeMode='bundled'</b>, distribuer ensemble l'executable et le dossier .runtime voisin listes dans result.Files. Le runtime est selectionne d'apres les dependances, sans copier sans restriction l'installation de developpement. Les appels dynamiques et les graphiques peuvent necessiter davantage de modules.

Avec <b>RuntimeMode='installed'</b>, seul l'executable est produit. La machine destinataire doit disposer d'une installation correspondant a l'architecture et a l'empreinte du moteur requises. Le numero de version seul ne suffit pas. La selection accepte <b>NELSONC_RUNTIME_ROOT</b> et <b>NELSON_RUNTIME_PATH</b> ; consulter ncc pour les regles de recherche.

Le dossier destination est cree si necessaire. Un executable ou un dossier runtime cible existant est rejete, sans ecrasement. L'application deployee n'a plus besoin des fichiers sources d'entree apres assemblage.

L'appel sans sortie construit aussi l'application. Verbose controle l'affichage des diagnostics. Le resultat n'est pas un installateur. Le packaging ne promet pas d'acceleration des calculs ; le bytecode utilise le moteur d'execution habituel.

## 💡 Exemple

Construire avec un runtime installe

```matlab
options = ncc('options', 'app_entry.m', ...
  'RuntimeMode', 'installed', 'OutputDir', 'application-build');
result = nelson.compiler.build(options);
disp(result.Executable);
```

## 🔗 Voir aussi

[ncc](../modules_manager/ncc.md), [nelson.compiler.BuildOptions](../compiler/nelson.compiler.BuildOptions.md), [nelson.compiler.BuildResult](../compiler/nelson.compiler.BuildResult.md), [nelson.compiler.analyze](../compiler/nelson.compiler.analyze.md), [compiler_standalone_tutorial](../compiler/compiler_standalone_tutorial.md).

<!--
## 👤 Auteur

Allan CORNET
-->
