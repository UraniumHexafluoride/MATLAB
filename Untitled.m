clc;
prompt = 'Given actual Binding energy of He in MeV? ';
he = input(prompt);
prompt = 'Given actual Binding energy of Fe in MeV? ';
fe = input(prompt);
prompt = 'Given actual Binding energy of Ni in MeV? ';
ni = input(prompt);
prompt = 'Given actual Binding energy of U in MeV? ';
u = input(prompt);

E_A =@(A,z0) av-as*A.^(-1/3)- (ac./A.^(4/3)).*z0.^2 -(aa./A.^2).*(A-2.*z0).^2;
z0 =@(A) (2*aa)./( 4*aa./A + ac./(A.^(2/3)));

av=15.8;
as= 18.3;
ac=0.714;
aa= 23.2;
A=1:240;
E = E_A(A,z0(A));
plot(A,E)
hold on;
grid on;
plot(4,he,'s')
plot(56,fe,'v')
plot(62,ni,'d')
plot(238,u,'*')
legend({'From formula','He','Fe','Ni','U'},'Location','South')