#import "../nelson_help.typ": *

= obsv <control_system:6_matrix_computations.obsv>

Observability of state-space model.

== Syntax

- #raw("Ob = obsv(A, C)");
- #raw("Ob = obsv(sys)");

== Input argument

/ sys: State-space model
/ A: State matrix: Nx-by-Nx matrix
/ C: State-to-output matrix: Ny-by-Nx matrix

== Output argument

/ Ob: Observability matrix.

== Description

The #strong[obsv]; function is designed to calculate the observability matrix for state-space systems.

 Given an Nx-by-Nx matrix #strong[A]; representing the system dynamics and a Ny-by-Nx matrix C specifying the output, the function call #strong[obsv(A, C)]; generates the observability matrix.

 

 It is advised against using the rank of the observability matrix for testing observability due to numerical instability.

 The observability matrix #strong[Ob]; tends to be numerically singular for systems with more than a few states, making the rank-based approach unreliable for such cases.


== Example

``````matlab
% Define the system matrices
A = [1 2; 3 4];
C = [7 8];

% Check observability using obsv function
O = obsv(A, C);

% Display the observability matrix
disp('Observability matrix:');
disp(O);

% Check if the system is observable
if rank(O) == size(A, 1)
    disp('The system is observable.');
else
    disp('The system is not observable.');
end
``````


== See also

#nlink(<control_system:6_matrix_computations.obsvf>)[obsvf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
