# OS functions

The OS Functions module provides tools for interacting with the operating system in Nelson.

It includes functions for querying system information, managing environment variables, executing shell commands, generating GUIDs, and performing platform-specific operations.

This module enables seamless integration of Nelson scripts with the underlying operating system across Windows, macOS, and Linux/Unix platforms.

## Functions

- [cmdsep](cmdsep.md) - Command separator for current operating system.
- [computer](computer.md) - System information.
- [createGUID](createGUID.md) - Creates a GUID.
- [getenv](getenv.md) - Get the value of an environment variable.
- [hostname](hostname.md) - get host name of this computer.
- [ismac](ismac.md) - Checks if version is for MacOS platform.
- [ispc](ispc.md) - Checks if version is for Windows platform.
- [isunix](isunix.md) - Checks if version is for GNU Linux or Unix platform.
- [loadenv](loadenv.md) - Load environment variables defined in .env or regular text files.
- [searchenv](searchenv.md) - Searches for a file using environment paths.
- [setenv](setenv.md) - Set the value of an environment variable.
- [system](system.md) - Shell command execution.
- [dos](system.md) - Shell command execution.
- [unix](system.md) - Shell command execution.
- [username](username.md) - get user name currently used.
- [winopen](winopen.md) - Open file in appropriate application (Windows only).
- [winqueryreg](winqueryreg.md) - Read the Windows registry (Windows only).
