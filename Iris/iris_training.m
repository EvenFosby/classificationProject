clear all
clc

%% Constant values
C = 3;          % number of classes
D = 4;          % number of features

%% Targets
t1 = [1 0 0]' .* ones(1, 30);
t2 = [0 1 0]' .* ones(1, 30);
t3 = [0 0 1]' .* ones(1, 30);
T = [t1 t2 t3];

%% Initialize data set
c1_all = load('Data/class_1', '-ascii'); % Setosa
c2_all = load('Data/class_2', '-ascii'); % Versicolor
c3_all = load('Data/class_3', '-ascii'); % Virginica


%% Initialize training set
% Individual training sets
N = 30;     % size of training set
c1_training = [c1_all(1:N,:)];
c2_training = [c2_all(1:N,:)];
c3_training = [c3_all(1:N,:)];

c_training = [c1_training c2_training c3_training];

%% Initialize test set
M = 20;     % size of test set
c1_test = [c1_all(N+1:N+M, :)];
c2_test = [c2_all(N+1:N+M, :)];
c3_test = [c3_all(N+1:N+M, :)];

%% MSE based training of linear classifier
W = zeros(D, C);              % Initialize weight matrix
alpha = 0.01;                 % step factor 
gradient_w_MSE = 0;
% g = W .* c_training;

for k = 1:N
    
    g = sigmoid(c_training(k, :));
    gradient_g_MSE = g - T(k);
    gradient_z_g = g .*(1-g);
    gradient_w_z = c_training(k, :)';

    gradient_w_MSE = gradent_w_MSE + (gradient_g_MSE .* gradient_z_g)* gradient_w_z;
end