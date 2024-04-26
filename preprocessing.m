%% Script to reshape images
clear all;
close all;
clc;
cur_folder = pwd;
faces = fullfile(cur_folder, 'faces');
% train = fullfile(faces, 'train');
% test = fullfile(faces, 'test');
d = dir(faces);
% remove all files (isdir property is 0)
dfolders = d([d(:).isdir]);
% remove '.' and '..'
dfolders = dfolders(~ismember({dfolders(:).name},{'.','..'}));
% User-defined dimensions
h = 60;
w = 64;
for K = 1:size(dfolders,1)
    fprintf(dfolders(K,1).name);
    fprintf('\n');
    %
    if strcmp(dfolders(K,1).name,'an2i') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'an2i',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'at33') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'at33',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'boland') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
    %
    %
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'boland',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'bpm') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'bpm',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'ch4f') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'ch4f',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'cheyer') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'cheyer',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'choon') == 1
    %
    %
    %
    subfolder = fullfile(faces,dfolders(K,1).name);
    
    %
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'choon',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'danieln') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'danieln',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'glickman') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'glickman',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'karyadi') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'karyadi',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'kawamura') == 1
    %
    %
    %
    
    %
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'kawamura',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'kk49') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'kk49',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'megak') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'megak',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'mitchell') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'mitchell',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
    %
    %
    %
    end
    
    %
    elseif strcmp(dfolders(K,1).name,'night') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'night',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'phoebe') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'phoebe',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'saavik') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'saavik',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'steffi') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'steffi',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
    %
    %
    %
    
    %
        end
    elseif strcmp(dfolders(K,1).name,'sz24') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'sz24',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    elseif strcmp(dfolders(K,1).name,'tammo') == 1
        subfolder = fullfile(faces,dfolders(K,1).name);
        fprintf('subfolder :', subfolder)
        files = dir(subfolder);
        files = files(~ismember({files(:).name},{'.','..','.DS_Store'}));
        for M = 1:size(files,1)
            filename = files(M).name;
            filepath = fullfile(subfolder,filename);
            img = imread(filepath);
            rescaled_image=imresize(img,[h w]);
            figure; imshow(rescaled_image);
            img_name = fullfile(faces,'tammo',filename);
              saveas(gcf,img_name);
            imwrite(rescaled_image, img_name);
        end
    %
        close all;
    end
end