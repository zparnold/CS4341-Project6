function sampdata = generate_data(bnet,num_samples)

% set random seed for reproducibility
stream = RandStream('mt19937ar');
RandStream.setGlobalStream(stream);

N = size(bnet.dnodes,2);

sampdata = cell(num_samples,N);

% sample data one row at a time
for n=1:num_samples
 samp = sample_bnet(bnet);
 % keep all the sampled data
 sampdata(n,1:N) = samp(1:N);
end


