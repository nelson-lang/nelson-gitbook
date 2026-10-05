# compiler.build.Results

Inspecter une construction autonome terminee.

## 📝 Syntaxe

- result = compiler.build.standaloneApplication(options)
- result = compiler.build.standaloneWindowsApplication(options)

## 📄 Description


Les fonctions de construction renvoient cet objet apres publication reussie des sorties. L'obtenir depuis une construction plutot que l'instancier directement. Ses proprietes publiques sont en lecture seule. 

BuildType vaut standaloneApplication ou standaloneWindowsApplication. Files est un vecteur colonne de cellules contenant l'executable, puis le fichier .nca lorsque EmbedArchive vaut false, puis readme.txt a distribuer a l'utilisateur, pas un inventaire recursif du runtime ou des metadonnees de construction. 

IncludedSupportPackages liste les packages nmm enregistres dont des fichiers ont reellement ete retenus. Les packages inutilises ne sont pas indiques. Une ancienne version enregistree explicitement active est reconnue. Cet inventaire des origines des fichiers ne signifie pas que tout le package est copie ou que son loader est execute. 

Options est une copie valeur de compiler.build.StandaloneApplicationOptions. RuntimeDependencies est un objet compiler.runtime.Dependencies contenant les exigences en fichiers du runtime selectionne. 

La construction ne distribue pas de runtime et ne cree pas d'installateur. L'executable requiert un runtime installe compatible. Le resultat decrit l'etat au build ; modifier ou supprimer ensuite des fichiers ne l'actualise pas. 

Les tables de dependances contiennent des chemins sources absolus de la machine de build. Relire les rapports avant partage. Les empreintes verifient l'integrite, pas l'identite de l'editeur. 

buildresult.json est aussi ecrit dans OutputDir. Son schema Nelson versionne contient les noms des artefacts relatifs a ce dossier, leurs empreintes SHA256, l'identite du runtime et son inventaire complet. Il ne serialise pas les parametres AppFile et OutputDir, mais conserve les chemins absolus des sources runtime pour leur verification ulterieure. Ce n'est ni un runtime portable, ni une signature, ni un format de rapport externe. Ne pas modifier son contenu. compiler.package.installer utilise les resultats ou rapports pour installer une application Windows ou Linux. compiler.runtime.customInstaller regroupe le runtime minimal partage pour une ou plusieurs applications. 

Le format 2 du rapport contient le contrat lu dans le lanceur natif : interface de demarrage, versions d'archive prises en charge, version de recherche du runtime et cible avec ou sans console. Les capacites ne sont pas deduites de la version du compilateur installe. Les anciens rapports sans ce contrat doivent etre regeneres en reconstruisant l'application avec les lanceurs natifs actuels.


## 🔗 Voir aussi

[compiler.build.standaloneApplication](../compiler/compiler.build.standaloneApplication.md), [compiler.build.StandaloneApplicationOptions](../compiler/compiler.build.StandaloneApplicationOptions.md), [compiler_build_tutorial](../compiler/compiler_build_tutorial.md).
<!--
## 👤 Auteur

Allan CORNET
-->
