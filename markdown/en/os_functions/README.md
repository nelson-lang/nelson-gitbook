# OS functions

The OS Functions module provides tools for interacting with the operating system in Nelson.

It includes functions for querying system information, managing environment variables, executing shell commands, generating GUIDs, and performing platform-specific operations.

This module lets Nelson scripts interact with the operating system on Windows, macOS, and Linux/Unix platforms.

## Functions

- [cmdsep](cmdsep.md) - Command separator for current operating system.
- [computer](computer.md) - System information.
- [createGUID](createGUID.md) - Creates a GUID.
- [dos](dos.md) - Execute a command with the operating system shell.
- [getenv](getenv.md) - Get the value of an environment variable.
- [hostname](hostname.md) - get host name of this computer.
- [isenv](isenv.md) - Determine if an environment variable exists.
- [ismac](ismac.md) - Checks if version is for MacOS platform.
- [ispc](ispc.md) - Checks if version is for Windows platform.
- [isunix](isunix.md) - Checks if version is for GNU Linux or Unix platform.
- [iswasm](iswasm.md) - Checks if version is for WebAssembly platform.
- [loadenv](loadenv.md) - Load environment variables defined in .env or regular text files.
- [searchenv](searchenv.md) - Searches for a file using environment paths.
- [setenv](setenv.md) - Set or remove an environment variable.
- [system](system.md) - Shell command execution.
- [dos](system.md) - Shell command execution.
- [unix](system.md) - Shell command execution.
- [unix](unix.md) - Execute commands with the operating system shell.
- [unsetenv](unsetenv.md) - Remove an environment variable.
- [username](username.md) - get user name currently used.
- [winopen](winopen.md) - Open file in appropriate application (Windows only).
- [winqueryreg](winqueryreg.md) - Read the Windows registry (Windows only).
