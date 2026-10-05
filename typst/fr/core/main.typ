#import "nelson_help.typ": *

= Core

Le module core fournit les éléments fondamentaux de l'environnement Nelson.

 Il comprend des services essentiels pour l'exécution de programmes, la gestion de l'environnement et l'interaction avec le système.

 Grâce à ce module, les utilisateurs peuvent évaluer le code de manière dynamique, gérer le flux d'exécution, interroger l'état du programme et accéder à des informations clés sur le système telles que la version, la configuration et la licence.

 Il offre également des utilitaires de base pour l'identification des fichiers, les sommes de contrôle et les capacités du terminal.

 Ensemble, ces fonctionnalités forment la base sur laquelle tous les autres modules et fonctionnalités au niveau utilisateur dans Nelson sont construits.

 Il fournit aussi l'espace de noms #strong[crypto]; : hachages, HMAC, Ed25519 et X25519, Argon2, chiffrement authentifié et aléa sécurisé.

== Functions

- #nlink(<core:banner>)[banner]: Affiche la bannière d'accueil de Nelson.
- #nlink(<core:crc32>)[crc32]: Calcul du CRC32.
- #nlink(<core:crypto_aead_decrypt>)[crypto.aead.decrypt]: Déchiffrement authentifié (XChaCha20-Poly1305).
- #nlink(<core:crypto_aead_encrypt>)[crypto.aead.encrypt]: Chiffrement authentifié (XChaCha20-Poly1305).
- #nlink(<core:crypto_argon2>)[crypto.argon2]: Hachage de mot de passe et dérivation de clé Argon2.
- #nlink(<core:crypto_blake2b>)[crypto.blake2b]: Calcule le hash BLAKE2b, avec clé optionnelle.
- #nlink(<core:crypto_crc32>)[crypto.crc32]: Somme de contrôle CRC-32 (alias de l'espace crypto).
- #nlink(<core:crypto_hmac>)[crypto.hmac]: Calcule un code d'authentification de message à clé (HMAC).
- #nlink(<core:crypto_random>)[crypto.random]: Génère des octets aléatoires cryptographiquement sûrs.
- #nlink(<core:crypto_sha256>)[crypto.sha256]: Somme de contrôle SHA-256 (alias de l'espace crypto).
- #nlink(<core:crypto_sha512>)[crypto.sha512]: Calcule le hash SHA-512.
- #nlink(<core:crypto_x25519_keypair>)[crypto.x25519.keypair]: Génère une paire de clés X25519.
- #nlink(<core:crypto_x25519_public>)[crypto.x25519.public]: Dérive une clé publique X25519.
- #nlink(<core:crypto_x25519_shared>)[crypto.x25519.shared]: Calcule un secret partagé X25519.
- #nlink(<core:ed25519_sign>)[crypto.ed25519.sign]: Calcule une signature Ed25519.
- #nlink(<core:ed25519_verify>)[crypto.ed25519.verify]: Vérifie une signature Ed25519.
- #nlink(<core:eval>)[eval]: Évalue une expression.
- #nlink(<core:evalc>)[evalc]: Évalue une expression et capture la sortie.
- #nlink(<core:evalin>)[evalin]: Évalue une expression dans un espace de travail spécifié.
- #nlink(<core:execstr>)[execstr]: Exécute une chaîne comme commande.
- #nlink(<core:exist>)[exist]: Verifie l'existence d'une variable, fonction ou fichier.
- #nlink(<core:exit>)[exit]: Quitte l'environnement Nelson.
- #nlink(<core:feature>)[feature]: Interroge les fonctionnalités disponibles.
- #nlink(<core:inputname>)[inputname]: Renvoie le nom d'une variable d'entrée d'une fonction.
- #nlink(<core:isstr>)[isstr]: Détermine si l'entrée est un tableau de caractères (obsolète).
- #nlink(<core:isunicodesupported>)[isunicodesupported]: Indique si Unicode est supporté.
- #nlink(<core:license>)[license]: Affiche les informations de licence.
- #nlink(<core:maxNumCompThreads>)[maxNumCompThreads]: Nombre maximal de threads de calcul.
- #nlink(<core:mfilename>)[mfilename]: Nom du fichier en cours d'execution.
- #nlink(<core:namelengthmax>)[namelengthmax]: Longueur maximale des noms de variables.
- #nlink(<core:nargchk>)[nargchk]: Valide le nombre d'arguments d'entrée.
- #nlink(<core:nargin>)[nargin]: Nombre d'arguments d'entrée d'une fonction.
- #nlink(<core:narginchk>)[narginchk]: Vérifie le nombre d'arguments d'entrée.
- #nlink(<core:nargout>)[nargout]: Nombre d'arguments de sortie d'une fonction.
- #nlink(<core:nargoutchk>)[nargoutchk]: Vérifie le nombre d'arguments de sortie.
- #nlink(<core:nelsonappid>)[nelsonappid]: Identifiant de l'application Nelson.
- #nlink(<core:nelsonroot>)[nelsonroot]: Répertoire racine de Nelson.
- #nlink(<core:nfilename>)[nfilename]: Nom du fichier courant exécuté.
- #nlink(<core:pause>)[pause]: Met l'exécution en pause.
- #nlink(<core:prefdir>)[prefdir]: Répertoire des préférences utilisateur.
- #nlink(<core:quit>)[quit]: Ferme l'application Nelson.
- #nlink(<core:run>)[run]: Exécute un script ou un fichier.
- #nlink(<core:sha256>)[sha256]: Calcule le hash SHA-256.
- #nlink(<core:version>)[version]: Version de l'environnement Nelson.


#nested[
#pagebreak(weak: true)
#include "banner.typ"
#pagebreak(weak: true)
#include "crc32.typ"
#pagebreak(weak: true)
#include "crypto_aead_decrypt.typ"
#pagebreak(weak: true)
#include "crypto_aead_encrypt.typ"
#pagebreak(weak: true)
#include "crypto_argon2.typ"
#pagebreak(weak: true)
#include "crypto_blake2b.typ"
#pagebreak(weak: true)
#include "crypto_crc32.typ"
#pagebreak(weak: true)
#include "crypto_hmac.typ"
#pagebreak(weak: true)
#include "crypto_random.typ"
#pagebreak(weak: true)
#include "crypto_sha256.typ"
#pagebreak(weak: true)
#include "crypto_sha512.typ"
#pagebreak(weak: true)
#include "crypto_x25519_keypair.typ"
#pagebreak(weak: true)
#include "crypto_x25519_public.typ"
#pagebreak(weak: true)
#include "crypto_x25519_shared.typ"
#pagebreak(weak: true)
#include "ed25519_sign.typ"
#pagebreak(weak: true)
#include "ed25519_verify.typ"
#pagebreak(weak: true)
#include "eval.typ"
#pagebreak(weak: true)
#include "evalc.typ"
#pagebreak(weak: true)
#include "evalin.typ"
#pagebreak(weak: true)
#include "execstr.typ"
#pagebreak(weak: true)
#include "exist.typ"
#pagebreak(weak: true)
#include "exit.typ"
#pagebreak(weak: true)
#include "feature.typ"
#pagebreak(weak: true)
#include "inputname.typ"
#pagebreak(weak: true)
#include "isstr.typ"
#pagebreak(weak: true)
#include "isunicodesupported.typ"
#pagebreak(weak: true)
#include "license.typ"
#pagebreak(weak: true)
#include "maxNumCompThreads.typ"
#pagebreak(weak: true)
#include "mfilename.typ"
#pagebreak(weak: true)
#include "namelengthmax.typ"
#pagebreak(weak: true)
#include "nargchk.typ"
#pagebreak(weak: true)
#include "nargin.typ"
#pagebreak(weak: true)
#include "narginchk.typ"
#pagebreak(weak: true)
#include "nargout.typ"
#pagebreak(weak: true)
#include "nargoutchk.typ"
#pagebreak(weak: true)
#include "nelsonappid.typ"
#pagebreak(weak: true)
#include "nelsonroot.typ"
#pagebreak(weak: true)
#include "nfilename.typ"
#pagebreak(weak: true)
#include "pause.typ"
#pagebreak(weak: true)
#include "prefdir.typ"
#pagebreak(weak: true)
#include "quit.typ"
#pagebreak(weak: true)
#include "run.typ"
#pagebreak(weak: true)
#include "sha256.typ"
#pagebreak(weak: true)
#include "version.typ"
]
