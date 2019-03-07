#!/bin/bash



print_kekette()

{

	clear

	printf "${color}\033[5;0H${posX}                                _¸„„„„_\n${posX}                            „--~*'¯…….'\\n${posX}                          („-~~--„¸_….,/ì'\n${posX}                      ¸„-^\"¯ :::::¸-¯\"¯/'\n${posX}                  ¸„„-^\"¯:::::::'\\¸„„,-\"\n${posX}**¯¯¯'^^~-„„„----~^*'\"¯::::::::::¸-\"\n${posX}.:.:.:.:.„-^\":::::::::::::::::„-\"\n${posX}:.:.:.:.:.:.:.:.::::::::::¸„-^¯\n${posX}.::.:.:.:.:.:.:::::::¸„„-^¯\n${posX}:.'::'\\ :::::::;¸„„-~\"\n${posX}:.:.:::\"-„\"\"***/*'ì¸'¯\n${posX}:.':::::\"-„ :::\"\\n${posX}.:.:.:::::\" :::: \\,\n${posX}:.:::::::::::::: 'Ì\n${posX}: :::::::, :::::::/\n${posX}\"-„_::::_„-*__„„~\"\n${reset}"

}

get_color()

{

	reset="\033[0m"

	if [ "$1" == "noire" ]; then

		color="\033[30m"

	elif [ "$1" == "rouge" ]; then

		color="\033[31m"

	elif [ "$1" == "verte" ]; then

		color="\033[32m"

	elif [ "$1" == "jaune" ]; then

		color="\033[33m"

	elif [ "$1" == "bleue" ]; then

		color="\033[34m"

	elif [ "$1" == "magenta" ]; then

		color="\033[35m"

	elif [ "$1" == "cyan" ]; then

		color="\033[36m"

	elif [ "$1" == "blanche" ]; then

		color="\033[37m"

	elif [ -n "$1" ]; then

		printf "\033[38;2;255;33;33mError: la couleur \"$1\" n'est pas valide$reset\nListe des couleurs:\nnoire\nrouge\nverte\njaune\nbleue\nmagenta\ncyan\nblanche\n"

		exit 1

	else

		color="\033[0m"

	fi

}

magic()
{
	color_list=("rouge" "verte" "jaune" "bleue" "magenta" "cyan" "blanche")
	n=${#color_list[*]}
	i=0

	 while sleep 0.1; do
		 get_color ${color_list[i++%n]}
		 print_kekette
	 done
}

magic_run()
{
	color_list=("rouge" "verte" "jaune" "bleue" "magenta" "cyan" "blanche")
	n=${#color_list[*]}
	i=0

	 while sleep 0.1; do
		 posX="${posX} "
		 if ! (( i % 90 )); then
			 posX=""
		 fi
		 get_color ${color_list[i++%n]}
		 print_kekette
	 done
}

usage()

{
	printf "usage: kekette -c <couleur>\n"
	printf "       kekette -m\n"
}



print_help()

{

	usage

	printf "help"

}



get_option()

{

	while [[ $# -gt 0 ]]; do

		arg="$1"

		case $arg in

			-c|--color)

				get_color $2

				shift

				shift

				;;

			-m|--magique)

				paplay ~/.BePlEv/running-in-the-90s.ogg &

				magic &

				sleep 25

				kill "$!"

				magic_run

				exit

				;;

			-h|--help)

				print_help

				exit

				;;

			*)

				printf "kekette: option invalide \'$arg\'\n"

				printf "Saisissez « kekette --help » pour plus d\'informations.\n"

				usage

				exit 1

				;;

		esac

	done

}

posX=""

get_option $@

print_kekette
