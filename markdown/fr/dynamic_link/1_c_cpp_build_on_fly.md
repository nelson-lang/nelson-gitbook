# Compilation C/C++ à la volée

Compiler du code C/C++ à la volée

## Description

<p>Nelson fournit un outil multiplateforme en ligne de commande, écrit en Nelson, pour compiler des modules natifs (addons).</p>

<p>Il simplifie les différences entre plateformes de compilation et facilite la construction d'extensions natives.</p>

## Exemple

```matlab

if ispc() && ~havecompiler()
configuremsvc()
end
C_CONTENT = ["double";
"functionC(double x)";
"{";
"    return x + 8;";
"}"];
DEST_DIR = [tempdir(), 'example_C'];
mkdir(DEST_DIR);
C_DEST_FILE = [tempdir(), 'example_C/demo.c'];
filewrite(C_DEST_FILE, C_CONTENT)

dlgeneratemake(DEST_DIR, 'C_DEMO', {C_DEST_FILE}, {DEST_DIR})
[res, message] = dlmake(DEST_DIR)

lib = dlopen([DEST_DIR, '/C_DEMO', getdynlibext()])
c = dllibinfo(lib)

f = dlsym(lib, 'functionC', 'double', {'double'});
R = dlcall(f, 3) % 8 + 3
dlclose(lib)

```

<img src="build_c_cpp_on_fly.png" align="middle"/>

## Voir aussi

[configuremsvc](../dynamic_link/configuremsvc.md), [dlgeneratemake](../dynamic_link/dlgeneratemake.md), [dlmake](../dynamic_link/dlmake.md), [dlopen](../dynamic_link/dlopen.md), [dllibinfo](../dynamic_link/dllibinfo.md), [dlsym](../dynamic_link/dlsym.md), [dlcall](../dynamic_link/dlcall.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.2.0   | version initiale |

## Auteur

Allan CORNET
