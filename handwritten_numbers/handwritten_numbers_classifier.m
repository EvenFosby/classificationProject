clear all
clc
close all

%% Initialization
% Constant values
M = 1;      % Initial number of clusters

% Initialize data set
load('data/data_all.mat');

% Split data set into chunks of images
chunk_size = 1000;

%% NN-based classifier using the Euclidian distance


% Euclidian distance decision rule
function d = euc_dist(x, mu)
    d = (x-mu)' * (x-mu);
end
    