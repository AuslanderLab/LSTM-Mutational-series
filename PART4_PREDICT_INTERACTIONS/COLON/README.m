% % %  COLON CANCER - pairing passanges with drivers, validation of predicted
% interactions and survival analysis for colon cancer






% % % % % B. Scripts to run:

% 1. STEP1 - generate tables of AUCs connecting between drivers and predicted passangers, 
% and identify passangets that are repeatedly predicted from drivers genes


% 2. STEP2 - for each of the passenger genes that can be repeatedly
% predicted from the landscape of driver genes (RESF.ggg), correlate the scores
% predicting the passenger with the mutations in each driver and
% find driver mutations that are significantly correlated with the
% scores predicting the passenger mutations, thus are likely to
% contribute to its prediction


% 3. STEP3 - perform enrichment analysis for predicted interactions with
% STRING interactions


% 4. STEP4 - survival analysis for modules of drivers and their predicted
% interactions





% % % % % C. Functions:

% 1. GetTableAUC2
%%%%% Get AUC table of ordered by considered genes

% 2. GetTableINTER
%%%%% Get discrete predicted interactions table between drivers and passangers

% 3. GetTableString
%%%%% Get string interactions table for considered genes

% 4. getAUCLSTM
%%%%% Get test AUC fron trained LSTM next mutation prediction (using 'Trail' last mutation each time)

% 5. kmplot
%%%%% Plot the Kaplan-Meier estimation of the survival function

% 6. logrank
%%%%% LOGRANK Comparing survival curves of two groups using the log rank
%%%%% test (logrank2 doesnt plot KM)

% 6. PlotSurv1-3 - plots survival analysis for driver modules and predicted
% interactors



% % % % % D. Data structures

% RESF.mat - saved structure, include AUC and score for predicting
% passanger mutations for drivers in colon

% STRING.mat - processed STRING interactions dataset

% COAD2.mat - TCGA COAD passanger mutations (training labels) data
% COADd.mat - TCGA COAD ordered driver mutations (training features) data

% MGI2.mat - COAD passanger mutations (test1 labels) data
% MGId.mat - COAD ordered driver mutations (test1 features) data

% DFCI2.mat - COAD passanger mutations (test2 labels) data
% DFCId.mat - COAD ordered driver mutations (test2 features) data

% COAD_clin.mat COAD TCGA clinical data

% mapB.mat,mapR.mat - color maps used for heatmap
%%%**Other data structures are saved result structures


