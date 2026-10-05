#import "nelson_help.typ": *

= Modules manager

The Modules Manager in Nelson provides the infrastructure to extend and manage the environment at runtime.

 It allows modules to be dynamically added, removed, and queried, making the system flexible and adaptable to different workflows.

 With support for both internal and external modules, the manager handles module metadata, paths, and versioning.

 It also provides utilities for organizing user-defined toolboxes, managing gateways, and ensuring that dependencies are properly loaded.

 This framework simplifies module distribution, integration, and maintenance, forming the backbone of Nelson’s modular architecture.

== Functions

- #nlink(<modules_manager:addgateway>)[addgateway]: Adds dynamically builtin at runtime.
- #nlink(<modules_manager:addmodule>)[addmodule]: Add module to Nelson.
- #nlink(<modules_manager:deploytool>)[deploytool]: Open the standalone application project editor.
- #nlink(<modules_manager:deploytool>)[deploytool]: Open the standalone application project editor.
- #nlink(<modules_manager:gatewayinfo>)[gatewayinfo]: Returns information about an gateway.
- #nlink(<modules_manager:getmodules>)[getmodules]: Returns list of modules loaded in Nelson.
- #nlink(<modules_manager:ismodule>)[ismodule]: Checks if a module is loaded.
- #nlink(<modules_manager:module-json>)[module.json]: module.json description
- #nlink(<modules_manager:modulepath>)[modulepath]: Returns path of a module.
- #nlink(<modules_manager:ncc>)[ncc]: Package a Nelson application as a native executable.
- #nlink(<modules_manager:nmm>)[nmm]: Nelson Modules Manager.
- #nlink(<modules_manager:nmm_build_help>)[nmm\_build\_help]: helper's function to build help of an external module
- #nlink(<modules_manager:nmm_build_loader>)[nmm\_build\_loader]: helper's function to build main loader.m of an external module
- #nlink(<modules_manager:nmm_init>)[nmm init]: Generate a valid module.json manifest.
- #nlink(<modules_manager:removegateway>)[removegateway]: Removes dynamically builtin at runtime.
- #nlink(<modules_manager:removemodule>)[removemodule]: remove a module from Nelson.
- #nlink(<modules_manager:requiremodule>)[requiremodule]: Returns an error if module is not loaded in Nelson.
- #nlink(<modules_manager:semver>)[semver]: semantic versioner.
- #nlink(<modules_manager:standaloneApplicationCompiler>)[standaloneApplicationCompiler]: Open the standalone application project editor.
- #nlink(<modules_manager:standaloneApplicationCompiler>)[standaloneApplicationCompiler]: Open the standalone application project editor.
- #nlink(<modules_manager:toolboxdir>)[toolboxdir]: Returns path of a module.
- #nlink(<modules_manager:usermodulesdir>)[usermodulesdir]: Returns path where external modules are saved.


#nested[
#pagebreak(weak: true)
#include "addgateway.typ"
#pagebreak(weak: true)
#include "addmodule.typ"
#pagebreak(weak: true)
#include "deploytool.typ"
#pagebreak(weak: true)
#include "gatewayinfo.typ"
#pagebreak(weak: true)
#include "getmodules.typ"
#pagebreak(weak: true)
#include "ismodule.typ"
#pagebreak(weak: true)
#include "module-json.typ"
#pagebreak(weak: true)
#include "modulepath.typ"
#pagebreak(weak: true)
#include "ncc.typ"
#pagebreak(weak: true)
#include "nmm.typ"
#pagebreak(weak: true)
#include "nmm_build_help.typ"
#pagebreak(weak: true)
#include "nmm_build_loader.typ"
#pagebreak(weak: true)
#include "nmm_init.typ"
#pagebreak(weak: true)
#include "removegateway.typ"
#pagebreak(weak: true)
#include "removemodule.typ"
#pagebreak(weak: true)
#include "requiremodule.typ"
#pagebreak(weak: true)
#include "semver.typ"
#pagebreak(weak: true)
#include "standaloneApplicationCompiler.typ"
#pagebreak(weak: true)
#include "toolboxdir.typ"
#pagebreak(weak: true)
#include "usermodulesdir.typ"
]
