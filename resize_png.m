function resize_img()


[fin,pathin]=uigetfile('*.png');
imin=imread([pathin,fin]);

sizeout= inputdlg({'Choose number of rows','Choose number of columns'},...
    'Resize Image',1,{num2str(size(imin,2)),num2str(size(imin,1))});

imout=imresize(imin,[eval(sizeout{2}),eval(sizeout{1})]);

[fout,pout]=uiputfile('*.png');

imwrite(imout,[pout,fout],'PNG');