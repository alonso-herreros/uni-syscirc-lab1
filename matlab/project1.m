TheSting = audioread("thesting.wav");
StarWars = audioread("starwars.wav");

minLength = min(length(TheSting),length(StarWars))

TheSting = TheSting(1:minLength);
StarWars = StarWars(1:minLength);

n = 0:minLength-1;