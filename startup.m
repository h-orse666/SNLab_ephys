%Navigate to folder containing ephys_tools
s=what('SNLab_ephys');
cd(s.path)

%Initialize Paths 
addpath(genpath(fullfile('preprocessing')),...
    fullfile('utils'),...
    fullfile('visualize'),...
    fullfile('lfp'),...
    genpath(fullfile('external_packages','Kilosort2Wrapper')),...
    genpath('C:\Users\schafferlab\github\SNLab_ephys\io'),...
    genpath('C:\Users\schafferlab\github\CellExplorer'),...
    genpath('C:\Users\schafferlab\github\neurocode\preProcessing'),...
    genpath('C:\Users\schafferlab\github\KiloSort'),...
    genpath('C:\Users\schafferlab\github\neurocode\utilities'),...
    genpath('C:\Users\schafferlab\Documents\GitHub\neurocode'),...
    genpath('C:\Users\schafferlab\Documents\GitHub\CellExplorer'),...
    genpath(fullfile('behavior')))

