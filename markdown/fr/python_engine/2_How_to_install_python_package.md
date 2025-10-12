# Comment installer un paquet Python

## Description

<p>Nelson permet d'intégrer de manière transparente des paquets Python dans les flux de travail.</p>

<p>Installer des paquets Python dans Nelson étend ses fonctionnalités et permet d'exploiter un large éventail de bibliothèques pour l'analyse de données, l'apprentissage automatique, le calcul scientifique, et plus encore.</p>

<p>Ce fichier d'aide fournit un guide complet pour installer des paquets Python depuis Nelson.</p>

<p></p>

<p>Conseils et précautions :</p>

<p></p>

<p>- Disponibilité du paquet : assurez-vous que le paquet Python que vous souhaitez installer est disponible sur le Python Package Index (PyPI) ou un autre dépôt compatible.</p>

<p>- Dépendances : certains paquets Python peuvent dépendre d'autres paquets. Veillez à installer les dépendances requises au préalable.</p>

<p>- Compatibilité des versions : vérifiez la compatibilité du paquet avec votre environnement Python actuel et la version de Nelson pour éviter les problèmes.</p>

<p>- Environnements virtuels : envisagez d'utiliser des environnements virtuels dans Nelson pour isoler les installations de paquets et gérer les dépendances par projet.</p>

<p>- Droits d'accès : lors de l'installation de paquets nécessitant un accès en écriture au répertoire Python, assurez-vous d'avoir les permissions nécessaires. Sur certains systèmes, des privilèges administrateur peuvent être requis. En cas d'erreur de permission, utilisez un environnement virtuel ou contactez l'administrateur système.</p>

## Exemples

Get info from the pyenv environment:

```matlab
pe = pyenv
```

Construct the command to install the package:

```matlab
package_to_install = "scipy";
command_to_install = '"' + pe.Executable +  '"' + " -m pip install " + package_to_install;
```

Construct the command to install the package:

```matlab
[status, msg] = system(command_to_install);
```

## Voir aussi

[system](../os_functions/system.md), [pyenv](../python_engine/pyenv.md).
