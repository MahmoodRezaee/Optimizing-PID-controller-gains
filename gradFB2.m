function z=gradFB2(x)
m = length(x);
global e_z

global z_dot

global int_e_z

z(1)=sum(e_z);
z(2)=sum(int_e_z);
z(3)=-sum(z_dot);
z(4)=0;
z(5)=0;
z(6)=0;
z(7)=0;
z(8)=0;
z(9)=0;

 z=z';