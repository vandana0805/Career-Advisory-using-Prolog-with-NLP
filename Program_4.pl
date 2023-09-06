find_specialization(Branch) :-consult('/content/drive/MyDrive/Extra/factbase.txt'),subject(Branch).


:-dynamic(logic_or_nonlogic/1).
:-dynamic(computers_or_circuits/1).
:-dynamic(solving_problems/1).
:-dynamic(number_system/1).
:-dynamic(probability/1).
:-dynamic(algorithm/1).
:-dynamic(maths/1).
:-dynamic(discrete_maths/1).
:-dynamic(extra_time/1).
:-dynamic(info_security/1).
:-dynamic(android/1).
:-dynamic(vlsi_design/1).
:-dynamic(biology/1).
:-dynamic(communication_system/1).
:-dynamic(circuits/1).



subject("Data Engineering"):-
logic_or_nonlogic(logic),
computers_or_circuits(computers),
solving_problems(solving_problems),
number_system(yes),
probability(yes),
algorithm(yes),
maths(yes),
discrete_maths(no),
extra_time(no),
info_security(no).

subject("Artificial Intelligence"):-
logic_or_nonlogic(logic),
discrete_maths(yes),
number_system(no),
solving_problems(solving_problems),
computers_or_circuits(computers),
maths(no),
algorithm(yes),
extra_time(no),
info_security(no).



subject("General Specialization"):-
logic_or_nonlogic(logic),
discrete_maths(yes),
android(yes),
solving_problems(solving_problems),
number_system(yes),
maths(yes),
algorithm(yes),
probability(yes),
extra_time(yes),
info_security(yes).


subject("Mobile Computing"):-
logic_or_nonlogic(logic),
android(yes),
computers_or_circuits(computers),
solving_problems(no_solving_problems),
algorithm(yes),
extra_time(no),
info_security(no).


subject("Vlsi Design"):-
logic_or_nonlogic(logic),
circuits(yes),
computers_or_circuits(circuits),
vlsi_design(yes),
solving_problems(solving_problems).


subject("Computer Security"):-
logic_or_nonlogic(logic),
info_security(yes),
probability(yes),
android(no),
solving_problems(solving_problems),
number_system(yes),
extra_time(no),
computers_or_circuits(computers),
maths(yes),
algorithm(no).


subject("Computational Biology"):-
logic_or_nonlogic(imaginary),
computers_or_circuits(computers),
biology(yes),
maths(no),
number_system(yes),
solving_problems(no_solving_problems).



subject("Communication and Programming"):-
circuits(yes),
solving_problems(solving_problems),
communication_system(yes),
vlsi_design(no),
computers_or_circuits(circuits).


subject("gap"):-nl.
