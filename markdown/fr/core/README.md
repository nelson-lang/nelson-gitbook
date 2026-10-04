# Core

Le module core fournit les éléments fondamentaux de l'environnement Nelson.

Il comprend des services essentiels pour l'exécution de programmes, la gestion de l'environnement et l'interaction avec le système.

Grâce à ce module, les utilisateurs peuvent évaluer le code de manière dynamique, gérer le flux d'exécution, interroger l'état du programme et accéder à des informations clés sur le système telles que la version, la configuration et la licence.

Il offre également des utilitaires de base pour l'identification des fichiers, les sommes de contrôle et les capacités du terminal.

Ensemble, ces fonctionnalités forment la base sur laquelle tous les autres modules et fonctionnalités au niveau utilisateur dans Nelson sont construits.

Il fournit aussi l'espace de noms **crypto** : hachages, HMAC, Ed25519 et X25519, Argon2, chiffrement authentifié et aléa sécurisé.

## Functions

- [banner](banner.md) - Affiche la bannière d'accueil de Nelson.
- [crc32](crc32.md) - Calcul du CRC32.
- [crypto.aead.decrypt](crypto_aead_decrypt.md) - Déchiffrement authentifié (XChaCha20-Poly1305).
- [crypto.aead.encrypt](crypto_aead_encrypt.md) - Chiffrement authentifié (XChaCha20-Poly1305).
- [crypto.argon2](crypto_argon2.md) - Hachage de mot de passe et dérivation de clé Argon2.
- [crypto.blake2b](crypto_blake2b.md) - Calcule le hash BLAKE2b, avec clé optionnelle.
- [crypto.crc32](crypto_crc32.md) - Somme de contrôle CRC-32 (alias de l'espace crypto).
- [crypto.hmac](crypto_hmac.md) - Calcule un code d'authentification de message à clé (HMAC).
- [crypto.random](crypto_random.md) - Génère des octets aléatoires cryptographiquement sûrs.
- [crypto.sha256](crypto_sha256.md) - Somme de contrôle SHA-256 (alias de l'espace crypto).
- [crypto.sha512](crypto_sha512.md) - Calcule le hash SHA-512.
- [crypto.x25519.keypair](crypto_x25519_keypair.md) - Génère une paire de clés X25519.
- [crypto.x25519.public](crypto_x25519_public.md) - Dérive une clé publique X25519.
- [crypto.x25519.shared](crypto_x25519_shared.md) - Calcule un secret partagé X25519.
- [crypto.ed25519.sign](ed25519_sign.md) - Calcule une signature Ed25519.
- [crypto.ed25519.verify](ed25519_verify.md) - Vérifie une signature Ed25519.
- [eval](eval.md) - Évalue une expression.
- [evalc](evalc.md) - Évalue une expression et capture la sortie.
- [evalin](evalin.md) - Évalue une expression dans un espace de travail spécifié.
- [execstr](execstr.md) - Exécute une chaîne comme commande.
- [exist](exist.md) - Verifie l'existence d'une variable, fonction ou fichier.
- [exit](exit.md) - Quitte l'environnement Nelson.
- [feature](feature.md) - Interroge les fonctionnalités disponibles.
- [inputname](inputname.md) - Renvoie le nom d'une variable d'entrée d'une fonction.
- [isstr](isstr.md) - Détermine si l'entrée est un tableau de caractères (obsolète).
- [isunicodesupported](isunicodesupported.md) - Indique si Unicode est supporté.
- [license](license.md) - Affiche les informations de licence.
- [maxNumCompThreads](maxNumCompThreads.md) - Nombre maximal de threads de calcul.
- [mfilename](mfilename.md) - Nom du fichier en cours d'execution.
- [namelengthmax](namelengthmax.md) - Longueur maximale des noms de variables.
- [nargchk](nargchk.md) - Valide le nombre d'arguments d'entrée.
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
