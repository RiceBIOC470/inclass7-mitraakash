% Akash Mitra
% am132

%Inclass assignment 7. 
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% A. What human chromosome is it located on?
% Chromosome 13

% B. How many exons does it have?
% 3
% C. What is the precise position of its stop codon in the genome?
% chr13:27,962,136

% D. Identify at least one difference in sequence between human and mouse
% CDX2.

% Alignment block 1 of 9 in window, 28003580 - 28003586, 7 bps 
% Human  aatt----ata
% Mouse  ===========


% E. In which human tissues is it expressed most abundantly?

% Transverse Colon

%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2. 

% NM_0012565

% B. Use MATLAB to read the genbank information corresponding to that
% accession number. 

genbank_info = getgenbank('NM_001265');

% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?

start_pos = genbank_info.CDS.indices(1);
disp("Start position:");
disp(start_pos);

stop_pos = genbank_info.CDS.indices(2);
disp("Stop position:");
disp(stop_pos);

% Promoter region and polyA tail


% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 

cdx2_protein = getgenpept(genbank_info.CDS.protein_id);
disp(cdx2_protein.Features);

% According to this data, the homeobox is located at region 190-242.
