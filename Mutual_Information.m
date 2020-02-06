% program computes mutual information of Template & Dataset images

file = "0000";
tfile1 = "TemplateIm_0000";
ext1 = "_noT_cropped.tif";
ext2 = "_tw_cropped.tif";
ext3 = ".png";

% table store mutual info values of images; T-wall & no T-wall
mi_tw(1:50) = 0;
mi_noT(1:50) = 0;

% table to store the averages of mutual info values
avg_mi_noT(1:50) = 0; 
avg_mi_tw(1:50) = 0;

for t = 1:50   % for each temp img
    
    temp = imread(["/home/oo/",tfile1,int2str(t),ext3]); % read temp img
    
    for i = 1:50                                                  
        noT = imread(["/home/oo/",file,int2str(i),ext1]);  % read noT img
        tw = imread(["/home/oo/",file,int2str(i),ext2]);  % read tw img
        
        mutInfo = MI(temp,noT); % find mut info of imgs
        mutInfo2 = MI(temp,tw); 
        
        mi_noT(i) = mutInfo;   % store mut info values
        mi_tw(i) = mutInfo2;
        pause(.01);
    end
    
    avg_mi_noT(t) = mean(mi_noT);  % store avg of mut info val
    avg_mi_tw(t) = mean(mi_tw);
end

% Display

figure;hold on;plot(avg_mi_noT);xlabel("Template Image");ylabel("MI avg");title("Average Mutual Info of Template and no-T wall Images");
figure;hold on;plot(avg_mi_tw);xlabel("Template Image");ylabel("MI avg");title("Average Mutual Info of Template and T wall Images");

%maxAvg_Temp_noT = find(avg_mi_noT == max(avg_mi_noT))
%minAvg_Temp_noT = find(avg_mi_noT == min(avg_mi_noT))
%maxAvg_Temp_tw = find(avg_mi_tw == max(avg_mi_tw))
%minAvg_Temp_tw = find(avg_mi_tw == min(avg_mi_tw))

[s_noT t_ind1] = sort(avg_mi_noT,"descend");
[s_tw t_ind2] = sort(avg_mi_tw,"descend");

disp("Top 5 Templates MI w/ no T-wall: ");t_ind1(1:5)
disp("Top 5 no T-wall MI values: ");s_noT(1:5)

disp("Top 5 Templates MI w/ T-wall: ");t_ind2(1:5)
disp("Top 5 T-wall MI values: ");s_tw(1:5)

for c = 1:5                                              
    tim = imread(["/home/oo/",tfile1,int2str(t_ind1(c)),ext3]);
    
    figure(2);imshow(tim),title(["Template Image ",int2str(t_ind1(c))]);
    
    pause(.01);
    
end
