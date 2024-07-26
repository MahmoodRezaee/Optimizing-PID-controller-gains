%Main code 
%Initializing variables
format long
global e_z
e_z = timeseries(out.e_z).Data;
global z_dot
z_dot=timeseries(out.z_dot).Data;
t=out.tout;
global int_e_z
int_e_z=timeseries(out.Int_e_z).Data;

%constraints
A=[ 1 0 0 -1 0 0 0 0 0;
    1 0 0 0 1 0 0 0 0;
    0 1 0 0 0 -1 0 0 0;
    0 1 0 0 0 0 1 0 0;
    0 0 1 0 0 0 0 -1 0;
    0 0 1 0 0 0 0 0 1;];

b=[5 17 0.1 0.5 0.1 2];

%initial values
X0=[6 0.2 0.3 1 11 0.1 0.3 0.2 1.7];

%
imax=30;
ksto= 5000;
[n]=length(X0);
[n_c]=length(b);
t = cputime;

[FX,X,i]=RGB(@FB2,@gradFB2,A,b,X0)
