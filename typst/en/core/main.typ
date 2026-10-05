#import "nelson_help.typ": *

= Core

The Core module provides the fundamental building blocks of the Nelson environment.

 It includes essential services for program execution, environment management, and system interaction.

 Through this module, users can evaluate code dynamically, manage execution flow, query program state, and access key system information such as versioning, configuration, and licensing.

 It also offers basic utilities for file identification, checksums, cryptography (the #strong[crypto]; namespace: hashes, HMAC, Ed25519 and X25519, Argon2, authenticated encryption and secure random), and terminal capabilities.

 Together, these features form the foundation upon which all other modules and user-level functionality in Nelson are built.

== Functions

- #nlink(<core:banner>)[banner]: Shows Nelson banner.
- #nlink(<core:crc32>)[crc32]: Get crc32 checksum.
- #nlink(<core:crypto_aead_decrypt>)[crypto.aead.decrypt]: Authenticated decryption (XChaCha20-Poly1305).
- #nlink(<core:crypto_aead_encrypt>)[crypto.aead.encrypt]: Authenticated encryption (XChaCha20-Poly1305).
- #nlink(<core:crypto_argon2>)[crypto.argon2]: Argon2 password hashing and key derivation.
- #nlink(<core:crypto_blake2b>)[crypto.blake2b]: Get BLAKE2b hash, optionally keyed.
- #nlink(<core:crypto_crc32>)[crypto.crc32]: CRC-32 checksum (crypto namespace alias).
- #nlink(<core:crypto_hmac>)[crypto.hmac]: Compute a keyed-hash message authentication code (HMAC).
- #nlink(<core:crypto_random>)[crypto.random]: Get cryptographically secure random bytes.
- #nlink(<core:crypto_sha256>)[crypto.sha256]: SHA-256 checksum (crypto namespace alias).
- #nlink(<core:crypto_sha512>)[crypto.sha512]: Get SHA-512 checksum.
- #nlink(<core:crypto_x25519_keypair>)[crypto.x25519.keypair]: Generate an X25519 key pair.
- #nlink(<core:crypto_x25519_public>)[crypto.x25519.public]: Derive an X25519 public key.
- #nlink(<core:crypto_x25519_shared>)[crypto.x25519.shared]: Compute an X25519 shared secret.
- #nlink(<core:ed25519_sign>)[crypto.ed25519.sign]: Compute an Ed25519 signature.
- #nlink(<core:ed25519_verify>)[crypto.ed25519.verify]: Verify an Ed25519 signature.
- #nlink(<core:eval>)[eval]: Evaluate Nelson code in string.
- #nlink(<core:evalc>)[evalc]: Evaluate Nelson code with console capture.
- #nlink(<core:evalin>)[evalin]: Evaluate Nelson code in string in an specified scope.
- #nlink(<core:execstr>)[execstr]: Execute Nelson code in strings.
- #nlink(<core:exist>)[exist]: Check for the existence.
- #nlink(<core:exit>)[exit]: Terminate Nelson program (same as quit)
- #nlink(<core:feature>)[feature]: undocumented features.
- #nlink(<core:inputname>)[inputname]: Get variable name of function input.
- #nlink(<core:isstr>)[isstr]: Determine whether input is a character array (deprecated).
- #nlink(<core:isunicodesupported>)[isunicodesupported]: Detect whether the current terminal supports Unicode.
- #nlink(<core:license>)[license]: Get license information for Nelson.
- #nlink(<core:maxNumCompThreads>)[maxNumCompThreads]: Set\/Get maximum number of computational threads.
- #nlink(<core:mfilename>)[mfilename]: Name of the currently running file.
- #nlink(<core:namelengthmax>)[namelengthmax]: Return the maximum variable name length.
- #nlink(<core:nargchk>)[nargchk]: Validate number of input arguments.
- #nlink(<core:nargin>)[nargin]: Returns the number of input arguments.
- #nlink(<core:narginchk>)[narginchk]: Checks the number of input arguments.
- #nlink(<core:nargout>)[nargout]: Returns the number of output arguments.
- #nlink(<core:nargoutchk>)[nargoutchk]: Checks the number of output arguments.
- #nlink(<core:nelsonappid>)[nelsonappid]: Returns nelson application ID
- #nlink(<core:nelsonroot>)[nelsonroot]: Returns Nelson's root folder.
- #nlink(<core:nfilename>)[nfilename]: Returns the name of the currently executing file.
- #nlink(<core:nfilename>)[mfilename]: Returns the name of the currently executing file.
- #nlink(<core:pause>)[pause]: Pauses script execution.
- #nlink(<core:prefdir>)[prefdir]: Return the preferences directory used by Nelson.
- #nlink(<core:quit>)[quit]: Terminate Nelson application
- #nlink(<core:run>)[run]: Executes a script file (.m).
- #nlink(<core:sha256>)[sha256]: Get sha256 checksum.
- #nlink(<core:version>)[version]: Return the version of Nelson.


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
