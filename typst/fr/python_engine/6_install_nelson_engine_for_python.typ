#import "nelson_help.typ": *

= Installer Nelson Engine API pour Python <python_engine:6_install_nelson_engine_for_python>

Installer le paquet Python qui fournit nelson.engine.

== Syntaxe

- #raw("python -m pip install chemin/vers/nelson/modules/python_engine/resources/python");
- #raw("python -m pip install --no-build-isolation chemin/vers/nelson/modules/python_engine/resources/python");
- #raw("python -m pip install -e chemin/vers/nelson/modules/python_engine/resources/python");

== Description

L'API Nelson Engine pour Python est fournie comme un paquet Python nomme #strong[nelson];. Elle fournit #strong[nelson.engine]; et les classes de tableaux Python compatibles avec Nelson.

 Installez le paquet dans l'environnement Python qui appellera Nelson. Depuis un arbre source ou de compilation Nelson, le repertoire du paquet est #strong[modules\/python\_engine\/resources\/python];.

 Le paquet Python contient uniquement l'API Python. La bibliotheque native Nelson engine doit aussi etre disponible depuis une installation Nelson ou depuis la sortie de compilation. Si la decouverte automatique echoue, definissez #strong[NELSON\_ROOT]; vers le repertoire racine de Nelson, ou definissez #strong[NELSON\_ENGINE\_LIBRARY]; vers le chemin complet de la bibliotheque engine.

 Dans un arbre de compilation Windows, la bibliotheque engine est souvent #strong[bin\/x64\/libnlsEngine.dll];. Sous Linux, elle est souvent #strong[libnlsEngine.so];, et sous macOS #strong[libnlsEngine.dylib];.

 Les paquets optionnels comme NumPy et pandas ne sont pas necessaires pour importer le paquet engine, mais ils activent des conversions plus fideles pour les tableaux et les tables.

 Si l'environnement Python n'a pas acces au reseau pendant l'installation, verifiez d'abord que #strong[setuptools]; et #strong[wheel]; sont deja installes, puis utilisez #strong[--no-build-isolation]; pour eviter que pip telecharge les dependances de construction dans un environnement temporaire.


== Exemples

Installer depuis un arbre de compilation Nelson sous Windows.

``````matlab
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install .\modules\python_engine\resources\python
``````

Installer en mode editable pour le developpement.

``````matlab
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install -e .\modules\python_engine\resources\python
``````

Installer sans isolation de construction dans un environnement hors ligne.

``````matlab
python -m pip install setuptools wheel
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install --no-build-isolation .\modules\python_engine\resources\python
``````

Utiliser le paquet installe depuis un autre dossier.

``````matlab
$env:NELSON_ROOT = "D:\Developpements\Github\nelson-lang\nelson"
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
``````

Indiquer directement la bibliotheque engine.

``````matlab
$env:NELSON_ENGINE_LIBRARY = "D:\Developpements\Github\nelson-lang\nelson\bin\x64\libnlsEngine.dll"
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
``````

Installer et utiliser le paquet sous Linux ou macOS.

``````matlab
python -m pip install /path/to/nelson/modules/python_engine/resources/python
export NELSON_ROOT=/path/to/nelson
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
``````

Installer les dependances de conversion optionnelles.

``````matlab
python -m pip install numpy pandas
``````


== Voir aussi

#nlink(<python_engine:5_call_nelson_from_python>)[Appeler Nelson depuis Python];, #nlink(<python_engine:pyenv>)[pyenv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Ajout de l'aide d'installation de l'API Nelson Engine pour Python.],
)

// Auteur: Allan CORNET
