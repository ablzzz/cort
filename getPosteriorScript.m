function R = getPosterior(folder, ext, model)
[m n] =size(folder)
for j1 = 1 : n
files = dir(fullfile(folder(j1).name, ext));
[m1 n1] = size(files)
data = []
for j1 = 1 : m1
    [folder '/' files(j1).name];
    data1 = load([folder '/' files(j1).name]);
    [d R(j1)] = model.posterior(data1');
end
