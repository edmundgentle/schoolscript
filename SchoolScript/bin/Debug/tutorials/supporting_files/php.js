var definitions={
	'instruction':['Instruction','A single command. Usually written on its own line. Ends with a semi colon (;).'],
	'executing':['Executing','Running a program or set of commands (a script).'],
	'program':['Program','A set of instructions which can be run standalone.'],
	'function':['Function','A named piece of code which can take in parameters and may return a variable.'],
	'variable':['Variable','A named piece of data used within a program or script'],
	'parameter':['Parameter/Argument','The variables passed into a function or method.'],
	'script':['Script','A set of instructions in a file which can be run.'],
	'method':['Method','A function within a class.'],
	'class':['Class','A collection of methods and attributes which make up a real world object.'],
	'attribute':['Attribute','A variable within a class. This has class-level scope.'],
	'scope':['Variable scope','The amount of visibility a variable can have. Can be global, class level or local.'],
	'local':['Local variable','A variable within a function or method. Only available from within that function. Is removed when the function stops running.'],
	'global':['Global variable','Available throughout the entire program. Must use the "global" keyword to access it from within a function.'],
	'private':['Private','A method or attribute which can\'t be accessed from outside the class.'],
	'public':['Public','A method or attribute which can be accessed from outside the class.'],
	'object':['Object','An instance of a class. The "new" keyword has been used, and it has been assigned to a variable. This variable has the type of "object".'],
	'iteration':['Iteration/Loop','A loop. Repeats a section of code a certain number of times based on a condition.'],
	'for':['FOR loop','Repeats a section of code a predefined number of times.'],
	'while':['WHILE loop','Runs a section of code while a condition is true. The code may never run at all.'],
	'dowhile':['DO WHILE loop','Runs a section of code while a condition is true. The code will run at least once.'],
	'selection':['Selection/IF statements','Uses a condition to see if a piece of code should run or not.'],
	'condition':['Condition','A Boolean equation which produces a single true or false outcome. Can be used in a loop or IF statement or to set a Boolean variable.'],
	'integer':['Integer','A whole number. Can be positive or negative.'],
	'double':['Double','Any number. Includes decimal values and negative numbers.'],
	'string':['String','Any textual value. Can contain numbers or punctuation. Must be  written within either single or double quote marks. To write quote marks, you must "escape" the character using a backslash "\\". For example:<div class="code">"Hello \\"world\\""</div>Produces<div class="code">Hello "world"</div>'],
	'boolean':['Boolean','Either true or false. True and false are both keywords and shouldn\'t be put within quote marks.'],
	'keyword':['Keyword','A word within a programming language which has been reserved for a specific task. For example "while", "for" or "if".'],
	'comment':['Comment','A piece of text within a program which is ignored and not run when the program runs. A comment starts with double slashes (//) and ends with the end of the line. Alternatively, they can start with /* and end with */ for blocks of comments.'],
	'array':['Array','A variable which contains a structure of variables.'],
	'foreach':['FOREACH loop','A way of looping through an array easily.'],
	'concatenate':['Concatenate','Join together two strings. This is done using a full stop character:<div class="code">"Hello " . "World"</div>'],
	'element':['Element','A variable within an array. It has a key and a value.'],
	'key':['Key/Index','A way of identifying an element within an array.'],
	'types':['Variable Types','What type of data can be stored within a variable. Can be integer (int), double, string, object or array. More are available.'],
	'oop':['Object Oriented Programming','A way of programming which uses objects and classes to express real-life objects.'],
	'constructor':['Constructor','A special method which creates an instance of an object. It sets default values for attributes within the object.'],
	'getter':['Getter','A special method which returns the value of a private attribute within a class.'],
	'setter':['Setter','A special method which sets (writes or saves) the value of a private attribute within a class.'],
	'instance':['Instance','An occurrence of a class (i.e. an object).'],
	'api':['API','Application Programming Interface. Allows for programs to communicate with each other. On web, common use is to pass data between different services.'],
	'json':['JSON','JavaScript Object Notation. A textual representation of a variable - usually an array.'],
	'url':['URL','Uniform Resource Locator. A web address. They start with http:// or https://. Examples would be http://www.google.com or http://en.wikipedia.org/wiki/PHP'],
	'timestamp':['UNIX Timestamp','The number of seconds since 1st January 1970 at midnight. Dates before this are represented by negative numbers.']
};
function previous(num) {
	scrollto(num-1);
}
function next(num) {
	scrollto(num+1);
}
function scrollto(num) {
	$('html, body').animate({
         scrollTop: $('#step_'+num).offset().top-50
     }, 'fast');
}
function define(term) {
	if( definitions[term] != null ) {
		word = definitions[term];
		apprise('<p><strong>'+word[0]+'</strong><p><i>'+word[1]+'</i></p>',{});
	}
}
$(function() {
	$('#title').disableSelection();
	$('.definition').attr('title','Click for definition');
});
