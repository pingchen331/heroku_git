#!/bin/bash
#file1="$(pwd)/config/git/git-credentials"
#file2="$(pwd)/config/git/gitconfig"
#if [ !-e "$(pwd)config/git/git-credentials" || !-e "$(pwd)/config/git/gitconfig" ]
#if [ !-e $file1 ]
#then  
	read -p  "please enter your github username: " username
	read -p  "please enter your github email: " email
	read -s -p "please enter your github password: " pass
	echo "https://$username:$pass@github.com" > ./config/git/git-credentials
	cat > ./config/git/gitconfig <<EOF
[user]
	name = $username
	email = $email
[credential]
	helper = store
EOF
		
#fi

docker build -t="heroku_git" .
docker run -it --name heroku -v $(pwd)/config/heroku/netrc:/root/.netrc -v $(pwd)/config/git/git-credentials:/root/.git-credentials -v $(pwd)/config/git/gitconfig:/root/.gitconfig -p 5000:5000 heroku_git:latest /bin/bash
#docker run -it --name heroku -v $(pwd)/config/git/git-credentials:/root/.git-credentials -p 5000:5000 heroku_git:latest /bin/bash
