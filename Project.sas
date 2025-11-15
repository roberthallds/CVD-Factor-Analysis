data cardio;
    infile "&path/mriCardioVars.csv"
           dsd dlm=',' firstobs=2 missover;
    input age weight height packyrs yrsquit alcoh physact ldl alb crt plt sbp aai fev dsst atrophy whgrd numinf volinf;
run;

proc factor data=cardio method=prin nfact=7 scree res rotate=varimax;
	var age weight height packyrs yrsquit alcoh physact ldl alb crt plt sbp aai fev dsst atrophy numinf volinf;
run;