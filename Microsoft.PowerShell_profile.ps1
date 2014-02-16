function Git-Status
{
	git status	
}

function Git-Log
{
	git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
}

function Git-Pull
{
	git pull --rebase
}

function Git-Push($arg1 , $arg2)
{
	if($arg2){
		git push $arg1 $arg2
		}
	else{
		git push origin $arg1
		}
}


Set-Alias st Git-Status
Set-Alias lg Git-Log
Set-Alias pull Git-Pull
Set-Alias push Git-Push