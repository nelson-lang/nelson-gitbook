# Core

The Core module provides the fundamental building blocks of the Nelson environment.

It includes essential services for program execution, environment management, and system interaction.

Through this module, users can evaluate code dynamically, manage execution flow, query program state, and access key system information such as versioning, configuration, and licensing.

It also offers basic utilities for file identification, checksums, and terminal capabilities.

Together, these features form the foundation upon which all other modules and user-level functionality in Nelson are built.

## Functions

- [banner](banner.md) - Shows Nelson banner.
- [crc32](crc32.md) - Get crc32 checksum.
- [eval](eval.md) - Evaluate Nelson code in string.
- [evalc](evalc.md) - Evaluate Nelson code with console capture.
- [evalin](evalin.md) - Evaluate Nelson code in string in an specified scope.
- [execstr](execstr.md) - Execute Nelson code in strings.
- [exist](exist.md) - Check for the existence.
- [exit](exit.md) - Terminate Nelson program (same as quit)
- [feature](feature.md) - undocumented features.
- [inputname](inputname.md) - Get variable name of function input.
- [isunicodesupported](isunicodesupported.md) - Detect whether the current terminal supports Unicode.
- [license](license.md) - Get license information for Nelson.
- [maxNumCompThreads](maxNumCompThreads.md) - Set/Get maximum number of computional threads.
- [namelengthmax](namelengthmax.md) - Return the maximum variable name length.
- [nargin](nargin.md) - Returns the number of input arguments.
- [narginchk](narginchk.md) - Checks the number of input arguments.
- [nargout](nargout.md) - Returns the number of output arguments.
- [nargoutchk](nargoutchk.md) - Checks the number of output arguments.
- [nelsonappid](nelsonappid.md) - Returns nelson application ID
- [nelsonroot](nelsonroot.md) - Returns Nelson's root folder.
- [nfilename](nfilename.md) - Returns the name of the currently executing file.
- [mfilename](nfilename.md) - Returns the name of the currently executing file.
- [pause ](pause.md) - Pauses script execution.
- [prefdir](prefdir.md) - Return the preferences directory used by Nelson.
- [quit](quit.md) - Terminate Nelson application
- [run](run.md) - Executes a script file (.m).
- [sha256](sha256.md) - Get sha256 checksum.
- [version](version.md) - Return the version of Nelson.
