% function to calc PSD & Entropy of Image

function e = getEntropy(i, t, sym)

    % get power spectral density (psd)
    
    psd = log10(abs(fftshift(fft2(i)))+eps);
    
    % get FFT
    
    f = fft2(i);
    FFT = fftshift(f);
    
    F = abs(FFT);
    
    % apply threshold
    
    th = t;
    if(sym == '<')
        mask = mat2gray(psd) < th;
    end
    if(sym == '>')
        mask = mat2gray(psd) > th;
    end
    
    psdt = mask.*psd;
    psdt_img = real(ifft2(fftshift(mask.*FFT)));
    
    %figure(1); imshow(psdt, []);
    %figure; imshow(psdt_img, []);title(["PSD Power ", sym, int2str(t * 100), "%"],'fontsize',15)
    
    % return entropy val
    
    e = entropy(psdt_img);

endfunction
