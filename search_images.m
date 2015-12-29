clear all; close all; clc;
addpath('tools');

db_name = 'database';
numRetrieval = 30;

% load dataset
if strcmp(db_name, 'database')
    load Zernike.mat;
    path_imgDB = './database/';
    addpath(path_imgDB);
    queryID = 368;
end

%if not normalize, then do
% featNorm = normalize1(feat);
% save('256featNorm.mat','featNorm', 'rgbImgList');

% [pc, ~] = eigs(double(cov(feat)), 128);
% feat = feat*pc;

%virsulazation
retrieval_virsulazation( queryID, numRetrieval, feat_norm, imgNamList);