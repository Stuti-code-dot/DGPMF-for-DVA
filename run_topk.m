clear all
predictionMethod = 'dmf';%'gr1bmc_ppxa'%'mc 'dmf'%'mf' %'grmc_admm' %'grmf'
global dr vi;
% % read virus-drug assocaitions

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


mat=mat'; %size of data matrix: #drugsx#vir
% % MATRICES WITHOUT SARS COV 2

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

% % RUN FOR TOP 10 DRUG RECOMMENDATIONS (USE MATRICES WITH SARS COV 2)
st = findtopk(Y,n,cv_setting,predictionMethod, dr,vi);
st'
end

toc