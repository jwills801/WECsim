%% Simulation Data
simu = simulationClass();               % Initialize simulationClass
simu.simMechanicsFile = 'RM3.slx';         % Simulink Model File
simu.startTime = 0;                     % Simulation Start Time [s]
simu.rampTime = 100;                   	% Wave Ramp Time [s]
simu.endTime=400;                       % Simulation End Time [s]
simu.dt = 0.1; 							% Simulation time-step [s]
simu.CITime = 30;                       % (`float`) Convolution integral time. Default = ``60`` s
simu.explorer = 'off';                   % Turn simuscape explorer off
% simu.mcrCaseFile='mcrtrail.mat';
%% Wave Information 
% Regular Waves  
waves = waveClass('regular');              % Initialize waveClass
waves.T = 1.5:1:2.5;                          % Wave Period [s]
waves.H = 6:2:8;                          % Wave Height [m]
waves.spectrumType = 'PM';            % Specify Wave Spectrum Type
%% Body Data
% Float
body(1) = bodyClass('hydroData/rm3.h5');          % Initialize bodyClass for Float      
body(1).geometryFile = 'geometry/float.stl';    % Geomtry File
body(1).mass = 'equilibrium';                   % Mass [kg]
body(1).momOfInertia = [20907301 21306090.66 37085481.11];  % Moment of Inertia [kg*m^2]     

% Spar/Plate
body(2) = bodyClass('hydroData/rm3.h5');          % Initialize bodyClass for Spar/Plate
body(2).geometryFile = 'geometry/plate.stl';    % Geometry File   
body(2).mass = 'equilibrium';                   % Mass [kg]
body(2).momOfInertia = [94419614.57 94407091.24 28542224.82];   % Moment of Inertia [kg*m^2]     

%% PTO and Constraint Parameters
% Floating (3DOF) Joint
constraint(1) = constraintClass('Constraint1'); % Initialize constraintClass for Constraint1
constraint(1).loc = [0 0 0];                    % Constraint Location [m]

% Translational PTO
pto(1) = ptoClass('PTO1');                      % Initialize ptoClass for PTO1
pto(1).k = 0;                                 % PTO Stiffness [N/m]
pto(1).c = 1200000:1200000:2400000;                                 % PTO Damping [N/(m/s)]
pto(1).loc = [0 0 0];                           % PTO Location [m]