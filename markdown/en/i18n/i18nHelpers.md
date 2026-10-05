# i18nHelpers

Internationalization (i18n) utility functions

## 📝 Syntax

- i18nHelpers('extractUI', sourceRoot, jsonFile)
- i18nHelpers('extractErrors', sourceRoot, jsonFile)
- i18nHelpers('merge', jsonFile1, jsonFile2)
- i18nHelpers('sort', jsonFileA, jsonFileB)
- i18nHelpers('register', moduleName, moduleRoot)
- i18nHelpers('unregister', moduleName)

## 📥 Input argument

- sourceRoot - String: Path to the source tree to scan (C/C++ and .m files, tests directories excluded)
- jsonFile - String: Path to JSON translation file destination
- jsonFile1 - String: Path to the source JSON translation file
- jsonFile2 - String: Path to the destination JSON translation file
- jsonFileA - String: Path to the source JSON file to sort
- jsonFileB - String: Path to the sorted JSON file
- moduleName - String: The module name whose locale catalog is registered or unregistered
- moduleRoot - String: The module root directory (typically modulepath(moduleName)), holding locale/<moduleName>-ui-<locale>.json and locale/<moduleName>-errors-<locale>.json

## 📤 Output argument

- status - Logical: for 'register'/'unregister', true on success. Requesting this output makes the call report a status instead of raising, so no try/catch is needed.
- message - Character vector: for 'register'/'unregister' with two outputs, an error message when status is false, empty otherwise.

## 📄 Description


<b>i18nHelpers</b> provides essential utility functions for managing internationalization files. The main functions include: 

-<b>
        'extractUI'
      </b>: Scans the sources under<code>sourceRoot</code>for translatable user-interface text and writes the text-keyed catalog to<code>jsonFile</code>. The extraction is native (no gettext tooling involved). 

-<b>
        'extractErrors'
      </b>: Scans the sources under<code>sourceRoot</code>for identifier-keyed error/warning templates and writes the errors catalog to<code>jsonFile</code>. 

-<b>
        'merge'
      </b>: Merges two JSON translation files. The entries from<code>jsonFile1</code>are added to<code>jsonFile2</code>, and entries exclusive to<code>jsonFile2</code>are removed. 

-<b>
        'sort'
      </b>: Sorts and organizes entries in a JSON translation file.<code>jsonFileA</code>and<code>jsonFileB</code>may refer to the same file if in-place sorting is desired. 

-<b>
        'register'
      </b>: Registers an external module's locale catalog at runtime, so its<code>_()</code>source strings and its<code><moduleName>:*</code>error templates get localized. The module ships<code>locale/<moduleName>-ui-<locale>.json</code>and<code>locale/<moduleName>-errors-<locale>.json</code>; the catalog for the current locale is merged immediately and re-merged on every locale change. It is an opt-in call, typically placed in the module's<code>etc/startup.m</code>. 

<b>External-module error identifier convention.</b> An error or warning raised by an external module must use the module's own namespace as the identifier prefix, i.e.<code>error('<moduleName>:<mnemonic>', 'literal English template', args...)</code>. Only messages that are generic and reusable across Nelson keep the<code>Nelson:</code>prefix (these belong to the core catalog, not the module). For a message to be extracted and localized: 

- the identifier must start with<code><moduleName>:</code>(the same name used in<code>module.json</code>and in the catalog file prefix); 

- the template must be a single string literal; a dynamic part is a<code>printf</code>-style placeholder filled by trailing arguments, e.g.<code>error('mymod:invalidInput', '%s must be a scalar logical.', name)</code>rather than<code>error('mymod:invalidInput', [name, ' must be a scalar logical.'])</code>; 

- each identifier maps to exactly one template (an identifier reused with several different messages is dropped as overloaded). At runtime the inline literal is replaced by the localized template only when it matches the catalog exactly, then the arguments are applied. Generate the catalogs with<code>nmm('i18n', moduleRoot)</code>(or<code>ngen.i18n</code>). 

-<b>
        'unregister'
      </b>: Drops a previously registered module catalog and rebuilds the in-memory catalogs, typically from the module's<code>etc/finish.m</code>. 

This utility is intended for internal use and may be updated over time.


## 🔗 See also

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.10.0   | Initial version |
| 2.0.0   | native source extraction (extractUI, extractErrors); convert removed with the gettext tooling |

<!--
## 👤 Author

Allan CORNET
-->
