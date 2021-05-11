clc
clear all;
close all;
%% 2D IMAGE TO 3D PRINTING
%  INPUT IMAGES: JPEG,JPG,TIFF,PNG,DICOM
% OUTPUT : 3D Points, 3D MESH, STL,STEP,IGS
%% Code Developed by SelvaKarna 
%  Code Questions: www.matlabpage.blogspot.in
%  
%  Chennai,India.
rgb=imread('c.jpg');
% figure,imshow(rgb)
gray=rgb2gray(rgb);
figure,imshow(gray)
title('Input Image')
% grayad=imadjust(gray,[0.1 0.3]);
thrbw=(gray<110 & gray >13);

bwer=imdilate(thrbw,strel('line',28,70));

bwopn=bwareaopen(bwer,200);
ind=find(bwopn==1);
[x,y,z]=ind2sub(size(bwopn),ind);
x1=x(1:20:length(x));
y1=y(1:20:length(x));
% z1=z(1:350:length(x));
z1=  sqrt(x1) .* cos(y1);

shp=alphaShape(x1,y1,z1);

shp=alphaShape(x,y,z,3,'HoleThreshold',2);

 figure,plot(shp,'EdgeColor','none');
 title('3D Image')
 axis normal
 [T,P]=alphaTriangulation(shp);
 stlwrite(triangulation(T(:,1:3),P),'skstl.stl')





  