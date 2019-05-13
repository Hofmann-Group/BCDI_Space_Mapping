function [R_dqp_12, R_dqp_3, R_xyz, S_0lab_dir] = plugin_APS_34IDC(theta_spec, chi_spec, phi_spec, delta_spec, gamma_spec, rocking_increment, rocking_angle)
% convert reflection SPEC angles to a right-handed coordinate system for new reflection
theta = theta_spec;
chi = 90 - chi_spec;
phi = phi_spec;
delta = delta_spec;
gamma = -gamma_spec;

% rotation matrices
R_dqp_12 = roty(delta)*rotx(gamma);
R_xyz = roty(theta)*rotz(chi)*rotx(phi); % rotation matrix to rotate a vector in sample coordiantes into lab coordinates
if strcmp(rocking_angle, 'dtheta')
    R_dqp_3 = roty(-rocking_increment); % it's the negative in rocking increment because we scan from negative to positive
elseif strcmp(rocking_angle, 'dphi')
    R_dqp_3 = rotx(-rocking_increment); % it's the negative in rocking increment because we scan from negative to positive
end

% S_0lab direction for APS
S_0lab_dir = [0; 0; 1];
end