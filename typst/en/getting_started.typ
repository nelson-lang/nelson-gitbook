#import "nelson_help.typ": *


= Getting Started with Nelson <main:getting_started>


Nelson is an open-source numerical computing language. Its main data type is the array: vectors, matrices and N-dimensional arrays. You can use it as an interactive calculator, write scripts and functions, draw plots, and build larger programs.

This guide takes you from installation to your first script. Every example can be typed at the prompt or saved in a #raw(".m"); file. Reading it takes about thirty minutes.

---

== 1. Installation


Pick the method that matches your system:

- #strong[Windows];: download the installer from the #link("https://github.com/nelson-lang/nelson/releases")[releases page];, or run #raw("winget install NelsonNumericalSoftware.Nelson");. Chocolatey and Scoop packages are also available.
- #strong[Linux];: install from the #link("https://snapcraft.io/nelson")[Snap Store]; or from #link("https://flathub.org/apps/io.github.nelson_lang.Nelson")[Flathub];.
- #strong[Docker];: #raw("docker pull nelsonsoftware/nelson");.
- #strong[Browser, no installation];: #link("https://www.npmjs.com/package/nelson-cloud")[Nelson Cloud]; runs Nelson in a web page.

Building from source is described in the #raw("BUILDING.md"); file of the repository.

== 2. Starting Nelson


The #raw("nelson"); command accepts a mode option:

``````bash
nelson              # desktop with command window, editor and workspace browser
nelson -cli         # text mode in the terminal
nelson -adv-cli     # text mode with graphics support
nelson-webview      # the desktop in a native web window
nelson-webview --web   # the same desktop served over HTTP for a browser
``````


Two options are useful for automation:

``````bash
nelson -cli -e "disp(2 + 2)"      # run one command and show the result
nelson -cli -f my_script.m        # run a file, then stay at the prompt
``````


To leave Nelson, type #raw("quit"); or #raw("exit");.

== 3. First commands


=== A calculator


Type an expression at the prompt and press Enter:

``````matlab
1 + 2 * 3
sin(pi / 4)
2^10
``````


When you do not assign the result, it is stored in the variable #raw("ans");.

=== Variables


The #raw("="); sign creates a variable. Nelson chooses the type and size for you.

``````matlab
x = 2 * pi
name = 'Ada'
ok = true
``````


A statement that ends with #raw(";"); is executed without printing its result:

``````matlab
t = 5;
``````


=== Working at the prompt


- The up and down arrow keys recall previous commands.
- #raw("clc"); clears the screen.
- #raw("who"); and #raw("whos"); list the variables of the workspace. #raw("whos"); also shows size and type.
- #raw("clear"); removes all variables. #raw("clear x"); removes only #raw("x");.
- #raw("format long"); shows more digits. #raw("format short"); restores the default.

=== Getting help


``````matlab
help sin        % short text at the prompt
doc sin         % full page in the help browser
doc             % open the help browser
which sin       % where a function is defined
``````


== 4. Vectors and matrices


=== Creating arrays


Square brackets build arrays. A space or a comma separates columns, a semicolon separates rows.

``````matlab
v = [1 4 7 10]          % row vector
w = [1; 4; 7; 10]       % column vector
A = [1 2; 3 4]          % 2-by-2 matrix
v'                      % transpose
``````


The colon operator and #raw("linspace"); build regular sequences:

``````matlab
0:0.25:1                % from 0 to 1 by steps of 0.25
1:5                     % 1 2 3 4 5
linspace(0, 1, 5)       % 5 points between 0 and 1
``````


Common constructors:

``````matlab
zeros(2, 3)             % 2-by-3 matrix of zeros
ones(3)                 % 3-by-3 matrix of ones
eye(3)                  % identity matrix
rand(2, 2)              % uniform random numbers
``````


=== Indexing


Indices start at 1. The keyword #raw("end"); refers to the last element.

``````matlab
v(2)                    % second element
v(end)                  % last element
v(1:3)                  % elements 1 to 3
A(2, :)                 % second row
A(:, 1)                 % first column
A(1, 2) = 10            % assign one element
``````


#raw("size(A)"); returns the dimensions and #raw("numel(A)"); the number of elements.

=== Arithmetic


Operators #raw("*");, #raw("/"); and #raw("^"); follow the rules of matrix algebra. Put a dot before them to work element by element.

``````matlab
A * A                   % matrix product
A .* A                  % element-by-element product
A .^ 2                  % each element squared
A + 1                   % the scalar is added to every element
``````


Most functions accept arrays and work on each element:

``````matlab
sqrt([1 4 9])
exp(A)
sum(v)
mean(v)
max(v)
``````


=== Linear systems


The backslash operator solves #raw("A * x = b");:

``````matlab
A = [1 2 3; 3 3 4; 2 3 3];
b = [1; 1; 2];
x = A \ b
``````


#raw("A \\ b"); is faster and more accurate than #raw("inv(A) * b");. Other useful functions are #raw("det");, #raw("rank");, #raw("eig"); and #raw("inv");.

== 5. Text, cells and structures


Double quotes create a string. Single quotes create a character array. Both work in most functions.

``````matlab
s = "Hello";
t = s + " world"            % "Hello world"
parts = split("a,b,c", ",") % string array with 3 elements
n = num2str(42)             % number to text
fprintf('%d squared is %d\n', 3, 9)
``````


A cell array holds values of different types. Use curly braces to read the content of a cell.

``````matlab
c = {1, 'two', [3 4]};
c{2}                        % 'two'
``````


A structure groups named fields:

``````matlab
p.name = 'Ada';
p.age = 36;
p.name
fieldnames(p)
``````


Tables, dates, categorical arrays and dictionaries are also available. See #raw("doc table"); and #raw("doc datetime");.

== 6. Plotting


#raw("plot"); draws a curve from two vectors:

``````matlab
x = linspace(0, 2 * pi, 201);
y = sin(x);
plot(x, y)
xlabel('x')
ylabel('sin(x)')
title('Sine')
grid on
``````


Several curves in one call, with line styles:

``````matlab
plot(x, cos(x), '-', x, 2 * cos(x), '--', x, 0.5 * cos(x), ':')
legend('cos(x)', '2 cos(x)', '0.5 cos(x)')
``````


The format string combines a color (#raw("r");, #raw("g");, #raw("b");, #raw("k");), a line style (#raw("-");, #raw("--");, #raw(":");) and a marker (#raw("o");, #raw("*");, #raw("+");). For example #raw("'ro-'"); draws red circles joined by a line.

Other commands you will need early:

``````matlab
figure                      % open a new figure window
hold on                     % keep the current curves when plotting again
subplot(2, 1, 1)            % split the figure into a grid, select cell 1
surf(peaks)                 % 3-D surface
saveas(gcf, 'figure.png')   % save the current figure to a file
``````


#raw("bar");, #raw("histogram");, #raw("scatter");, #raw("pie"); and #raw("polarplot"); cover the other common chart types.

== 7. Scripts and functions


=== Scripts


A script is a text file with a #raw(".m"); extension that contains commands. Create #raw("example1.m");:

``````matlab
% example1.m
A = [1 2 3; 3 3 4; 2 3 3];
b = [1; 1; 2];
x = A \ b
``````


Run it with the #raw("run"); command, or by typing its name when the file is in the current folder:

``````matlab
run('example1.m')
example1
``````


From the terminal: #raw("nelson -cli -f example1.m");.

The #raw("edit"); command opens a file in the built-in editor. In the editor, #raw("%%"); starts a section that can be run on its own.

Variables created by a script go into the workspace. They are still there after the script ends.

=== Functions


A function has its own variables. It gets its inputs from the arguments and returns the outputs you name. Save this in #raw("area_circle.m");; the file name must match the function name.

``````matlab
function a = area_circle(r)
    arguments
        r (1,:) double {mustBeNonnegative}
    end
    a = pi * r.^2;
end
``````


Call it with #raw("area_circle(2)"); or #raw("area_circle([1 2 3])");. The #raw("arguments"); block is optional. It checks the size and type of the inputs and gives a clear error when they are wrong.

A function can return several values:

``````matlab
function [s, p] = sum_and_product(a, b)
    s = a + b;
    p = a * b;
end
``````


``````matlab
[s, p] = sum_and_product(3, 4)
``````


=== Anonymous functions


For short expressions, an anonymous function avoids creating a file:

``````matlab
f = @(x) x.^2 + 1;
f(3)
``````


=== Input and output


``````matlab
n = input('Enter a number: ');
disp(n)
fprintf('n = %g\n', n)
``````


== 8. Control flow


Every block ends with #raw("end");.

``````matlab
if x > 0
    disp('positive')
elseif x < 0
    disp('negative')
else
    disp('zero')
end
``````


``````matlab
for i = 1:5
    fprintf('%d\n', i^2)
end
``````


``````matlab
k = 0;
while k < 10
    k = k + 3;
end
``````


``````matlab
switch day
    case 'Saturday'
        disp('weekend')
    case {'Sunday'}
        disp('weekend')
    otherwise
        disp('weekday')
end
``````


Comparison operators: #raw("<");, #raw("<=");, #raw(">");, #raw(">=");, #raw("==");, #raw("~=");.
Logical operators: #raw("&");, #raw("|");, #raw("~"); on arrays, #raw("&&"); and #raw("||"); for scalar conditions.

Prefer array operations to loops when you can. #raw("sum(v.^2)"); is shorter and faster than a loop that adds #raw("v(i)^2"); at each step. #raw("tic"); and #raw("toc"); measure the time of a piece of code.

== 9. Saving your work


``````matlab
save('session.nh5')             % save all variables (HDF5 format)
save('session.nh5', 'A', 'v')   % save some variables
load('session.nh5')             % load them back
save('data.mat', 'A')           % MAT-file for exchange with other tools
``````


#raw("diary('log.txt')"); records everything typed and printed until #raw("diary off");.

To read and write data files, use #raw("readtable"); and #raw("writetable"); for CSV and Excel files, #raw("readmatrix"); for numeric files, and #raw("jsondecode"); and #raw("jsonencode"); for JSON.

== 10. Adding modules


Nelson Modules Manager installs extensions from a package file, a folder or a Git repository:

``````matlab
nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic')
nmm('list')
nmm('help')
``````


== 11. Quick reference


#table(
  columns: 2,
  table.header([Task], [Commands]),
  [Help], [#raw("help f");, #raw("doc f");, #raw("which f");],
  [Workspace], [#raw("who");, #raw("whos");, #raw("clear");, #raw("clc");],
  [Arrays], [#raw("[ ]");, #raw(":");, #raw("linspace");, #raw("zeros");, #raw("ones");, #raw("eye");, #raw("rand");, #raw("size");, #raw("numel");],
  [Linear algebra], [#raw("A \\ b");, #raw("inv");, #raw("det");, #raw("eig");, #raw("rank");],
  [Statistics], [#raw("sum");, #raw("mean");, #raw("max");, #raw("min");, #raw("sort");],
  [Text], [#raw("\"...\"");, #raw("'...'");, #raw("split");, #raw("num2str");, #raw("sprintf");, #raw("fprintf");],
  [Plots], [#raw("plot");, #raw("figure");, #raw("hold on");, #raw("subplot");, #raw("xlabel");, #raw("legend");, #raw("saveas");],
  [Files], [#raw("save");, #raw("load");, #raw("readtable");, #raw("writetable");, #raw("diary");],
  [Run code], [#raw("run");, #raw("edit");, #raw("nelson -f");, #raw("nelson -e");],
  [Modules], [#raw("nmm('install', ...)");, #raw("nmm('list')");],
)


== Next steps


- Browse the function list in the help browser (#raw("doc");).
- Read the overview of the main features of Nelson 2.0.
- Report problems or ask questions at #link("https://github.com/nelson-lang/nelson/issues")[https:\/\/github.com/nelson-lang/nelson/issues];.
