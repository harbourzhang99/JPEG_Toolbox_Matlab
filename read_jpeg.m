
% 清空工作区 clear the workspace
clear;clc;

% 将文件夹添加到工作路径  add work path
addpath('.\jpegtbx_1.4');

% 读取您的JPEG图像   decode your JPEG image
% jobj就是该jpeg图像的结构体   jobj is this JPEG image structure
jobj = jpeg_read('W.jpg'); 

% 读取量化系数 
DCT = jobj.coef_arrays{1}; % DCT plane

% 写入JPEG图像
jobj.coef_arrays{1} = DCT;

% 编码形式
jobj.optimize_coding = 1;

% 其中jobj是图像的结构体
jpeg_write(jobj,'W.jpg');