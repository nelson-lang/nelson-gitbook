# nelson.compiler.BuildResult

Consulter le resultat d'une construction applicative.

## 📝 Syntaxe

- result = nelson.compiler.build(options)
- result = ncc(options)
- result = nelson.compiler.BuildResult(report, options)
- values = struct(result)

## 📥 Argument d'entrée

- report - Structure scalaire contenant Executable, RuntimeDirectory, DependencyPlan, RuntimePlan, Manifest et SHA256.
- options - Objet scalaire nelson.compiler.BuildOptions.

## 📤 Argument de sortie

- result - Resultat scalaire avec proprietes en lecture seule.

## 📄 Description

Obtenir normalement ce resultat avec <b>ncc(options)</b> ou <b>nelson.compiler.build(options)</b>. Le constructeur encapsule un rapport existant : il ne construit rien, ne verifie pas les fichiers et n'authentifie pas leur contenu.

<b>BuildType</b> : standaloneApplication, ou standaloneWindowsApplication lorsque options.NoConsole vaut true.

<b>Files</b> : cellule de chemins a distribuer, contenant Executable et, en mode bundled, RuntimeDirectory. Ce n'est ni un inventaire recursif ni un installateur.

<b>Executable</b> : chemin absolu de l'executable natif. <b>RuntimeDirectory</b> : dossier runtime voisin, ou vide en mode installed. Deplacer ensemble l'executable bundled et son dossier runtime sans les renommer.

<b>Options</b> : copie valeur de la configuration. Les modifications ulterieures des options de l'appelant ne modifient pas le resultat.

<b>DependencyPlan</b> : analyse des dependances applicatives resolues. <b>RuntimePlan</b> : besoins du runtime et inventaire des fichiers selectionnes en mode bundled. Ces informations permettent de comprendre les modules et fichiers inclus.

<b>Manifest</b> : manifeste applicatif embarque decrivant les entrees de l'archive et les besoins du runtime. <b>SHA256</b> : empreinte de l'executable produit, pas une signature d'editeur.

<b>struct(result)</b> convertit le resultat en structure scalaire, y compris Options. Le rapport peut contenir des chemins absolus de la machine de construction ; les examiner avant publication. Ce resultat decrit le paquet applicatif actuel, pas un installateur.

Lorsque Options.EmbedArchive vaut false, Files contient aussi l'archive .nca entre l'executable et l'eventuel dossier runtime. SHA256 reste l'empreinte de l'executable ; l'integrite de l'archive est verifiee au lancement.

## 💡 Exemple

Consulter une construction

```matlab
options = ncc('options', 'app_entry.m', 'OutputDir', 'application-build');
result = ncc(options);
disp(result.Files);
disp(result.RuntimePlan);
text = jsonencode(struct(result));
```

## 🔗 Voir aussi

[nelson.compiler.BuildOptions](../compiler/nelson.compiler.BuildOptions.md), [nelson.compiler.build](../compiler/nelson.compiler.build.md), [compiler_standalone_tutorial](../compiler/compiler_standalone_tutorial.md).

<!--
## 👤 Auteur

Allan CORNET
-->
