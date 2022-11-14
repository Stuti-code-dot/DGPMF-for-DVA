clear all
predictionMethod = 'GPMF_1layer'%'gr1bmc_ppxa'%'mc 'dmf'%'mf' %'grmc_admm' %'grmf' 
% % read virus-drug assocaitions

% MATRICES WITHOUT SARS COV 2
% load('data_processed/virus_drug_association_first.mat')
% mat=mat'; %size of data matrix: #drugsx#vir

global Sd Sv
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_monkeypox/virus_drug_association.mat')
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_monkeypox/drug_sim_chem.mat')
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_monkeypox/drug_sim_moa.mat')
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_monkeypox/vir_sim_gen_38.mat')
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_monkeypox/vir_sim_sym_38.mat')
% load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/virus_drug_association_first.mat')
% load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/first_drug_sim_matrix.mat')
% load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/vir_sim_matrix_first.mat')
% load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/drugs_moa_sim.mat')
% load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/virus_symptoms_sim_second_cos.mat')

% load('data_processed/first_drug_sim_matrix.mat')
% load('data_processed/vir_sim_matrix_first.mat')
% load('data_processed/drugs_moa_sim.mat')
% load('data_processed/virus_symptoms_sim_second_cos.mat')
% load('data_processed/virus_drug_association_first.mat')
% load('data_processed/RnaDna/drug_sim_matrix.mat')
% load('data_processed/RnaDna/vir_sim_matrix.mat')
% load('data_processed/RnaDna/virus_drug_association.mat')

Y=mat'; 
Sd = double(Sd1) + double(Sd2) ;
Sv = Sv1 + Sv2;

%----add dependencies to path----
addpath(genpath('helper_functions'));

%----define parameters----
n = 10;% 'n' in "n-fold experiment"  

tic
for cv_setting=[1] 
 
getParameters(predictionMethod,cv_setting)

[ auc,aupr,pre,rec,f1]=get_CV_results(Y,n,cv_setting,predictionMethod  );
   
auc
aupr

end
toc