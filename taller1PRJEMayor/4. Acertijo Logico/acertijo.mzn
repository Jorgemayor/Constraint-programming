% LIBRARIES
include "alldifferent.mzn";
include "globals.mzn";

% VARIABLES

%First names
var 24..26: juan;
var 24..26: dario;
var 24..26: oscar;

%Last names
var 24..26: gonzalez;
var 24..26: garcia;
var 24..26: lopez;

%Music
var 24..26: clasica;
var 24..26: pop;
var 24..26: jazz;


%CONSTRAINTS

constraint juan > gonzalez /\ gonzalez != clasica;
constraint pop != garcia /\ pop != 24;
constraint oscar != lopez /\ oscar = 25;
constraint dario != jazz;

%Avoid same persons with equal age o likes.
constraint alldifferent([juan, dario, oscar]);
constraint alldifferent([gonzalez,garcia,lopez]);
constraint alldifferent([clasica,pop,jazz]);

%Searchs until satisfy (if its possible):
solve satisfy;