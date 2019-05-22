function [R_dqp_12, R_dqp_3, R_xyz, S_0lab_dir] = plugin_APS_34IDC(theta_bl, chi_bl, phi_bl, delta_bl, gamma_bl, rocking_increment, rocking_angle)
% convert reflection SPEC angles to a right-handed coordinate system for new reflection
theta = theta_bl;
chi = 90 - chi_bl;
phi = phi_bl;
delta = delta_bl;
gamma = -gamma_bl;

% rotation matrices
R_dqp_12 = rotyd(delta)*rotxd(gamma);
R_xyz = rotyd(theta)*rotzd(chi)*rotxd(phi); % rotation matrix to rotate a vector in sample coordiantes into lab coordinates
if strcmp(rocking_angle, 'dtheta')
    R_dqp_3 = rotyd(-rocking_increment); % it's the negative in rocking increment because we scan from negative to positive
elseif strcmp(rocking_angle, 'dphi')
    R_dqp_3 = rotxd(-rocking_increment); % it's the negative in rocking increment because we scan from negative to positive
end

% S_0lab direction for APS
S_0lab_dir = [0; 0; 1];
end