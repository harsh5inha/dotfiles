# color and prompt formatting for command line
orange=$(tput setaf 14);
yellow=$(tput setaf 71);
green=$(tput setaf 228);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]\n";
PS1+="\[${orange}\]\u";   		#username
PS1+="\[${white}\] at ";
PS1+="\[${yellow}\]\h";			#host
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\W ";			#working directory
PS1+="\[${white}\]\$ \[${reset}\]";	# '$' prompt (and reset color)


#Create alias so that it's easier to run a MongoDB server (store data in path, store logs in path, run in background as daemon).
alias mongod="mongod --dbpath ~/data/mongodb --logpath ~/data/log/mongodb/mongo.log --fork"