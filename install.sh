#!/bin/zsh
echo 'kekette()
 {
         if [ "$1" = "rouge" ]; 
         then
                 sh ~/.BePlEv/drawings/aouiouiR.sh
	 elif [ "$1" = "verte" ];
	 then
		 sh ~/.BePlEv/drawings/aouiouiV.sh
	 elif [ "$1" = "jaune" ];
	 then
		 sh ~/.BePlEv/drawings/aouiouiJ.sh
	 elif [ "$1" = "bleue" ];
	 then
		 sh ~/.BePlEv/drawings/aouiouiB.sh
	 elif [ "$1" = "rose" ];
	 then
		 sh ~/.BePlEv/drawings/aouiouiRO.sh
	 elif [ "$1" = "cyan" ];
	 then
		 sh ~/.BePlEv/drawings/aouiouiC.sh
	 else
		 sh ~/.BePlEv/drawings/aouioui.sh
	 fi
 
 }
' >> ~/.zshrc && source ~/.zshrc
