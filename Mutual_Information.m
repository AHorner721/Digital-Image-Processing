% Mutual Information of 2 Gray Images

function mutual_info = MI(img1, img2)

    pkg load statistics   % needed to use hist3 function

    x = double(img1(:)) +1;         
    y = double(img2(:)) +1;         
    total_elm = numel(img1) + numel(img2);
    
    X = [x y];
    joint_hist = hist3(X,"NBINS",[256 256]); % create 2D histogram of img 1 & 2

    joint_prob = joint_hist/total_elm;
    rm_zero = joint_hist ~=0;               % remove zeros from joint hist
    joint_prob_nz = joint_prob(rm_zero);

    jointEntropy = -sum(joint_prob_nz.*log2(joint_prob_nz));

    mutual_info = entropy(img1) + entropy(img2) - jointEntropy; % return mutual information
    
    %imshow(joint_hist);
    
endfunction
