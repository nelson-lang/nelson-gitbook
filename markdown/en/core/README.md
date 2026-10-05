# Core


    
The Core module provides the fundamental building blocks of the Nelson environment.

    
It includes essential services for program execution, environment management, and system interaction.

    
Through this module, users can evaluate code dynamically, manage execution flow, query program state, and access key system information such as versioning, configuration, and licensing.

    
It also offers basic utilities for file identification, checksums, cryptography (the **crypto** namespace: hashes, HMAC, Ed25519 and X25519, Argon2, authenticated encryption and secure random), and terminal capabilities.

    
Together, these features form the foundation upon which all other modules and user-level functionality in Nelson are built.

  

## Functions

- [banner](banner.md) - Shows Nelson banner.
- [crc32](crc32.md) - Get crc32 checksum.
- [crypto.aead.decrypt](crypto_aead_decrypt.md) - Authenticated decryption (XChaCha20-Poly1305).
- [crypto.aead.encrypt](crypto_aead_encrypt.md) - Authenticated encryption (XChaCha20-Poly1305).
- [crypto.argon2](crypto_argon2.md) - Argon2 password hashing and key derivation.
- [crypto.blake2b](crypto_blake2b.md) - Get BLAKE2b hash, optionally keyed.
- [crypto.crc32](crypto_crc32.md) - CRC-32 checksum (crypto namespace alias).
- [crypto.hmac](crypto_hmac.md) - Compute a keyed-hash message authentication code (HMAC).
- [crypto.random](crypto_random.md) - Get cryptographically secure random bytes.
- [crypto.sha256](crypto_sha256.md) - SHA-256 checksum (crypto namespace alias).
- [crypto.sha512](crypto_sha512.md) - Get SHA-512 checksum.
- [crypto.x25519.keypair](crypto_x25519_keypair.md) - Generate an X25519 key pair.
- [crypto.x25519.public](crypto_x25519_public.md) - Derive an X25519 public key.
- [crypto.x25519.shared](crypto_x25519_shared.md) - Compute an X25519 shared secret.
- [crypto.ed25519.sign](ed25519_sign.md) - Compute an Ed25519 signature.
- [crypto.ed25519.verify](ed25519_verify.md) - Verify an Ed25519 signature.
- [eval](eval.md) - Evaluate Nelson code in string.
- [evalc](evalc.md) - Evaluate Nelson code with console capture.
- [evalin](evalin.md) - Evaluate Nelson code in string in an specified scope.
- [execstr](execstr.md) - Execute Nelson code in strings.
- [exist](exist.md) - Check for the existence.
- [exit](exit.md) - Terminate Nelson program (same as quit)
- [feature](feature.md) - undocumented features.
- [inputname](inputname.md) - Get variable name of function input.
- [isstr](isstr.md) - Determine whether input is a character array (deprecated).
- [isunicodesupported](isunicodesupported.md) - Detect whether the current terminal supports Unicode.
- [license](license.md) - Get license information for Nelson.
- [maxNumCompThreads](maxNumCompThreads.md) - Set/Get maximum number of computational threads.
- [mfilename](mfilename.md) - Name of the currently running file.
- [namelengthmax](namelengthmax.md) - Return the maximum variable name length.
- [nargchk](nargchk.md) - Validate number of input arguments.
- [nargin](nargin.md) - Returns the number of input arguments.
- [narginchk](narginchk.md) - Checks the number of input arguments.
- [nargout](nargout.md) - Returns the number of output arguments.
- [nargoutchk](nargoutchk.md) - Checks the number of output arguments.
- [nelsonappid](nelsonappid.md) - Returns nelson application ID
- [nelsonroot](nelsonroot.md) - Returns Nelson's root folder.
- [nfilename](nfilename.md) - Returns the name of the currently executing file.
- [mfilename](nfilename.md) - Returns the name of the currently executing file.
- [pause](pause.md) - Pauses script execution.
- [prefdir](prefdir.md) - Return the preferences directory used by Nelson.
- [quit](quit.md) - Terminate Nelson application
- [run](run.md) - Executes a script file (.m).
- [sha256](sha256.md) - Get sha256 checksum.
- [version](version.md) - Return the version of Nelson.

