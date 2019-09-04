costheta = sym('costheta');
sintheta = sym('sintheta');
cosphi = sym('cosphi');
sinphi = sym('sinphi');
cospsi = sym('cospsi');
sinpsi = sym('sinpsi');

Rx = [1,0,0;0,cospsi,-sinpsi;0,sinpsi,cospsi];
Ry = [costheta, 0, sintheta; 0, 1, 0; -sintheta, 0, costheta];
Rz = [cosphi, -sinphi, 0; sinphi, cosphi, 0; 0, 0, 1];

R1 = eye(3);
R2 = eye(3);
R3 = eye(3);

I1 = input('Enter First Rotation Axis X/Y/Z, enter nothing for I:', 's');
if I1 == 'X'
    R1 = Rx;
elseif I1 == 'Y'
    R1 = Ry;
elseif I1 == 'Z'
    R1 = Rz;
else
    fprintf('bad input, identity Matrix used \n')
end

I2 = input('Enter Second Rotation Axis X/Y/Z, enter nothing for I:', 's');
if I2 == 'X'
    R2 = Rx;
elseif I2 == 'Y'
    R2 = Ry;
elseif I2 == 'Z'
    R2 = Rz;
else
    fprintf('bad input, identity Matrix used \n')
end

I3 = input('Enter Third Rotation Axis X/Y/Z, enter nothing for I:', 's');
if I3 == 'X'
    R3 = Rx;
elseif I3 == 'Y'
    R3 = Ry;
elseif I3 == 'Z'
    R3 = Rz;
else
    fprintf('bad input, identity Matrix used \n')
end

str = strcat(I1,I2,I3);
result = R3*(R2*R1);

sprintf('The rotation matrix for = %s', str)
fprintf(' is ')
result
