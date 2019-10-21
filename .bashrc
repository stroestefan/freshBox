# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias s="~/Downloads/sublime_text_3/sublime_text"
alias candrt="javac *.java && ./run-tests"
myJavaExercises="~/COMP16212"
myDSExercises="~/COMP18112"
my101Exercises="~/COMP10120"
myDBExercises="~/COMP23111"
mySEExercises="~/COMP23311"
myOSExercises="~/COMP25111"
myMLExercises="~/COMP24111"
myCExercises="~/COMP26120"

alias jk="cd $myJavaExercises"
alias ai="cd $myAIExercises"
alias ds="cd $myDSExercises"
alias dtb="cd $myDBExercises"
alias se="cd $mySEExercises"
alias os="cd $myOSExercises/ex10"
alias ml="cd $myMLExercises/ex3"
alias alg="cd $myCExercises/ex11"
alias ssa="cd ~/COMP25212/ex4"
alias ddc="cd ~/COMP28112/ex3"
alias gh="cd ~/COMP27112/ex3"
alias gt="cd ~/gitCompatibility/Testing-git-compatibility"


# ~/leetcode/startScript.sh
car() {
    javac $1'.java' && java $@
}