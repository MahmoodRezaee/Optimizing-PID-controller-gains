function z=FB2(x)

global e_z

global z_dot

global int_e_z
%Quality Indicator
z=0;
for i=1:911
    z=z+abs(e_z(i))+(x(1)*e_z(i)+x(2)*int_e_z(i))-x(3)*z_dot(i);
end