function C = cfun(gamma,q,dq,l1,l2,l3)

u = [gamma; q; dq];

C11 = -u(11)*u(5)*l1*sin(u(8)) - (u(11)+u(12))*u(6)*l1*sin(u(8)+u(9)) - u(12)*u(6)*l2*sin(u(9));
C12 = -(u(10)+u(11))*u(5)*l1*sin(u(8)) - (u(10) + u(11) + u(12))*u(6)*l1*sin(u(8)+u(9)) - u(12)*u(6)*l2*sin(u(9));
C13 = -(u(10)+u(11)+u(12))*u(6)*(l1*sin(u(8)+u(9)) + l2*sin(u(9)));
C21 = u(10)*u(5)*l1*sin(u(8)) + u(10)*u(6)*l1*sin(u(8)+u(9)) - u(12)*u(6)*l2*sin(u(9));
C22 = -u(12)*u(6)*l2*sin(u(9));
C23 = -(u(10) + u(11) + u(12))*u(6)*l2*sin(u(9));
C31 = u(6)*(u(10)*l1*sin(u(8)+u(9)) + u(10)*l2*sin(u(9)) + u(11)*l2*sin(u(9)));
C32 = (u(10)+u(11))*u(6)*l2*sin(u(9));
C33 = 0;

C = [C11, C21, C31;
    C12, C22, C32;
    C13, C23, C33];