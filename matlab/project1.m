TheSting = audioread("audio\thesting.wav");
StarWars = audioread("audio\starwars.wav");

minLength = min(length(TheSting),length(StarWars));

TheSting = TheSting(1:minLength);
StarWars = StarWars(1:minLength);

n = 0:minLength-1;
M = length(n)/2;

s1 = (0.5 + 0.5*cos(2*pi*n/M));
TheSting_faded = TheSting .* s1';

s2 = (0.5 + 0.5*cos(2*pi*n/M + pi));
StarWars_faded = StarWars .* s2';

%plot(n, s1, n, s2);

x = TheSting_faded + StarWars_faded;

playaudio(x);

