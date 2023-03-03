% Project 2: Add background music
bladerunner = audioread("..\audio\bladerunner.wav");
thirdman = audioread("..\audio\thirdman.wav");

tm = repmat(thirdman, 3, 1); % Repeat thirdman 3 times

midpoint = floor(length(tm)/2); % Find the midpoint of the new audio file
half_br_length = floor(length(bladerunner)/2); % Find half the length of bladerunner (offset from midpoint)

attenuation = ones(length(tm), 1); 
% Set the attenuation to 0.25 for the bladerunner section
attenuation(midpoint-half_br_length:midpoint+half_br_length) = 0.25;
plot(attenuation);

%plot(1:length(tm), attenuation); %Testing purposes

% Voice alignment
voice = zeros(length(tm), 1); 
voice(midpoint-half_br_length:midpoint+half_br_length-1) = bladerunner(1:2*half_br_length);
% 1 sample was cut due to having an odd number of samples and not being able to split it evenly

finalAudio = tm.*attenuation + voice; % Add the two together

playaudio(finalAudio);

% Plot the mixed song
figure;
%stem(0:length(finalAudio)-1, finalAudio);
plot(0:length(finalAudio)-1, finalAudio); %Plot looks better visually

energy = sum(finalAudio.^2) % Calculate the energy of the mixed song
power = mean(finalAudio.^2) % Calculate the power of the mixed song. It's equal to energy/length(x)

audiowrite("..\audio\project2.wav", finalAudio, 11025); % Write the mixed song to a file
