#!/bin/bash


isim="safak
tolga
sakir
mahmut
kanepe
koltuk
cilek
elma
top
sandalye
masa
kalem
bukalemun
maymun
at
esek
recel
kutu"

sifat="iri
uzun
kisa
zayif
mavi
salak
kilolu
bencil
kusursuz
kizgin
parlak
isiltili
guzel
cirkin
iradeli
igrenc
manyak
deli
kirli
temiz"

names="andrew
harden
mike
ball
car
sofa
child
bread
pencil
easer
bird
fish
dog
cat
mause"

adjs="good
awesome
wonderfull
ugly
tall
short
clean
dirty
suddenly
black
blue"

function main(){

	case $1 in
	"tr")

		name=($isim)                
		adj=($sifat)
		;;
	"en")
		name=($names)
		adj=($adjs)
		;;
	*)
		echo "en ya da tr giriniz"
		;;
	esac

	num_name=${#name[*]}        
	num_adj=${#adj[*]}

	Random
}

function Random(){

	for (( i=0; i < $sayi; ))
	do
		new_dir="${adj[$((RANDOM%num_adj))]} ${name[$((RANDOM%num_name))]}"
		if [ ! -d $HOME/abc/"$new_dir" ]; then
			mkdir $HOME/odev/"$new_dir"
        		echo "$new_dir oluşturuldu"
        		((i=i+1))
		fi
	done
}
sayi=$2
main $1 $2
exit 0
