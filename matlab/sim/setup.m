% Setup the environment variable depending on the machine
dir_home = getenv('PROJ_DIR'); 
dir_lib = strcat(dir_home,'/matlab/lib');
dir_gc  = strcat(dir_home,'/matlab/g729/coder');
dir_ogc = strcat(dir_home,'/matlab/oop/coder');
dir_w   = strcat(dir_home,'/matlab/sim');

% Set the search paths
addpath(dir_lib);
% addpath(strcat(dir_lib,'/QMFDesign'));
addpath(dir_gc);
addpath(dir_ogc);
