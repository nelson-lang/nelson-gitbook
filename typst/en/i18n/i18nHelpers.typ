#import "nelson_help.typ": *

= i18nHelpers <i18n:i18nHelpers>

Internationalization (i18n) utility functions

== Syntax

- #raw("i18nHelpers('extractUI', sourceRoot, jsonFile)");
- #raw("i18nHelpers('extractErrors', sourceRoot, jsonFile)");
- #raw("i18nHelpers('merge', jsonFile1, jsonFile2)");
- #raw("i18nHelpers('sort', jsonFileA, jsonFileB)");
- #raw("i18nHelpers('register', moduleName, moduleRoot)");
- #raw("i18nHelpers('unregister', moduleName)");

== Input argument

/ sourceRoot: String: Path to the source tree to scan (C\/C++ and .m files, tests directories excluded)
/ jsonFile: String: Path to JSON translation file destination
/ jsonFile1: String: Path to the source JSON translation file
/ jsonFile2: String: Path to the destination JSON translation file
/ jsonFileA: String: Path to the source JSON file to sort
/ jsonFileB: String: Path to the sorted JSON file
/ moduleName: String: The module name whose locale catalog is registered or unregistered
/ moduleRoot: String: The module root directory (typically modulepath(moduleName)), holding locale\/\<moduleName\>-ui-\<locale\>.json and locale\/\<moduleName\>-errors-\<locale\>.json

== Output argument

/ status: Logical: for 'register'\/'unregister', true on success. Requesting this output makes the call report a status instead of raising, so no try\/catch is needed.
/ message: Character vector: for 'register'\/'unregister' with two outputs, an error message when status is false, empty otherwise.

== Description

#strong[i18nHelpers]; provides essential utility functions for managing internationalization files. The main functions include:

 -#strong['extractUI'];: Scans the sources under#raw("sourceRoot");for translatable user-interface text and writes the text-keyed catalog to#raw("jsonFile");. The extraction is native (no gettext tooling involved).

 -#strong['extractErrors'];: Scans the sources under#raw("sourceRoot");for identifier-keyed error\/warning templates and writes the errors catalog to#raw("jsonFile");.

 -#strong['merge'];: Merges two JSON translation files. The entries from#raw("jsonFile1");are added to#raw("jsonFile2");, and entries exclusive to#raw("jsonFile2");are removed.

 -#strong['sort'];: Sorts and organizes entries in a JSON translation file.#raw("jsonFileA");and#raw("jsonFileB");may refer to the same file if in-place sorting is desired.

 -#strong['register'];: Registers an external module's locale catalog at runtime, so its#raw("_()");source strings and its#raw("<moduleName>:*");error templates get localized. The module ships#raw("locale/<moduleName>-ui-<locale>.json");and#raw("locale/<moduleName>-errors-<locale>.json");; the catalog for the current locale is merged immediately and re-merged on every locale change. It is an opt-in call, typically placed in the module's#raw("etc/startup.m");.

 #strong[External-module error identifier convention.]; An error or warning raised by an external module must use the module's own namespace as the identifier prefix, i.e.#raw("error('<moduleName>:<mnemonic>', 'literal English template', args...)");. Only messages that are generic and reusable across Nelson keep the#raw("Nelson:");prefix (these belong to the core catalog, not the module). For a message to be extracted and localized:

 - the identifier must start with#raw("<moduleName>:");(the same name used in#raw("module.json");and in the catalog file prefix);

 - the template must be a single string literal; a dynamic part is a#raw("printf");-style placeholder filled by trailing arguments, e.g.#raw("error('mymod:invalidInput', '%s must be a scalar logical.', name)");rather than#raw("error('mymod:invalidInput', [name, ' must be a scalar logical.'])");;

 - each identifier maps to exactly one template (an identifier reused with several different messages is dropped as overloaded). At runtime the inline literal is replaced by the localized template only when it matches the catalog exactly, then the arguments are applied. Generate the catalogs with#raw("nmm('i18n', moduleRoot)");(or#raw("ngen.i18n");).

 -#strong['unregister'];: Drops a previously registered module catalog and rebuilds the in-memory catalogs, typically from the module's#raw("etc/finish.m");.

 This utility is intended for internal use and may be updated over time.


== See also

#nlink(<localization:setlanguage>)[setlanguage];, #nlink(<localization:getlanguage>)[getlanguage];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [Initial version],
  [2.0.0], [native source extraction (extractUI, extractErrors); convert removed with the gettext tooling],
)

// Author: Allan CORNET
