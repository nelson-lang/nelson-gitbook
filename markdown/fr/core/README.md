# Core

Le module de base fournit les éléments fondamentaux de l'environnement Nelson.

Il comprend des services essentiels pour l'exécution de programmes, la gestion de l'environnement et l'interaction avec le système.

Grâce à ce module, les utilisateurs peuvent évaluer le code de manière dynamique, gérer le flux d'exécution, interroger l'état du programme et accéder à des informations clés sur le système telles que la version, la configuration et la licence.

Il offre également des utilitaires de base pour l'identification des fichiers, les sommes de contrôle et les capacités du terminal.

Ensemble, ces fonctionnalités forment la base sur laquelle tous les autres modules et fonctionnalités au niveau utilisateur dans Nelson sont construits.

## Functions

- [banner](banner.md) - Affiche la bannière d'accueil de Nelson.
- [crc32](crc32.md) - Calcul du CRC32.
- [eval](eval.md) - Évalue une expression.
- [evalc](evalc.md) - Évalue une expression et capture la sortie.
- [evalin](evalin.md) - Évalue une expression dans un espace de travail spécifié.
- [execstr](execstr.md) - Exécute une chaîne comme commande.
- [exist](exist.md) - Vérifie l'existence d'une variable, fonction ou fichier.
- [exit](exit.md) - Quitte l'environnement Nelson.
- [feature](feature.md) - Interroge les fonctionnalités disponibles.
- [inputname](inputname.md) - Renvoie le nom d'une variable d'entrée d'une fonction.
- [isunicodesupported](isunicodesupported.md) - Indique si Unicode est supporté.
- [license](license.md) - Affiche les informations de licence.
- [maxNumCompThreads](maxNumCompThreads.md) - Nombre maximal de threads de calcul.
- [namelengthmax](namelengthmax.md) - Longueur maximale des noms de variables.
- [nargin](nargin.md) - Nombre d'arguments d'entrée d'une fonction.
- [narginchk](narginchk.md) - Vérifie le nombre d'arguments d'entrée.
- [nargout](nargout.md) - Nombre d'arguments de sortie d'une fonction.
- [nargoutchk](nargoutchk.md) - Vérifie le nombre d'arguments de sortie.
- [nelsonappid](nelsonappid.md) - Identifiant de l'application Nelson.
- [nelsonroot](nelsonroot.md) - Répertoire racine de Nelson.
- [nfilename](nfilename.md) - Nom du fichier courant exécuté.
- [pause](pause.md) - Met l'exécution en pause.
- [prefdir](prefdir.md) - Répertoire des préférences utilisateur.
- [quit](quit.md) - Ferme l'application Nelson.
- [run](run.md) - Exécute un script ou un fichier.
- [sha256](sha256.md) - Calcule le hash SHA-256.
- [version](version.md) - Version de l'environnement Nelson.
