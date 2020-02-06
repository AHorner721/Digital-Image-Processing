% Program plots the Entropy Levels of Images masked with PSD threshold above and below 1 - 100%.

file = "kw_delta23000";
file2 = "kw_delta2300";
file3 = "0000";
ext = "_B5_RES.tif";
ext2 = "_noT_RES.tif";
th =.1;
l = "<";
g = ">";

eL = ones(23,10);   % no bar < entropy val matrix
eG = ones(23,10);   % no bar > entropy val matrix
eBL = ones(22,10);
eBG = ones(22,10);


for a = 1:9                                         % loop thru T-Bar img 0-9
    img = imread(["/home/oo/",file,int2str(a),ext]);
    
    for i = 1:10                                    % get < th values
        
        ent = getEntropy(img, th, l);  %cal entropy for '<'
        eBL(a,i) = ent;
        %disp(th)
        th = th + .1;
        pause(.03);
    end

    th = .1;

    for j = 1:10                                    % get > th values
        
        ent = getEntropy(img, th, g);  % cal entropy for '>'
        %egrt(j) = ent;
        eBG(a,j) = ent;
        %disp(th)
        th = th + .1;
        pause(.03);
    end
    th = .1;
    pause(.03);
end

th =.1;

for a = 10:19                          % loop thru T-Bar img 10-19
    img = imread(["/home/oo/",file2,int2str(a),ext]);
    
    for i = 1:10                                    % get < th values
        %img = imread("kw_delta230001_B5_RES.tif");
        ent = getEntropy(img, th, l);  %cal entropy for '<'
        eBL(a,i) = ent;
        %disp(th)
        th = th + .1;
        pause(.03);
    end

    %min_el = min(eless);
    th = .1;

    for j = 1:10                                                 % get > th values
        %img = imread("kw_delta230001_B5_RES.tif");
        ent = getEntropy(img, th, g);  % cal entropy for '>'
        %egrt(j) = ent;
        eBG(a,j) = ent;
        %disp(th)
        th = th + .1;
        pause(.03);
    end
    th = .1;
    pause(.03);
end

for a = 20:23           %loop thru 20-23
    %imread
        img = imread(["/home/oo/",file2,int2str(a),ext]);
    
    for i = 1:10                                              
        %img = imread("kw_delta230001_B5_RES.tif");
        ent = getEntropy(img, th, l);  %cal entropy for '<'
        eBL(a,i) = ent;
        %disp(th)
        th = th + .1;
        pause(.03);
    end
    
th = .1;

    for j = 1:10                                                
        %img = imread("kw_delta230001_B5_RES.tif");
        ent = getEntropy(img, th, g);  % cal entropy for '>'
        %egrt(j) = ent;
        eBG(a,j) = ent;
        %disp(th)
        th = th + .1;
        pause(.03);
    end
    th = .1;
    pause(.03);
end
                                % Plot T-Bar Entropy Levels < & > Threshold
figure;hold on;plot(eBL(1,1:10));plot(eBL(2,1:10));plot(eBL(3,1:10));plot(eBL(4,1:10));plot(eBL(5,1:10));plot(eBL(6,1:10));plot(eBL(7,1:10));plot(eBL(8,1:10));plot(eBL(9,1:10));plot(eBL(10,1:10));plot(eBL(11,1:10));plot(eBL(12,1:10));plot(eBL(13,1:10));plot(eBL(14,1:10));plot(eBL(15,1:10));plot(eBL(16,1:10));plot(eBL(17,1:10));plot(eBL(18,1:10));plot(eBL(19,1:10));plot(eBL(20,1:10));plot(eBL(21,1:10));plot(eBL(22,1:10));plot(eBL(23,1:10));xlabel("threshold level(%)");ylabel("Entropy Level");title("T-Bar Entropy Values below (<) Threshold");legend("kw230001","kw230002","kw230003","kw230004","kw230005","kw230006","kw230007","kw230008","kw230009","kw2300010","kw2300011","kw2300012","kw2300013","kw2300014","kw2300015","kw2300016","kw2300017","kw2300018","kw2300019","kw2300020","kw2300021","kw2300022","kw2300023");

figure;hold on;plot(eBG(1,1:10));plot(eBG(2,1:10));plot(eBG(3,1:10));plot(eBG(4,1:10));plot(eBG(5,1:10));plot(eBG(6,1:10));plot(eBG(7,1:10));plot(eBG(8,1:10));plot(eBG(9,1:10));plot(eBG(10,1:10));plot(eBG(11,1:10));plot(eBG(12,1:10));plot(eBG(13,1:10));plot(eBG(14,1:10));plot(eBG(15,1:10));plot(eBG(16,1:10));plot(eBG(17,1:10));plot(eBG(18,1:10));plot(eBG(19,1:10));plot(eBG(20,1:10));plot(eBG(21,1:10));plot(eBG(22,1:10));plot(eBG(23,1:10));xlabel("threshold level(%)");ylabel("Entropy Level");title("T-Bar Entropy Values above(>) Threshold");legend("kw230001","kw230002","kw230003","kw230004","kw230005","kw230006","kw230007","kw230008","kw230009","kw2300010","kw2300011","kw2300012","kw2300013","kw2300014","kw2300015","kw2300016","kw2300017","kw2300018","kw2300019","kw2300020","kw2300021","kw2300022","kw2300023");
th = .1;

for b = 1:23                                                 % loop thru 1-9 No T-Bar imgs 
    
    img = imread(["/home/oo/",file3,int2str(b),ext2]);
    
    for q = 1:10
        %img = imread("00001_noT_RES.tif");
        ent = getEntropy(img, th,l);
        eL(b,q) = ent;
        th = th + .1;
        pause(.03);
    end
    
    th = .1;
    
    for r = 1:10
        %img = imread("00001_noT_RES.tif");
        ent = getEntropy(img, th,g);
        eG(b,r) = ent;
        th = th + .1;
        pause(.03);
    end    

    th = .1;
    pause(.05);
end
                                %Plot no-T Entropy Levels for < & > Threshold
figure;hold on;plot(eL(1,1:10));plot(eL(2,1:10));plot(eL(3,1:10));plot(eL(4,1:10));plot(eL(5,1:10));plot(eL(6,1:10));plot(eL(7,1:10));plot(eL(8,1:10));plot(eL(9,1:10));plot(eL(10,1:10));plot(eL(11,1:10));plot(eL(12,1:10));plot(eL(13,1:10));plot(eL(14,1:10));plot(eL(15,1:10));plot(eL(16,1:10));plot(eL(17,1:10));plot(eL(18,1:10));plot(eL(19,1:10));plot(eL(20,1:10));plot(eL(21,1:10));plot(eL(22,1:10));plot(eL(23,1:10));xlabel("threshold level(%)");ylabel("Entropy Level");title("No T-Bar Entropy Values below (<) Threshold");legend("00001","00002","00003","00004","00005","00006","00007","00008","00009","000010","000011","000012","000013","000014","000015","000016","000017","000018","000019","000020","000021","000022","000023");

figure;hold on;plot(eG(1,1:10));plot(eG(2,1:10));plot(eG(3,1:10));plot(eG(4,1:10));plot(eG(5,1:10));plot(eG(6,1:10));plot(eG(7,1:10));plot(eG(8,1:10));plot(eG(9,1:10));plot(eG(10,1:10));plot(eG(11,1:10));plot(eG(12,1:10));plot(eG(13,1:10));plot(eG(14,1:10));plot(eG(15,1:10));plot(eG(16,1:10));plot(eG(17,1:10));plot(eG(18,1:10));plot(eG(19,1:10));plot(eG(20,1:10));plot(eG(21,1:10));plot(eG(22,1:10));plot(eG(23,1:10));xlabel("threshold level(%)");ylabel("Entropy Level");title("No T-Bar Entropy Values below (>) Threshold");legend("00001","00002","00003","00004","00005","00006","00007","00008","00009","000010","000011","000012","000013","000014","000015","000016","000017","000018","000019","000020","000021","000022","000023");

%---------------------------------------------------------------------------------------------
% display ifft power level
%img = imread("file_name_here");
%show_ifft(img,"threshold#here","g/l");
