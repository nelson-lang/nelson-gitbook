# Engine

The Engine module manages the execution environment of Nelson itself.

It provides mechanisms to handle program startup and shutdown behavior, command-line integration, and runtime modes.

This includes support for user-defined initialization and termination scripts, platform-specific system requirements, and interpreter directives for cross-platform script execution.

It serves as the core interface between Nelson and the underlying operating system, ensuring flexible configuration and smooth control over how the software is launched and operated.

## Functions

- [argv](argv.md) - Nelson command line arguments.
- [executable](executable.md) - Executables to start Nelson software.
- [finish](finish.md) - User-defined termination script for Nelson.
- [getnelsonmode](getnelsonmode.md) - Returns current Nelson mode.
- [isquietmode](isquietmode.md) - Return true if Nelson started with --quiet option.
- [System Requirements](nelson_system_requirement.md) - System Requirements by platforms.
- [#! shebang](shebang.md) - On Unix, Linux operating systems, Parses the rest of the script's initial line as an interpreter directive.
- [startup](startup.md) - User-defined startup script for Nelson.
