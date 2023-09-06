
start :-
  presentation,
  set_answers,
  find_specialization(Branch).


presentation:-
  write('Which career should I take or go for higher studies?'), nl,
  write('NOTE:-input the number shown next to option, followed by a dot (.) for answering the query'), nl, nl.


find_specialization(Branch) :-
  specialization(Branch), !.


:- dynamic(progress/2).



set_answers :-
  retract(progress(_, _)),
  fail.
set_answers.



circuits_design:-circuits(yes).
logical_thinking:-logic_or_nonlogic(logic).
imaginary_thinking:-logic_or_nonlogic(imaginary).


subject(ml,E):-
logical_thinking,
computers_or_circuits(computers),
solving_problems(solving_problems),
number_system(yes),
probability(yes),
algorithm(yes),
maths(yes),
discrete_maths(no),
extra_time(no),
info_security(no),
E='you are logical person.\c
you are also good in probability,problem solving and number_system. You have exprience of computers.\c
So, you can take Data Engineering as the specialization for higher studies.'.


subject(ai,E):-
logical_thinking,
discrete_maths(yes),
number_system(no),
solving_problems(solving_problems),
computers_or_circuits(computers),
maths(no),
algorithm(yes),
extra_time(no),
info_security(no),
E='you are logical person.\c
you are also good in discrete maths and problem solving. You have exprience of computers.\c
So, you can take Artificial Intelligence as the specialization for higher studies.'.


subject(others,E):-
logical_thinking,
discrete_maths(yes),
android(yes),
solving_problems(solving_problems),
number_system(yes),
maths(yes),
algorithm(yes),
probability(yes),
extra_time(yes),
computers_or_circuits(computers),
E='you have interest in app development,logical thinking, descrete_maths, solving_problems, number systems and probability.You have exprience of computers.\c
So you can go for without specialization for higher studies.'.


subject(appdevelopment,E):-
logical_thinking,
android(yes),
computers_or_circuits(computers),
solving_problems(no_solving_problems),
algorithm(yes),
extra_time(no),
info_security(no),
E='you have interest in app development and logical_thinking.You have exprience of computers.\c
So you can go for Mobile Computing as a specialization for higher studies.'.


subject(vlsidesign,E):-
logical_thinking,
circuits_design,
computers_or_circuits(circuits),
vlsi_design(yes),
solving_problems(solving_problems),
E='you have interest in vlsi design and logical thinking. You have experience of circuits as well.\c
So you can go for VLSI Design Flow as a specialization for higher studies.'.


subject(computer_security,E):-
logical_thinking,
info_security(yes),
probability(yes),
android(no),
solving_problems(solving_problems),
number_system(yes),
extra_time(no),
computers_or_circuits(computers),
maths(yes),
algorithm(no),
E='you have interest in number system,logical thinking, probability and information security. You have experience of computers as well.\c
So you can go for Computer Security as a specialization for higher studies .'.


subject(cp,E):-
imaginary_thinking,
computers_or_circuits(computers),
biology(yes),
maths(no),
number_system(yes),
solving_problems(no_solving_problems),

E='you have interest in number system,biology and algorithm. You have experience of computers as well.\c
So you can go for Computational Biology as a specialization for higher studies.'.

subject(csp,E):-
circuits_design,
solving_problems(solving_problems),
communication_system(yes),
vlsi_design(no),
computers_or_circuits(circuits),
E='you have interest in communication system and logical thinking. You have experience of circuits as well.\c
So you can go for Communication System and programming as a specialization for higher studies.'.

subject(gap,E):-
E='no database maintained',nl.

specialization(computer_science):-
subject(ml,E),
write('Recommended Branch: Computer Science'),nl,
write('You have experience in details of computers and software works.'),nl,
write(E),nl,
write('The careers that suitable for you are with ranking:'),nl,
  write('-1.) DATA SCIENTIST'),nl,
  write('-2.) DATA ANALYST'),nl,
  write('-3.) DATA RESEARCHER'),nl,
  write('-4.) SOFTWARE ENGINEER'),nl,
  write('-5.) QUALITY ASSURANCE ENGINEER'),nl.



specialization(computer_science):-
subject(ai,E),
write('Recommended Branch: Computer Science'),nl,
write('You have experience in details of computers and software works.'),nl,
write(E),nl,
write('The careers that suitable for you are with ranking:'),nl,
  write('-1.) AI ENGINEER'),nl,
write('-2.) DATA ENGINEER'),nl,
write('-3.) DATA ANALYST'),nl,
  write('-4.) NLP ENGINEER'),nl,
  write('-5.) DATA RESEARCHER'),nl,
  write('-6.) SOFTWARE ENGINEER'),nl,
  write('-7.) QUALITY ASSURANCE ENGINEER'),nl.


specialization(computer_science):-
subject(appdevelopment,E),
write('Recommended Branch: Computer Science'),nl,
write('You have experience in details of computers and software works.'),nl,
write(E),nl,
write('The careers that suitable for you are with ranking:'),nl,
  write('-1.) GAME DEVELOPMENT'),nl,
  write('-2.) MOBILE APP DEVELOPMENT'),nl,
  write('-3.) SYSTEM ENGINEER'),nl,
  write('-4.) SOFTWARE ENGINEER'),nl,
  write('-5.) QUALITY ASSURANCE ENGINEER'),nl.



specialization(computer_science):-
subject(computer_security,E),
write('Recommended Branch: Computer Science'),nl,
write('You have experience in details of computers and software works.'),nl,
write(E),nl,
write('The careers that suitable for you are with ranking:'),nl,
  write('-1.) COMPUTER SECURITY ENGINEER'),nl,
write('-2.) SYSTEM ENGINEER'),nl,
write('-3.) CLOUD SUPPORT ENGINEER'),nl,
  write('-4.) INFORMATION SECURITY ENGINEER'),nl,
  write('-5.) DATA SECURITY ENGINEER'),nl,
  write('-6.) SOFTWARE ENGINEER'),nl,
  write('-7.) QUALITY ASSURANCE ENGINEER'),nl.





specialization(computer_science):-
subject(others,E),
write('Recommended Branch: Computer Science'),nl,
write('You have experience in details of computers and software works.'),nl,
write(E),nl,
write('The careers that suitable for you are with ranking:'),nl,
write('-1.) AI ENGINEER'),nl,
write('-2.) DATA ENGINEER'),nl,
write('-3.) DATA ANALYST'),nl,
write('-4.) NLP ENGINEER'),nl,
write('-5.) DATA RESEARCHER'),nl,
write('-6.) DATA SCIENTIST'),nl,
write('-7.) COMPUTER SECURITY ENGINEER'),nl,
write('-8.) SYSTEM ENGINEER'),nl,
write('-9.) CLOUD SUPPORT ENGINEER'),nl,
write('-10.) INFORMATION SECURITY ENGINEER'),nl,
write('-11.) DATA SECURITY ENGINEER'),nl,
write('-12.) GAME DEVELOPMENT'),nl,
write('-13.) MOBILE APP DEVELOPMENT'),nl,
write('-14.) SOFTWARE ENGINEER'),nl,
write('-15.) QUALITY ASSURANCE ENGINEER'),nl.


specialization(electronics):-
subject(vlsidesign,E),
vlsi_design(yes),
write('Recommended Branch: Electronics and Communication Engineering'),nl,
write('You have experience in details of CIRCUITS and HARDWARE componenets.'),nl,
write(E),nl,
write('The careers that suitable for you are with ranking:'),nl,
write('-1.) EMBEDDING ENGINEER'),nl,
write('-2.) VLSI DESIGN ENGINEER'),nl,
write('-3.) VLSI FLOW ENGINEER'),nl,
write('-4.) QA ENGINEER'),nl,
write('-5.) VLSI DESIGN AND FLOW ENGINEER'),nl,
write('-6.) SYSTEM ENGINEER').

specialization(electronics):-
subject(csp,E),
write('Recommended Branch: Electronics and Communication Engineering'),nl,
write('You have experience in details of CIRCUITS and HARDWARE componenets.'),nl,
write(E),nl,
write('The careers that suitable for you are with ranking:'),nl,
write('-1.) EMBEDDING ENGINEER'),nl,
write('-2.) COMMUNICATION ENGINEER'),nl,
write('-3.) RTL DESIGNER'),nl,
write('-4.) GDS ENGINEER'),nl,
write('-5.) SYSTEM ENGINEER').



specialization(computational_bio):-
subject(cp,E),
write('Recommended Branch: Computational Biology'),nl,
write('You have experience in details of COMPUTERS and BIOLOGY.'),nl,
write(E),nl,
write('The careers that suitable for you are with ranking:'),nl,
write('-1.) COMPUTATIONAL ENGINEER'),nl,
write('-2.) SOFTWARE ENGINEER'),nl,
write('-3.) SYSTEM ENGINEER').


specialization(gap_year):-
subject(gap,E),
write('Recommendation: Gap Year '),nl,
write(E),nl,
write('Sorry. We cannot help you because you have a \ca variety of traits.').


query(computers_or_circuits):-
write('what would you prefer computers or circuit?'),nl.

query(extra_time):-
write('Do you have extra time to manage?'),nl.

query(logic_or_nonlogic):-
write('Are you having logical or imaginary thinking?'),nl.

query(solving_problems):-
write('Do you like problem solving?'),nl.

query(number_system):-
write('Do you like number_system?'),nl.

query(maths):-
write('do you like maths?'),nl.

query(probability):-
write('Do you like probability and stats?'),nl.

query(discrete_maths):-
write('Do you like discrete maths?'),nl.

query(vlsi_design):-
write('Are you interested in vlsi design?'),nl.

query(android):-
write('do you know about android?'),nl.

query(info_security):-
write('Do you interested in information security?'),nl.

query(communication_system):-
write('Do you like communication system?'),nl.

query(biology):-
write('Do you like biology?'),nl.

query(algorithm):-
write('Do you like algorithms design?'),nl.

query(circuits):-
write('do you like working on circuits?'),nl.






reply(logic):-
	write('I am logical person?').

reply(imaginary):-
	write('I am imaginary person?').

reply(solving_problems) :-
  write('Solving_Problem.').


reply(no_solving_problems) :-
  write('no Solving_Problem.').

reply(circuits):-
write('I am interested in circuits').

reply(computers):-
write('I am interested in computers').

reply(yes) :-
  write('Yes.').

reply(no) :-
  write('No.').



logic_or_nonlogic(Reply) :-
  progress(logic_or_nonlogic, Reply).
logic_or_nonlogic(Reply) :-
  \+ progress(logic_or_nonlogic, _),
  ask(logic_or_nonlogic, Reply, [logic,imaginary]).

extra_time(Reply) :-
  progress(extra_time, Reply).
extra_time(Reply) :-
  \+ progress(extra_time, _),
  ask(extra_time, Reply, [yes, no]).

circuits(Reply) :-
  progress(circuits, Reply).
circuits(Reply) :-
  \+ progress(circuits, _),
  ask(circuits, Reply, [yes, no]).

discrete_maths(Reply) :-
  progress(discrete_maths, Reply).
discrete_maths(Reply) :-
  \+ progress(discrete_maths, _),
  ask(discrete_maths, Reply, [yes, no]).

android(Reply) :-
  progress(android, Reply).
android(Reply) :-
  \+ progress(android, _),
  ask(android, Reply, [yes, no]).

maths(Reply) :-
  progress(maths, Reply).
maths(Reply) :-
  \+ progress(maths, _),
  ask(maths, Reply, [yes, no]).


computers_or_circuits(Reply) :-
  progress(computers_or_circuits, Reply).
computers_or_circuits(Reply) :-
  \+ progress(computers_or_circuits, _),
  ask(computers_or_circuits, Reply, [computers, circuits]).


solving_problems(Reply) :-
  progress(solving_problems, Reply).
solving_problems(Reply) :-
  \+ progress(solving_problems, _),
  ask(solving_problems, Reply, [solving_problems, no_solving_problems]).


number_system(Reply) :-
  progress(number_system, Reply).
number_system(Reply) :-
  \+ progress(number_system, _),
  ask(number_system, Reply, [yes, no]).


probability(Reply) :-
  progress(probability, Reply).
probability(Reply) :-
  \+ progress(probability, _),
  ask(probability, Reply, [yes, no]).

info_security(Reply) :-
  progress(info_security, Reply).
info_security(Reply) :-
  \+ progress(info_security, _),
  ask(info_security, Reply, [yes, no]).

vlsi_design(Reply) :-
  progress(vlsi_design, Reply).
vlsi_design(Reply) :-
  \+ progress(vlsi_design, _),
  ask(vlsi_design, Reply, [yes, no]).

communication_system(Reply) :-
  progress(communication_system, Reply).
communication_system(Reply) :-
  \+ progress(communication_system, _),
  ask(communication_system, Reply, [yes, no]).

biology(Reply) :-
  progress(biology, Reply).
biology(Reply) :-
  \+ progress(biology, _),
  ask(biology, Reply, [yes, no]).


algorithm(Reply) :-
  progress(algorithm, Reply).
algorithm(Reply) :-
  \+ progress(algorithm, _),
  ask(algorithm, Reply, [yes, no]).



ask(Question, Answer, Choices) :-
  query(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.

answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), reply(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).


parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).







