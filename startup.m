%Navigate to folder containing ephys_tools
s=what('SNLab_ephys');
cd(s.path)

%Initialize Paths 
addpath(fullfile('lfp'),...
    genpath(fullfile('preprocessing')),...
    fullfile('utils'),...
    genpath(fullfile('external_packages','buzcode')),...
    fullfile('external_packages','Kilosort2'),...
    genpath(fullfile('external_packages','Kilosort2Wrapper')),...
    genpath('C:\Users\schafferlab\github\SNLab_ephys\io'),...
    genpath('C:\Users\schafferlab\github\CellExplorer'),...
    genpath('C:\Users\schafferlab\github\neurocode\preProcessing'))