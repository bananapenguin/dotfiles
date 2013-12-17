#!/bin/bash

DIR=$(cd $(dirname $0);pwd)

function create_link () {
	if [ -e $2 ]; then
		BACKUP=$2_bak
		NUM=1
		while [ -e $BACKUP$NUM ]
		do
			NUM=`expr $NUM + 1`
		done
		mv $2 $BACKUP$NUM
		echo "$2 が既に存在しているので $BACKUP$NUM として退避させました"
	fi
	ln -s $1 $2
}

create_link ${DIR}/bash_profile ~/.bash_profile
create_link ${DIR}/bashrc ~/.bashrc
create_link ${DIR}/vimrc ~/.vimrc
create_link ${DIR}/vim ~/.vim
create_link ${DIR}/hgrc ~/.hgrc
create_link ${DIR}/tmux.conf ~/.tmux.conf
