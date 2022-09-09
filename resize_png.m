function resize_img()
% Resize png files
% Run the function and follow the instructions to resize your png
% 
% Miguel Castaño 9/09/2022
%
% You may contact me at castano.arranz@gmail.com if this is of value and
% you are interested e.g. in additional formats or format conversion. 


[fin,pathin]=uigetfile('*.png');
imin=imread([pathin,fin]);
sizeout= inputdlg({'Choose number of rows','Choose number of columns'},...
    'Resize Image',1,{num2str(size(imin,2)),num2str(size(imin,1))});
imout=imresize(imin,[eval(sizeout{2}),eval(sizeout{1})]);
[fout,pout]=uiputfile('*.png');
imwrite(imout,[pout,fout],'PNG');