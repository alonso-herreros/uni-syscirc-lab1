% Project 1: mixing music with fading
TheSting = audioread("audio\thesting.wav");
StarWars = audioread("audio\starwars.wav");

% Cut both to the same length
minLength = min(length(TheSting),length(StarWars));
TheSting = TheSting(1:minLength);
StarWars = StarWars(1:minLength);

n = (0:minLength-1)'; % Using transposition to make it vertical
M = length(n)/2; % By setting this to 2 there will be 2 cycles of back and forth fading (4 transitions)

%% Apply fading
s1 = (0.5 + 0.5*cos(2*pi*n/M));
TheSting_faded = TheSting .* s1;

s2 = (0.5 + 0.5*cos(2*pi*n/M + pi));
StarWars_faded = StarWars .* s2;

plot(n, s1, n, s2); %For testing purposes

x = TheSting_faded + StarWars_faded; %% Mix the two songs

playaudio(x); % Play the mixed song

