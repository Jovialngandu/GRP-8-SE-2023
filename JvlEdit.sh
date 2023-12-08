#!/usr/bin/bash
var1=$(zenity --info --title="JvlEdit" --text="<big><span color=\"red\"><b>\t\t\t\t\t\t \t<u> Bienvenu Dans JvlEdit</u></b></span> \n\n\n\t\t\t JvlEdit est un editeur de texte creer par l'entreprise GP8-SE.\n\n Cet utilitaire vous permet de creer de fichier et de les editer avec une interface facile a utiliser\n\n\n\n\n\n\n\n\n\n\t\t\t\t\t<i>CLIQUER SUR VALIDER POUR CONTINUER</i></big>" --width=800 --height=550)

if [ $1==0 ]
then
fichier=$(zenity --file-selection)
if [ $1==0 ]
then
IFS=$('\n')
retour=$(zenity --text-info --title="JvlEdit   $fichier" --filename=$fichier   --width=800 --height=500 --editable --font="arial" --checkbox="Enregistrer les modification" --auto-scroll)
echo $retour> $fichier
fi
fi
sleep 1
