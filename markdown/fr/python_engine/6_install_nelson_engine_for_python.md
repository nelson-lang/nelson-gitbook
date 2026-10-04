# Installer Nelson Engine API pour Python

Installer le paquet Python qui fournit nelson.engine.

## 📝 Syntaxe

- python -m pip install chemin/vers/nelson/modules/python_engine/resources/python
- python -m pip install --no-build-isolation chemin/vers/nelson/modules/python_engine/resources/python
- python -m pip install -e chemin/vers/nelson/modules/python_engine/resources/python

## 📄 Description

L'API Nelson Engine pour Python est fournie comme un paquet Python nomme <b>nelson</b>. Elle fournit <b>nelson.engine</b> et les classes de tableaux Python compatibles avec Nelson.

Installez le paquet dans l'environnement Python qui appellera Nelson. Depuis un arbre source ou de compilation Nelson, le repertoire du paquet est <b>modules/python_engine/resources/python</b>.

Le paquet Python contient uniquement l'API Python. La bibliotheque native Nelson engine doit aussi etre disponible depuis une installation Nelson ou depuis la sortie de compilation. Si la decouverte automatique echoue, definissez <b>NELSON_ROOT</b> vers le repertoire racine de Nelson, ou definissez <b>NELSON_ENGINE_LIBRARY</b> vers le chemin complet de la bibliotheque engine.

Dans un arbre de compilation Windows, la bibliotheque engine est souvent <b>bin/x64/libnlsEngine.dll</b>. Sous Linux, elle est souvent <b>libnlsEngine.so</b>, et sous macOS <b>libnlsEngine.dylib</b>.

Les paquets optionnels comme NumPy et pandas ne sont pas necessaires pour importer le paquet engine, mais ils activent des conversions plus fideles pour les tableaux et les tables.

Si l'environnement Python n'a pas acces au reseau pendant l'installation, verifiez d'abord que <b>setuptools</b> et <b>wheel</b> sont deja installes, puis utilisez <b>--no-build-isolation</b> pour eviter que pip telecharge les dependances de construction dans un environnement temporaire.

## 💡 Exemples

Installer depuis un arbre de compilation Nelson sous Windows.

```matlab
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install .\modules\python_engine\resources\python
```

Installer en mode editable pour le developpement.

```matlab
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install -e .\modules\python_engine\resources\python
```

Installer sans isolation de construction dans un environnement hors ligne.

```matlab
python -m pip install setuptools wheel
cd D:\Developpements\Github\nelson-lang\nelson
python -m pip install --no-build-isolation .\modules\python_engine\resources\python
```

Utiliser le paquet installe depuis un autre dossier.

```matlab
$env:NELSON_ROOT = "D:\Developpements\Github\nelson-lang\nelson"
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
```

Indiquer directement la bibliotheque engine.

```matlab
$env:NELSON_ENGINE_LIBRARY = "D:\Developpements\Github\nelson-lang\nelson\bin\x64\libnlsEngine.dll"
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
```

Installer et utiliser le paquet sous Linux ou macOS.

```matlab
python -m pip install /path/to/nelson/modules/python_engine/resources/python
export NELSON_ROOT=/path/to/nelson
python -c "import nelson.engine; eng = nelson.engine.start_nelson(); print(eng.sqrt(4.0)); eng.quit()"
```

Installer les dependances de conversion optionnelles.

```matlab
python -m pip install numpy pandas
```

## 🔗 Voir aussi

[Appeler Nelson depuis Python](../python_engine/5_call_nelson_from_python.md), [pyenv](../python_engine/pyenv.md).

## 🕔 Historique

| Version | 📄 Description                                                     |
| ------- | ------------------------------------------------------------------ |
| 2.0.0   | Ajout de l'aide d'installation de l'API Nelson Engine pour Python. |

<!--
## 👤 Auteur

Allan CORNET
-->
