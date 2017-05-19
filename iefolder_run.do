
	*Set standardized settings
	ieboilstart, v(11.1)
	`r(version)'
	
	*Folder globals
	global ief 			"C:\Users\WB462869\Documents\GitHub\ietoolkit"
	*global ief 			"C:\Users\Kristoffer\Documents\GitHub\ietoolkit"
	
	*Load the command
	qui do "$ief\functions.do"
	qui do "$ief\iefolder.do"
	*Set cd folder to catch and cd leakage
	cd "$ief\test\cdjunk"
	
	*Global to the project fodler in box
	global projectABC	"$ief\test\iefolder\testOutput\Project ABC Uganda"	
	
	*Clean up the folder fomr last run
	do "$ief\deletefolder.do"
	cap deleteFolder "$projectABC\DataWork"
	
******************************************************************************
	
	*Creat a new project
	iefolder new project 			, projectfolder("$projectABC")
	
	*Add a unit of observation
	iefolder new master students 	, projectfolder("$projectABC")
	iefolder new master schools 	, projectfolder("$projectABC")
	*iefolder new master students 	, projectfolder("$projectABC")
	
	
	*Create a new folder called baseline
	iefolder new round baseline		, projectfolder("$projectABC")
	
	*Create a new folder for endline with abbreviation EL
	iefolder new round endline		, projectfolder("$projectABC") abb("EL")

	*Show example of test for imput
	*iefolder new round baseline , projectfolder("$projectABC") 
	
	*Show that it is scalabe
	iefolder new round  midline_studnets 	, projectfolder("$projectABC") 	abb("ML_stud")
	iefolder new round  midline_teachers 	, projectfolder("$projectABC") 	abb("ML_tch") 
	iefolder new master teachers 			, projectfolder("$projectABC")
	iefolder new round  midline_schools 	, projectfolder("$projectABC")  abb("ML_schl")
	
	*Add a more unit of observations


