% scale images

file = "0000";
ext1 = "_noT_resized.tif";
ext2 = "_tw_resized.tif";

for i = 1:50                                              
    im1 = imread(["/home/oo/",file,int2str(i),ext1]);     
    im2 = imread(["/home/oo/",file,int2str(i),ext2]);
    
    c1 = imcrop(im1,[144 164 92 114]);
    c2 = imcrop(im2,[144 164 92 114]);
    
    imwrite(c1,["0000",int2str(i),"_noT_cropped.tif"]);
    imwrite(c2,["0000",int2str(i),"_tw_cropped.tif"]);
    pause(.01);
    
end
