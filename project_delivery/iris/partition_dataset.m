function [first, last] = partition_dataset(dataset,partitionIndex)
% remove_feature: Splits the dataset into two separate datasets at the
%                 partitionIndex
% 
% Output:         first: The dataset before the partitionIndex
%                 last: The dataset after the partitionIndex
%
%
% Input:          dataset: The dataset that is to be modified.
%                 patritionIndex: Index of where det dataset should be
%                 split.
   
    first = [dataset(1:partitionIndex, :)];
    last = [dataset(partitionIndex+1:end, :)];
end