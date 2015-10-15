0.3::rain.
0.5::wind.
0.5::umbrella.
0.5::raincoat.

broken_umbrella :- umbrella, rain, wind.
dry :- rain, raincoat.
dry :- rain, umbrella, not broken_umbrella.
dry :- not(rain).

object(umbrella).
object(raincoat).
decision(X) :- object(X).

utility(broken_umbrella, -40).
utility(raincoat, -20).
utility(umbrella, -2).
utility(dry, 60).
% utility(dry, 20).
