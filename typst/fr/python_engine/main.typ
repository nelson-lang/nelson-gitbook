#import "nelson_help.typ": *

= Moteur Python

Le module Moteur Python permet à Nelson d'appeler du code Python et d'utiliser des bibliothèques Python avec les fonctions Nelson.

 Il fournit des fonctions pour exécuter du code Python, gérer les environnements d'interpréteur et échanger des données entre Nelson et Python.

== Functions

- #nlink(<python_engine:1_The_power_of_Python>)[La puissance d'appeler Python depuis Nelson]: 
- #nlink(<python_engine:2_How_to_install_python_package>)[Comment installer un paquet Python]: 
- #nlink(<python_engine:3_python_types>)[Types Python - Nelson]: Gestion des données entre Python et Nelson.
- #nlink(<python_engine:4_python_overload>)[Opérateurs Python]: La représentation des opérateurs Python dans Nelson.
- #nlink(<python_engine:5_call_nelson_from_python>)[Appeler Nelson depuis Python]: Utiliser l'API Nelson Engine pour Python.
- #nlink(<python_engine:6_install_nelson_engine_for_python>)[Installer Nelson Engine API pour Python]: Installer le paquet Python qui fournit nelson.engine.
- #nlink(<python_engine:py>)[py]: Proxy d'espace de noms Python.
- #nlink(<python_engine:pyargs>)[pyargs]: Générer des arguments nommés pour les fonctions Python.
- #nlink(<python_engine:pyenv>)[pyenv]: Modifier l'environnement par défaut de l'interpréteur Python.
- #nlink(<python_engine:pyfunction>)[pyfunction]: Encapsuler un handle de fonction Nelson en appelable Python.
- #nlink(<python_engine:pyrun>)[pyrun]: Exécuter des instructions Python depuis Nelson.
- #nlink(<python_engine:pyrunfile>)[pyrunfile]: Exécuter un fichier Python depuis Nelson.


#nested[
#pagebreak(weak: true)
#include "1_The_power_of_Python.typ"
#pagebreak(weak: true)
#include "2_How_to_install_python_package.typ"
#pagebreak(weak: true)
#include "3_python_types.typ"
#pagebreak(weak: true)
#include "4_python_overload.typ"
#pagebreak(weak: true)
#include "5_call_nelson_from_python.typ"
#pagebreak(weak: true)
#include "6_install_nelson_engine_for_python.typ"
#pagebreak(weak: true)
#include "py.typ"
#pagebreak(weak: true)
#include "pyargs.typ"
#pagebreak(weak: true)
#include "pyenv.typ"
#pagebreak(weak: true)
#include "pyfunction.typ"
#pagebreak(weak: true)
#include "pyrun.typ"
#pagebreak(weak: true)
#include "pyrunfile.typ"
]
