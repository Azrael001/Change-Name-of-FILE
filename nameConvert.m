path_src = 'H:\tracker_benchmark_v1.0\trackers\DSST£®Œ¥≈‰÷√£©\sequences\Girl\img';
path_dst = 'H:\tracker_benchmark_v1.0\trackers\DSST£®Œ¥≈‰÷√£©\sequences\Girl\img';
fs = dir([path_src '\*.jpg']);

if ~exist(path_dst);
    mkdir(path_dst);
end

id = 0;
for i=1:length(fs)
    fname = sprintf('img%05d.jpg',i+id);
    new_path = fullfile(path_dst,fname);
    copyfile(fullfile(path_src,fs(i).name),new_path);
end