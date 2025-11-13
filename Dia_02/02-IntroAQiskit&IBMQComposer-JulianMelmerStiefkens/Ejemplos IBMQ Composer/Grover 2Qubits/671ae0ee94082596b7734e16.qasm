OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[4];

x q[2];
h q[0];
h q[1];
h q[2];
barrier q[0];
barrier q[1];
barrier q[2];
barrier q[0];
barrier q[1];
barrier q[2];
h q[0];
h q[1];
barrier q[0];
barrier q[1];
x q[0];
x q[1];
cz q[0], q[1];
x q[0];
x q[1];
barrier q[0];
barrier q[1];
h q[0];
h q[1];
barrier q; // @phaseDisk
measure q[0] -> c[0];
measure q[1] -> c[1];

// @columns [0,1,1,1,3,3,3,7,7,7,9,9,11,11,12,12,13,14,14,15,15,17,17,19,20,21]
