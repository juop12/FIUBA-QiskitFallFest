OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[1];

x q[4];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
barrier q[0];
barrier q[1];
barrier q[2];
barrier q[3];
barrier q[4];
barrier q[0];
barrier q[1];
barrier q[2];
barrier q[3];
barrier q[4];
h q[0];
h q[1];
h q[2];
h q[3];
barrier q; // @phaseDisk
measure q[0] -> c[0];
measure q[1] -> c[0];
measure q[2] -> c[0];
measure q[3] -> c[0];

// @columns [0,1,1,1,1,1,2,2,2,2,2,5,5,5,5,5,6,6,6,6,7,8,9,10,11]
