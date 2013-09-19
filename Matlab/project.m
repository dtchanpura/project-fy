clc;
clear all;
close all;

imgt=imread('cameraman.tif');
wtr=imread('coins.png');
wtr1=imresize(wtr,[256 256]);
img=imgt;
wtr=wtr1;
for i=1:8
    
    temp1=imgt/2;
    temp2=wtr/2;
    
    a{i}=(temp1*2)-imgt;
    b{i}=(temp2*2)-wtr;
    
    imgt=imgt/2;
    wtr=wtr/2;
    
   
end
imgnew=255-((((((a{8}*2+a{7})*2+a{6})*2+a{5})*2+a{4})*2+a{3})*2+a{2})*2+a{1};

watermarked=255-((((((a{8}*2+a{7})*2+a{6})*2+a{5})*2+a{4})*2+(b{3}))*2+a{2})*2+b{1};
imtool(imgnew);
imtool(watermarked);
