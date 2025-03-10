function ut=fargraster(in, metod)
%% LAB2, TASK3
%% Rastrerar en färgbild
%
% Rastrerar färgbilden, in, antingen enligt felspridning eller IMCDP.
%
% Observera att inbilden (in) är tänkt att vara normaliserad mellan 0 och
% 1.
%% Who has done it:
%
% Author: Same LiU-ID and name as in the Lisam submission
% Co-author: You can work in groups of max 2, this is the LiU-ID/name of
% the other member of the group
%
%% Syntax of the function
%      Input arguments:
%           in: the original input color image of type double scaled
%               between 0 and 1
%           metod: a string specifying which halftoning method should be
%           used. If method is 'errordif' then error diffusion should be
%           used. If method is 'imcdp' then IMCDP should be
%           used. Otherwise, a message has to be written.
%      Output arguments:
%            ut: The halftoned image
%
% You MUST NEVER change the first line
%
%% Basic version control (in case you need more than one attempt)
%
% Version: 1
% Date: today
%
% Gives a history of your submission to Lisam.
% Version and date for this function have to be updated before each
% submission to Lisam (in case you need more than one attempt)
%
%% General rules
%
% 1) Don't change the structure of the template by removing %% lines
%
% 2) Document what you are doing using comments
%
% 3) Before submitting make the code readable by using automatic indentation
%       ctrl-a / ctrl-i
%
% 4) your code should work for any given input arguments, if they are
%    fulfilling the conditions specified in the syntax of the function
%
% 5) Often you must do something else between the given commands in the
%       template
%
%% Here starts your code.
% Write the appropriate MATLAB commands right after each comment below.
%
%% Separating the input color image into its three channels
%

filt=[0 0 7;
       3 5 1]/16;
R = in(:,:,1);% The red channel of the input image
G = in(:,:,2); % The green channel of the input image
B = in(:,:,3); % The blue channel of the input image
%
%
%% Check which method to be used
%

if strcmp(metod, 'errordif')
     R_halftoned = errordif(R,filt);
     G_halftoned = errordif(G,filt);
     B_halftoned = errordif(B,filt);
     ut = cat(3,R_halftoned,G_halftoned,B_halftoned);

elseif strcmp(metod, 'imcdp')
    R_halftoned = imcdp(R);
    G_halftoned = imcdp(G);
    B_halftoned = imcdp(B);
    ut = cat(3,R_halftoned,G_halftoned,B_halftoned);

else
    disp('Error: The method should be either ''errordif'' or ''imcdp''.');
    ut = 0;
end


%if  % check if the method is 'errordif'
    % Halftone each channel separately by errordif (use Floyd-Steinberg's filter),
    % and then collect them in a color image, which is the output
    % of this function, called ut.
    %
%elseif % If the method is not 'errordif' check if the method is 'imcdp'
    % Halftone each channel separately by imcdp, and then collect them in
    % a color image, which is the output of this function, called ut.
    %
%else % if the method is neither 'errordif' nor 'imcdp', write a message and set
    % the output ut to zero.
    %
%end
%
%% Test your code
% Notice that your code has to work for any color image of any size.
% Notice that your input image (in) is supposed to be normalized between 0 and
% 1, so don't forget to do that before you call this function.
%