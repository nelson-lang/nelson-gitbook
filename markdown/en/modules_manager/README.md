# Modules manager

The Modules Manager in Nelson provides the infrastructure to extend and manage the environment at runtime.

It allows modules to be dynamically added, removed, and queried, making the system flexible and adaptable to different workflows.

With support for both internal and external modules, the manager handles module metadata, paths, and versioning.

It also provides utilities for organizing user-defined toolboxes, managing gateways, and ensuring that dependencies are properly loaded.

This framework simplifies module distribution, integration, and maintenance, forming the backbone of Nelson’s modular architecture.

## Functions

- [addgateway](addgateway.md) - Adds dynamically builtin at runtime.
- [addmodule](addmodule.md) - Add module to Nelson.
- [gatewayinfo](gatewayinfo.md) - Returns information about an gateway.
- [getmodules](getmodules.md) - Returns list of modules loaded in Nelson.
- [ismodule](ismodule.md) - Checks if a module is loaded.
- [module.json](module-json.md) - module.json description
- [modulepath](modulepath.md) - Returns path of a module.
- [nmm](nmm.md) - Nelson Modules Manager.
- [nmm_build_help](nmm_build_help.md) - helper's function to build help of an external module
- [nmm_build_loader](nmm_build_loader.md) - helper's function to build main loader.m of an external module
- [removegateway](removegateway.md) - Removes dynamically builtin at runtime.
- [removemodule](removemodule.md) - remove a module from Nelson.
- [requiremodule](requiremodule.md) - Returns an error if module is not loaded in Nelson.
- [semver](semver.md) - semantic versioner.
- [toolboxdir](toolboxdir.md) - Returns path of a module.
- [usermodulesdir](usermodulesdir.md) - Returns path where external modules are saved.
