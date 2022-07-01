% 01.07.2022
% Dimitrios Vogiatzis, MSc Engineer, PhD Candidate at TU Graz
%
% PMSM trapeziodel back-emf model for transient load cycles speed control
%
%
clear all;
clc ;
%
%% Data
load bldc
load brake
load battery
load PE

%% BLDC Data
pmsm.phi_tab=  [   0    30    150    180    210    330    360]';    % deg, breakpoints for tabular back-emf
pmsm.enorm_tab=[   0    -1     -1     0      1     1     0  ]';     % table data back emf, normalised

pmsm.p= 3 ;                    % [pole pairs]
pmsm.Rs = 0.026 ;              % [Ohm]
pmsm.Ls = 0.00013;             % [H]
pmsm.J = 0.0004;               % [kg*m^2]
pmsm.Imax = 45 ;               % [Amp]
pmsm.fieldweakening = 1;       % Select if there is field weakening [1] or not [0]
pmsm.Phase_shift =  [0 0 20 30 40 45 45 45 0 ];                         % [degrees]
pmsm.Speed_phase_shift = [0 4500 5000 6000 7000 8000 9000 12000 13000 ];% [RPM]

pmsm.kt = 0.075; 
pmsm.phi_tab=pmsm.phi_tab*pi/180;                                       % rad, breakpoints electrical rotorposition
pmsm.dlambda_tab=pmsm.enorm_tab*pmsm.kt*2/3/pmsm.p;                     % Vs, derivative of permanentmagnet flux linkage with respect to mechanical rotor position
                                                                         
%% Shaft - Mechanical
mech.c = 900;                 % [Nm/rad]
mech.k= 1;                    % [Nm/rad/sec]
mech.mech_wo = 0;
mech.tool.J=0.0002;           % [kg/m^2]
%mech.mech_wo = (ICE.rpm-2000)*pi/30;

%% Power Electronics
% Speed Controller
PE.controller.kp = 0.2 ;
PE.controller.ki = 0.013 ; 
% Converter
PE.converter.Roff=1e3;          % Ohm, diode model: resistance in reverse direction
PE.converter.vdc=36;            % V, dc-link voltage
battery.V_link = PE.converter.vdc ;
% PWM Sample time
PE.PWM.Ts = 1e-04 ;             % [sec]

%% Load Cycle
brake.choice1 = questdlg('Please choose load cycle', ...
    'Load cycle', 'Max Power Ramp-Up','Transient load cycle','Max Power Ramp-Up');
switch brake.choice1
    case 'Max Power Ramp-Up'
        brake.switch = 1; 
    case 'Transient load cycle'
        brake.switch = 0;
end

%% Run model
run BLDCspeedcontrollerForGeneralLC
