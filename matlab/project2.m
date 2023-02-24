% Project 2: Add background music

bladerunner = audioread("audio\bladerunner.wav");
thirdman = audioread("audio\thirdman.wav");

tm = repmat(thirdman, 3, 1); % Repeat thirdman 3 times

midpoint = floor(length(tm)/2); % Find the midpoint of the new audio file
half_br_length = floor(length(bladerunner)/2); % Find half the length of bladerunner (offset from midpoint)

attenuation = ones(length(tm), 1); 
attenuation(midpoint-half_br_length:midpoint+half_br_length) = 0.25; % Set the attenuation to 0.25 for the bladerunner section

%plot(1:length(tm), attenuation); %Testing purposes

% Voice alignment
voice = zeros(length(tm), 1); 
voice(midpoint-half_br_length:midpoint+half_br_length-1) = bladerunner(1:2*half_br_length); % 1 sample was cut due to odd number of samples

finalAudio = tm.*attenuation + voice; % Add the two together

playaudio(finalAudio);
