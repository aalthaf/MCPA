
nTime = 100;

dt =1; % 1 s time step
x = 0;  % initial x = 0;
u = 0; % initial velocity = 0
f = 10; % force

global C

%%addpath ../geom2d/geom2d

C.q_0 = 1.60217653e-19;             % electron charge
C.hb = 1.054571596e-34;             % Dirac constant
C.h = C.hb * 2 * pi;                    % Planck constant
C.m_0 = 9.10938215e-31;             % electron mass
C.kb = 1.3806504e-23;               % Boltzmann constant
C.eps_0 = 8.854187817e-12;          % vacuum permittivity
C.mu_0 = 1.2566370614e-6;           % vacuum permeability
C.c = 299792458;                    % speed of light
C.a = 1;

x = zeros(1,100);
u = zeros(1,100);
%for n = 1: nSim
noe = 1;
for n = 2:nTime
    
    r = randi([1 100],1,1);
    du =  C.a * dt ;
    dx = ((du+u(n-1))^2- (u(n-1))^2)/(2*C.a);
    
    x(n) = x(n-1) + dx;
    u(n) = u(n-1) + du;
    %comet(x,u,or);
    % plot(x(n),u(n))
    plot(u,x,'or')
    xlabel('velocity')
    ylabel('distance')
    title(['The drift velocity is ',num2str(u(n)), ' m/s'])
    %drawnow
    pause(0.5)
    %hold on
    grid on
    
    if(r <= 5)
        u(n) = 0;
    end
    
end

    
    
%end


