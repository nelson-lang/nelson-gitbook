# executable

Executables to start Nelson software.

## 📝 Syntax

- nelson arg1 ... argn
- nelson-cli arg1 ... argn
- nelson-adv-cli arg1 ... argn
- nelson-gui arg1 ... argn

## 📥 Input argument

- -cli - equivalent to call 'nelson-cli'.
- -adv-cli - equivalent to call 'nelson-adv-cli'.
- -gui - equivalent to call 'nelson-gui'.
- -e "nelson instructions" - If this option is present then Nelson instruction is executed just after startup file execution into Nelson. -e and -f options are mutually exclusive.
- -f filename - Nelson script file is executed just after startup file execution) into Nelson. -e and -f options are mutually exclusive.
- -F filename - If this option is present then Nelson script file is executed just after startup file execution) into an existing Nelson's process or creates it.
- --help - help about program options.
- --version - Return Nelson version.
- --vscode - enable Visual Studio Code mode.
- --open - opens files arg2 ... argN must be valid/existing filenames.
- --mat - load files arg2 ... argN must be valid/existing .nh5 or .mat filenames.
- --nostartup - disable the main Nelson script file executed at startup.
- --nousermodules - disable the load of user's modules. loaded before user's script.
- --nouserstartup - disable the user script file executed at startup after the main startup file.
- --minimize - minimize main GUI Windows (GUI mode only).
- --noipc - disable interprocess features (files association, ipc builtin).
- --withoutfilewatcher - disable file watcher feature for this session.
- --noaudio - disable audio module.
- --without_python - disable python_engine module.
- --language lang - If this option is present it fixes the user language. Currently, lang can be: fr_FR en_US.
- --quiet - If this option is present no banner and version displayed.

## 📄 Description

<b>nelson-cli</b>: basic terminal, no gui (no dependency to gui framework), no history, no completion (iso latin encoding)

<b>nelson-adv-cli</b>: advanced terminal, no graphical console, history, completion available (UTF-16 support)

<b>nelson-gui</b>: graphical console, history, completion available (UTF-16 support)

If you have installed Nelson on Windows, the <b>NELSON_RUNTIME_PATH</b> environment variable will be defined.

It allows to call easily Nelson <b>"%NELSON_RUNTIME_PATH%\\nelson.bat"</b>.

## 💡 Examples

```matlab
nelson-adv-cli -q -e "a = 1 + 2"
```

```matlab
nelson-gui -v
```

```matlab
nelson-gui --help
```

## 🔗 See also

[startup](../engine/startup.md).

## 🕔 History

| Version | 📄 Description                                       |
| ------- | ---------------------------------------------------- |
| 1.0.0   | initial version                                      |
| 1.4.0   | --without_python added                               |
| 1.11.0  | About NELSON_RUNTIME_PATH environment variable added |
| 1.11.0  | --vsocde argument                                    |

<!--
## 👤 Author

Allan CORNET
-->
