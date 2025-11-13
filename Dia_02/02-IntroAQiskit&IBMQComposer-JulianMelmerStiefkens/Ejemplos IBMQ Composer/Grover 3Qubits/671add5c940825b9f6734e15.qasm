OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[4];

x q[3];
h q[0];
h q[1];
h q[2];
h q[3];
barrier q[0];
barrier q[1];
barrier q[2];
barrier q[3];
barrier q[0];
barrier q[1];
barrier q[2];
barrier q[3];
h q[0];
h q[1];
h q[2];
barrier q[0];
barrier q[1];
barrier q[2];
x q[0];
x q[1];
x q[2];
ccx q[1], q[0], q[4];
cz q[4], q[2];
x q[0];
x q[1];
x q[2];
barrier q[0];
barrier q[1];
barrier q[2];
h q[0];
h q[1];
h q[2];
barrier q; // @phaseDisk
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

// @columns [0,1,1,1,1,3,3,3,3,7,7,7,7,9,9,9,11,11,11,12,12,12,13,14,15,15,15,16,16,16,18,18,18,19,20,21,22]
