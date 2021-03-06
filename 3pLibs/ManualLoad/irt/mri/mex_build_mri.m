% mex_build_mri
% run matlab's "mex" command to "compile" the mri-related code
% into mex files.
% only users on unsupported systems, e.g., PCs, will need to do this

dir_current = pwd;
dir_mri = path_find_dir('mri');
cd(dir_mri)
mex -g exp_xform_mex.c
mex -g mri_exp_mult_mex.c
cd(dir_current)


cd('../mex/src');
irt_mex_make();		% compile penalty_mex
cd(dir_current)
