

# executable

Executables to start Nelson software.

## Syntax

- nelson-cli arg1 arg1 ... argn
- nelson-adv-cli arg1 arg1 ... argn
- nelson-gui arg1 arg1 ... argn

## Input argument

 - -e "nelson instructions" - If this option is present then Nelson instruction is executed just after startup file execution into Nelson. -e and -f options are mutually exclusive.
 - -f filename - Nelson script file is executed just after startup file execution) into Nelson. -e and -f options are mutually exclusive.
 - -F filename - If this option is present then Nelson script file is executed just after startup file execution) into an existing Nelson's process or creates it.
 - --help - help about program options.
 - --version - Return Nelson version.
 - --open - opens files arg2 ... argN must be valid/existing filenames.
 - --mat - load files arg2 ... argN must be valid/existing .nh5 or .mat filenames.
 - --nostartup - disable the main Nelson script file executed at startup.
 - --nousermodules - disable the load of user's modules. loaded before user's script.
 - --nouserstartup - disable the user script file executed at startup after the main startup file.
 - --language lang - If this option is present it fixes the user language. Currently, lang can be: fr_FR en_US.
 - --quiet - If this option is present no banner and version displayed.

## Description


  <p><b>nelson-cli</b>: basic terminal, no gui (no dependency to gui framework), no history, no completion (iso latin encoding)</p>
  <p><b>nelson-adv-cli</b>: advanced terminal, no graphical console, history, completion available (UTF-16 support)</p>
  <p><b>nelson-gui</b>: graphical console, history, completion available (UTF-16 support)</p>


## Examples

```matlab
nelson-adv-cli -q -e "a = 1 + 2"
```
```matlab
nelson-gui -v
```
```matlab
nelson-gui --help
```

## See also

[startup](startup.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



