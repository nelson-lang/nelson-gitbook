#import "nelson_help.typ": *

= Construction d'applications autonomes

Le module optionnel compiler analyse les dependances et construit des applications natives a partir de fichiers .m.

 Utiliser ncc pour charger le module a la demande. compiler.build fournit les constructions autonomes avec ou sans console, des options partagees et des resultats en lecture seule avec tables de dependances runtime. Les interfaces nelson.compiler conservent le mode de runtime adjacent. Les tutoriels couvrent plusieurs fonctions, les donnees embarquees et les deux interfaces de construction.

== Functions

- #nlink(<compiler:compiler.build.Results>)[compiler.build.Results]: Inspecter une construction autonome terminee.
- #nlink(<compiler:compiler.build.Results>)[compiler.build.Results]: Inspecter une construction autonome terminee.
- #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]: Configurer une construction d'application autonome.
- #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]: Configurer une construction d'application autonome.
- #nlink(<compiler:compiler.build.standaloneApplication>)[compiler.build.standaloneApplication]: Construire une application autonome native.
- #nlink(<compiler:compiler.build.standaloneApplication>)[compiler.build.standaloneApplication]: Construire une application autonome native.
- #nlink(<compiler:compiler.build.standaloneWindowsApplication>)[compiler.build.standaloneWindowsApplication]: Construire une application Windows native sans console.
- #nlink(<compiler:compiler.build.standaloneWindowsApplication>)[compiler.build.standaloneWindowsApplication]: Construire une application Windows native sans console.
- #nlink(<compiler:compiler.package.InstallerOptions>)[compiler.package.InstallerOptions]: Configurer la generation d'un installateur d'application.
- #nlink(<compiler:compiler.package.InstallerOptions>)[compiler.package.InstallerOptions]: Configurer la generation d'un installateur d'application.
- #nlink(<compiler:compiler.package.installer>)[compiler.package.installer]: Creer un installateur d'application natif.
- #nlink(<compiler:compiler.package.installer>)[compiler.package.installer]: Creer un installateur d'application natif.
- #nlink(<compiler:compiler.runtime.Dependencies>)[compiler.runtime.Dependencies]: Inspecter les fichiers runtime selectionnes.
- #nlink(<compiler:compiler.runtime.Dependencies>)[compiler.runtime.Dependencies]: Inspecter les fichiers runtime selectionnes.
- #nlink(<compiler:compiler.runtime.customInstaller>)[compiler.runtime.customInstaller]: Creer un installateur de runtime minimal partage.
- #nlink(<compiler:compiler.runtime.customInstaller>)[compiler.runtime.customInstaller]: Creer un installateur de runtime minimal partage.
- #nlink(<compiler:compiler_build_tutorial>)[compiler\_build\_tutorial]: Tutoriel : construire des applications avec et sans console.
- #nlink(<compiler:compiler_build_tutorial>)[compiler\_build\_tutorial]: Tutoriel : construire des applications avec et sans console.
- #nlink(<compiler:compiler_embedded_data_tutorial>)[compiler\_embedded\_data\_tutorial]: Tutoriel : embarquer des donnees NH5 et MAT dans un executable.
- #nlink(<compiler:compiler_embedded_data_tutorial>)[compiler\_embedded\_data\_tutorial]: Tutoriel : embarquer des donnees NH5 et MAT dans un executable.
- #nlink(<compiler:compiler_installer_tutorial>)[compiler\_installer\_tutorial]: Construire, installer et executer une application Windows.
- #nlink(<compiler:compiler_installer_tutorial>)[compiler\_installer\_tutorial]: Construire, installer et executer une application Windows.
- #nlink(<compiler:compiler_linux_installer_tutorial>)[compiler\_linux\_installer\_tutorial]: Construire, installer et supprimer une application Linux.
- #nlink(<compiler:compiler_linux_installer_tutorial>)[compiler\_linux\_installer\_tutorial]: Construire, installer et supprimer une application Linux.
- #nlink(<compiler:compiler_linux_runtime_tutorial>)[compiler\_linux\_runtime\_tutorial]: Tutoriel : un runtime minimal partage sous Linux.
- #nlink(<compiler:compiler_linux_runtime_tutorial>)[compiler\_linux\_runtime\_tutorial]: Tutoriel : un runtime minimal partage sous Linux.
- #nlink(<compiler:compiler_macos_installer_tutorial>)[compiler\_macos\_installer\_tutorial]: Construire et empaqueter une application macOS native.
- #nlink(<compiler:compiler_macos_installer_tutorial>)[compiler\_macos\_installer\_tutorial]: Construire et empaqueter une application macOS native.
- #nlink(<compiler:compiler_project_tutorial>)[compiler\_project\_tutorial]: Tutoriel : configurer, construire et distribuer une application dans l'éditeur de projet.
- #nlink(<compiler:compiler_project_tutorial>)[compiler\_project\_tutorial]: Tutoriel : configurer, construire et distribuer une application dans l'éditeur de projet.
- #nlink(<compiler:compiler_runtime_tutorial>)[compiler\_runtime\_tutorial]: Tutoriel : un runtime pour plusieurs applications.
- #nlink(<compiler:compiler_runtime_tutorial>)[compiler\_runtime\_tutorial]: Tutoriel : un runtime pour plusieurs applications.
- #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial]: Tutoriel : distribuer une application avec plusieurs sources et des donnees.
- #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial]: Tutoriel : distribuer une application avec plusieurs sources et des donnees.
- #nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions]: Configurer la construction d'une application native.
- #nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions]: Configurer la construction d'une application native.
- #nlink(<compiler:nelson.compiler.BuildResult>)[nelson.compiler.BuildResult]: Consulter le resultat d'une construction applicative.
- #nlink(<compiler:nelson.compiler.BuildResult>)[nelson.compiler.BuildResult]: Consulter le resultat d'une construction applicative.
- #nlink(<compiler:nelson.compiler.analyze>)[nelson.compiler.analyze]: Examiner les dependances sans produire d'executable.
- #nlink(<compiler:nelson.compiler.analyze>)[nelson.compiler.analyze]: Examiner les dependances sans produire d'executable.
- #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build]: Construire un executable natif avec des options structurees.
- #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build]: Construire un executable natif avec des options structurees.


#nested[
#pagebreak(weak: true)
#include "compiler.build.Results.typ"
#pagebreak(weak: true)
#include "compiler.build.StandaloneApplicationOptions.typ"
#pagebreak(weak: true)
#include "compiler.build.standaloneApplication.typ"
#pagebreak(weak: true)
#include "compiler.build.standaloneWindowsApplication.typ"
#pagebreak(weak: true)
#include "compiler.package.InstallerOptions.typ"
#pagebreak(weak: true)
#include "compiler.package.installer.typ"
#pagebreak(weak: true)
#include "compiler.runtime.Dependencies.typ"
#pagebreak(weak: true)
#include "compiler.runtime.customInstaller.typ"
#pagebreak(weak: true)
#include "compiler_build_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_embedded_data_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_installer_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_linux_installer_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_linux_runtime_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_macos_installer_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_project_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_runtime_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_standalone_tutorial.typ"
#pagebreak(weak: true)
#include "nelson.compiler.BuildOptions.typ"
#pagebreak(weak: true)
#include "nelson.compiler.BuildResult.typ"
#pagebreak(weak: true)
#include "nelson.compiler.analyze.typ"
#pagebreak(weak: true)
#include "nelson.compiler.build.typ"
]
