**Deep Probabilistic Matrix Factorization on Graphs: Application to Drug Repositioning for Monkeypox**

Authors: Stuti Jain, Emilie Chouzenoux, Angshul Majumdar

Over the centuries, there have been occurrences of various viral pandemics, one after another. There were major outbreaks caused by the Ebola virus, influenza virus, Mers-COV virus, Sars-COV virus, and most recently, the COVID-19 pandemic caused by Sars-COV-2. These pandemics caused havoc in the world, killed millions of humans and severely effected the world economy. Statistics indicate that COVID-19 will probably become endemic very soon. However, as the cases of monkeypox caused by the monkeypox virus (MPV) are seen to be increasing rapidly, there are fears that we might enter into another pandemic. The COVID-19 pandemic researchers faced numerous challenges in creating a viable vaccine, including a scarcity of time, high costs, and the potential for adverse effects due to lack of proper testing. In order to avoid these problems now use of existing drugs seem to be the best way to treat the infected individuals. This is called drug repositioning. This research aims to repurpose existing drugs for treating monkeypox. We aim to solve the problem of drug-virus interaction (DVA) through deep probabilistic matrix factorization with graph regularization. Here, we recast the curated database of drug–virus associations as a binary matrix, indicating whether the specific drug (from row) has been utilized for treating the associated virus (from column). This matrix is sparse. Prospective treatment regimes planning (using existing drugs) require to infer the missing entries of this matrix. We also utilize metadata for drugs and viruses, obtained from chemical and mechanism of action based similarities between drugs and genomic and symptomatic similarities between the viruses. We demonstrate that our proposed approach significantly outperforms state-of-the-art MF methods. Moreover, when our algorithm is used to make in silico predictions of anti-virals for monkeypox, it returns the drugs that are already being used to treat infected patients.This shows the high efficacy of our algorithm.

A. To compute AUC and AUPR:
1. Go to the run_auc_aupr.m script.
2. Choose the algorithm you want to run in the "predictionMethod".
3. Load your data files and the metadata files.
4. Our data is made publicly available. It can be found in the data_monkeypox.zip folder.
5. Choose the Cross Validation (CV) setting you want to use.
6. Run the run_auc_aupr.m script.

B. To compute top k drug recommendations:
1. Go to the run_topk.m script.
2. Choose the algorithm you want to run in the "predictionMethod".
3. Load your data files and the metadata files.
4. Our data is made publicly available. It can be found in the data_monkeypox.zip folder.
5. Choose the Cross Validation (CV) setting 4.
6. Run the run_topk.m script. 

The experiments were run on an Intel(R) Core(TM) i7 x64-based processor and 16 GB RAM, using Matlab R2021b.

The authors acknowledge support from Inria Saclay, through the International Inria Team program COMPASS. S.J. and E.C. acknowledge support from the European Research Council Starting Grant MAJORIS ERC-2019-
STG-850925.


