clear all;
close all;
clc;
cur_folder = pwd;
faces = fullfile(cur_folder, 'faces');
train = fullfile(faces, 'train');
test = fullfile(faces, 'test');
d = dir(train);
% remove all files (isdir property is 0)
dfolders = d([d(:).isdir]);
% remove '.' and '..'
dfolders = dfolders(~ismember({dfolders(:).name},{'.','..'}));
train_images = {};
train_img_ctr = 1;
Mean = zeros(60,64);
for K = 1:size(dfolders,1)
    fprintf(dfolders(K,1).name);
    fprintf('\n');
    if strcmp(dfolders(K,1).name,'an2i') == 1
        subfolder = fullfile(train,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files.name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            figure; imshow(img);
            train_images{train_img_ctr} = img;
            train_img_ctr = train_img_ctr + 1;
            Mean = Mean + double(img);
        end
    elseif strcmp(dfolders(K,1).name,'at33') == 1
        subfolder = fullfile(train,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files.name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            figure; imshow(img);
            train_images{train_img_ctr} = img;
            train_img_ctr = train_img_ctr + 1;
            Mean = Mean + double(img);
        end
    elseif strcmp(dfolders(K,1).name,'boland') == 1
        subfolder = fullfile(train,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'bpm') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'ch4f') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'cheyer') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'choon') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);

        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'danieln') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'glickman') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'karyadi') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'kawamura') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;

        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'kk49') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'megak') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'mitchell') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'night') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'phoebe') == 1

    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'saavik') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'steffi') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'sz24') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        train_images{train_img_ctr} = img;
        train_img_ctr = train_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'tammo') == 1
    subfolder = fullfile(train,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);

        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files.name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            figure; imshow(img);
            train_images{train_img_ctr} = img;
            train_img_ctr = train_img_ctr + 1;
            Mean = Mean + double(img);
end end
    close all;
end
Mean = Mean/(train_img_ctr-1);
train_images = train_images';
[h, w] = size(train_images{1,1});
n = size(train_images,1);
d = h * w;
train_images_mod = zeros(d, n);
for j = 1:n
   train_images_mod(:,j) = reshape(train_images{j,1},d, 1);
end
train_images_mod = double(train_images_mod);
% mean-centering
mean_matrix = mean(train_images_mod, 2);
x = bsxfun(@minus, train_images_mod, mean_matrix);
diff = x;
% compute covariance
s = x'*x;
% Eigenvalue decomposition
[V, D] = eig(s);
eigval = diag(D);
% sort eigenvalues in descending order
eigval = sort(eigval, 'descend');
tot = sum(eigval);
psum = 0;
for i = 1:size(eigval,1)
    psum = psum + eigval(i,1);
    if psum/tot >= 0.99
t = i;
break end
end

% Pick only significant eigenvectors & compute eigenfaces
V = fliplr(V);
V = V(:,1:t);
eigen_faces = diff*V;
projections = eigen_faces'*diff;
% show mean and 1st through 15th principal eigenvectors
figure, subplot(4, 5, 1)
imagesc(reshape(mean_matrix, [h, w]))
title('Mean image')
colormap gray
for i = 1:t
    subplot(4, 5, i + 1)
    imagesc(reshape(eigen_faces(:, i), h, w))
    fname = ['Eigenface',num2str(i)];
    title(fname)
end
saveas(gcf, 'Eigenfaces.png');
%% testing
d = dir(test);
% remove all files (isdir property is 0)
dfolders = d([d(:).isdir]);
% remove '.' and '..'
dfolders = dfolders(~ismember({dfolders(:).name},{'.','..'}));
test_images = {};
test_img_ctr = 1;
for K = 1:size(dfolders,1)
    fprintf(dfolders(K,1).name);
    fprintf('\n');
    if strcmp(dfolders(K,1).name,'an2i') == 1
        subfolder = fullfile(test,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files.name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            figure; imshow(img);
            test_images{test_img_ctr} = img;
            test_img_ctr = test_img_ctr + 1;
            Mean = Mean + double(img);
        end
    elseif strcmp(dfolders(K,1).name,'at33') == 1
        subfolder = fullfile(test,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files.name;
            filepath = fullfile(subfolder,filename);

        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'boland') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'bpm') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'ch4f') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'cheyer') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;

        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'choon') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'danieln') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'glickman') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'karyadi') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
end

elseif strcmp(dfolders(K,1).name,'kawamura') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'kk49') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'megak') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'mitchell') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'night') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)

    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'phoebe') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'saavik') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'steffi') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)
        filename = files.name;
        filepath = fullfile(subfolder,filename);
        img = imread(filepath);
        figure; imshow(img);
        test_images{test_img_ctr} = img;
        test_img_ctr = test_img_ctr + 1;
        Mean = Mean + double(img);
    end
elseif strcmp(dfolders(K,1).name,'sz24') == 1
    subfolder = fullfile(test,dfolders(K,1).name);
    fprintf('subfolder :', subfolder)
    files = dir(subfolder);
    files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
    for M = 1:size(files,1)

            filename = files.name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            figure; imshow(img);
            test_images{test_img_ctr} = img;
            test_img_ctr = test_img_ctr + 1;
            Mean = Mean + double(img);
        end
    elseif strcmp(dfolders(K,1).name,'tammo') == 1
        subfolder = fullfile(test,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files.name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            figure; imshow(img);
            test_images{test_img_ctr} = img;
            test_img_ctr = test_img_ctr + 1;
            Mean = Mean + double(img);
end end
    close all;
end
test_images = test_images';
n = size(test_images,1);
test_images_mod = zeros(h*w, n);
for j = 1:n
   test_images_mod(:,j) = reshape(test_images{j,1},h*w, 1);
end
x = double(test_images_mod);
index = zeros(size(x,2),1);
for i = 1:size(x,2)
    test_img = bsxfun(@minus, x(:,i), mean_matrix);
    proj_test = eigen_faces'*test_img;
    proj_test_mod = repmat(proj_test,1,size(train_images,1));
    d = proj_test_mod - projections;
    dist = zeros(size(train_images,1),1);
    for j= 1:size(train_images,1)
       dist(j,1) = norm(d(:,j));
    end
    [minimum,I]=min(dist);
    index(i,1) = I;

subplot(1,2,1)
    test_image = reshape(test_images{i,1}, h, w);
    imshow(test_image)
    title('Actual test image')
    subplot(1,2,2)
    recognized_image = reshape(train_images{I,1}, h, w);
    imshow(recognized_image)
    title('Recognized image')
    fname = ['testimg',num2str(i),'.png'];
    saveas(gcf, fname);
end