#import "nelson_help.typ": *

= crypto.hmac <core:crypto_hmac>

Calcule un code d'authentification de message à clé (HMAC).

== Syntaxe

- #raw("hexa_mac = crypto.hmac(algorithm, key, message)");
- #raw("hexa_mac = crypto.hmac(algorithm, key, filename, '-file')");

== Argument d'entrée

/ algorithm: chaîne : 'sha256' ou 'sha512' (insensible à la casse, 'sha-256' et 'sha-512' acceptés).
/ key: vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) : clé secrète, de longueur quelconque.
/ message: vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) : contenu authentifié.
/ filename: chaîne : fichier existant dont les octets bruts sont authentifiés.
/ '-file': le troisième argument est un nom de fichier.

== Argument de sortie

/ hexa\_mac: vecteur de caractères : 64 (sha256) ou 128 (sha512) caractères hexadécimaux minuscules.

== Description

#strong[crypto.hmac]; calcule un HMAC (RFC 2104) avec SHA-256 ou SHA-512 sur les octets exacts d'un message, par exemple pour authentifier une requête d'API ou la charge utile d'un webhook.

 Une clé texte est utilisée via ses octets UTF-8 ; passez un vecteur uint8 pour une clé binaire (une clé hexadécimale doit d'abord être convertie). Les clés plus longues que le bloc du hachage sont d'abord hachées, comme l'exige la RFC.

 Comparez le résultat à la valeur attendue avec une comparaison en temps constant lorsque la vérification protège une décision de sécurité.


== Fonction(s) utilisée(s)

Monocypher, picoSHA2

== Bibliographie

https:\/\/www.rfc-editor.org\/rfc\/rfc2104, https:\/\/www.rfc-editor.org\/rfc\/rfc4231

== Exemples

cas de test 2 de la RFC 4231

``````matlab
R = crypto.hmac('sha256', 'Jefe', 'what do ya want for nothing?')
R = crypto.hmac('sha512', 'Jefe', 'what do ya want for nothing?')
``````

clé binaire et message dans un fichier

``````matlab
key = uint8(repmat(11, 1, 20));
filename = [tempdir(), 'hmac_example.txt'];
filewrite(filename, 'Hi There');
R = crypto.hmac('sha256', key, filename, '-file')
``````


== Voir aussi

#nlink(<core:sha256>)[sha256];, #nlink(<core:crypto_sha512>)[crypto.sha512];, #nlink(<core:ed25519_sign>)[crypto.ed25519.sign];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
