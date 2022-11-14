clear all
predictionMethod = 'dmf';%'gr1bmc_ppxa'%'mc 'dmf'%'mf' %'grmc_admm' %'grmf'
global dr vi;
% % read virus-drug assocaitions

% % MATRICES WITH SARS COV 2
% load('data_processed/data_processed_new/virus_drug_association_RefSeq.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_May_21.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Feb_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Mar_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Apr_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_May_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Jun_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Jul_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Aug_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Sep_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Oct_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Nov_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Dec_20.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Jan_21.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Feb_21.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Mar_21.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_Apr_21.mat')
% load('data_processed/data_processed_new/virus_drug_association_sv_May_21.mat')

% 
global Sd Sv
% load('data_processed/first_drug_sim_matrix.mat')
% load('data_processed/drugs_moa_sim.mat')

% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_RefSeq.mat')
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/data_monkeypox/virus_drug_association_39.mat')
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/data_monkeypox/drug_sim_chem.mat')
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/data_monkeypox/drug_sim_moa.mat')
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/data_monkeypox/vir_sim_gen.mat')
load('C:/Users/Stuti/Desktop/FOURTH_SEMESTER/GPMF_monkeypox/data_processed/data_monkeypox/vir_sim_sym.mat')

% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_May_21.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Feb_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Mar_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Apr_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_May_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Jun_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Jul_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Aug_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Sep_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Oct_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Nov_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Dec_20.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Jan_21.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Feb_21.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Mar_21.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_Apr_21.mat')
% load('data_processed/data_processed_new/vir_sim_matrix_updated_sv_May_21.mat')
% load('data_processed/virus_symptoms_sim_cos_inc.mat')

mat=mat'; %size of data matrix: #drugsx#vir
% % MATRICES WITHOUT SARS COV 2
% load('data_processed/virus_drug_association_first.mat')
% load('data_processed/RnaDna/virus_drug_association.mat')
% mat=mat'; %size of data matrix: #drugsx#vir


% load('data_processed/first_drug_sim_matrix.mat')
% load('data_processed/vir_sim_matrix_first.mat')
% load('data_processed/drugs_moa_sim.mat')
% load('data_processed/virus_symptoms_sim_second_cos.mat')
% load('data_processed/RnaDna/drug_sim_matrix.mat')
% load('data_processed/RnaDna/vir_sim_matrix.mat')

Sd = double(Sd1) + double(Sd2);
Sv = Sv1+Sv2;

% Sd = Sd1+Sd2 ;

Y=mat;  
size(mat);
[a,b] = size(Y(1,:));

%----add dependencies to path----
addpath(genpath('helper_functions'));

%----define parameters----
n = 10;% 'n' in "n-fold experiment"

global f_roc f_pr;

tic


for cv_setting= 4
getParameters(predictionMethod,cv_setting)
% %     n,cv_setting,predictionMethod
%     [auc,aupr,XcROC,YcROC,XcPR,YcPR, T,y3 ]=get_CV_results(Y,n,cv_setting,predictionMethod  );
% % 
% auc
% aupr


% RUN FOR PRECISION, RECALL( USE MATRICES WITHOUT SARS COV 2)
% [FinalavgPre,FinalavgRec,FinalavgF1] = precision_recall_calc(Y,n,cv_setting,predictionMethod, Sd,Sv);
% FinalavgPre
% FinalavgRec
% FinalavgF1
% % [auc,aupr,pre,rec,f1] = get_CV_results(Y,n,cv_setting,predictionMethod);
% % pre,rec,f1
% dr = dr_names;
% % RUN FOR TOP 10 DRUG RECOMMENDATIONS (USE MATRICES WITH SARS COV 2)
st = findtopk(Y,n,cv_setting,predictionMethod, dr,vi);
st'
end

toc