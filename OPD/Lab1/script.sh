ssh s335089@helios.se.ifmo.ru -p 2222

mkdir lab0 && cd lab0
mkdir -p empoleon3/crobat empoleon3/beartic empoleon3/squirtle empoleon3/shellder
mkdir -p magmortar5/seaking
mkdir -p sceptile9/poochyena sceptile9/sealeo sceptile9/raticate sceptile9/shellos
echo "Тип покемона DRAGONE NONE" > empoleon3/bagon
echo "weigth=101.4 height=63.0 
atk=6 def=7" > empoleon3/volcarona
echo "Тип диеты Nullivore" > litwick3
echo "Тип диеты 
Omnivore" > magmortar5/pawniard
echo "Живет Freshwater" > magmortar5/quagsire
echo "Ходы Aqua Tail Body
Slam Brine Counter Defense Curl Double-Edge Dive Dynamicpunch Focus
Punch Ice Punch Icy Wind Iron Defense Iron Tail Mega Kick Mega Punch
Mud-Slap Rollout Seismic Toss Sleep Talk Snore Water Pledge Zen
Headbutt" > magmortar5/wartortle
echo "Возможности Overland=4 Surface=1 Sky=6 Jump=3
Power2=0 Intelligence=3 Guster=0" > pidove0
echo "Способности Scratch Growl
Assist Sand-Attack Fury Swipes Pursuit Torment Fake Out Hone Claws
Assurance Slash Captivate Night Slash Snatch Nasty Plot Sucker 
Punch" > purrloin8
echo "Развитые способности Analytic" > sceptile9/staryu
 
chmod u=rwx,g=wx,o=rw empoleon3
chmod ugo=wx empoleon3/crobat
chmod 500 empoleon3/beartic
chmod u=wx,g=rwx,o=wx empoleon3/squirtle
chmod 444 empoleon3/bagon
chmod u=r,g-rwx,o-rwx empoleon3/volcarona
chmod 307 empoleon3/shellder
chmod ugo=r litwick3
chmod u=rwx,g=wx,o=wx magmortar5
chmod u-rwx,g=rw,o=w magmortar5/pawniard
chmod u=rx,go=rwx magmortar5/seaking
chmod 004 magmortar5/quagsire
chmod u=rw,g=w,o-rwx magmortar5/wartortle
chmod ug-rwx,o=r pidove0
chmod u-rwx,go=r purrloin8
chmod u=wx,g=wx,o=rx sceptile9
chmod u=rwx,g=rx,o=w sceptile9/poochyena
chmod u=rx,g=wx,o=rwx sceptile9/sealeo
chmod u=rw,g=w,o-rwx sceptile9/staryu
chmod u=rwx,g=rw,o=r sceptile9/raticate
chmod 711 sceptile9/shellos

ln -s empoleon3 Copy_31
chmod u+w magmortar5/seaking
cp litwick3 magmortar5/seaking
chmod u+w sceptile9/sealeo
chmod u+r empoleon3/crobat empoleon3/squirtle empoleon3/shellder
cp -r empoleon3 sceptile9/sealeo
ln -s litwick3 empoleon3/volcaronalitwick
ln purrloin8 empoleon3/volcaronapurrloin
chmod u+r magmortar5/quagsire
cat sceptile9/staryu magmortar5/quagsire > litwick3_65
chmod u-w magmortar5/seaking sceptile9/sealeo
chmod u-r empoleon3/crobat empoleon3/squirtle empoleon3/shellder magmortar5/quagsire


#ls -lR
wc -m purrloin8 | cat >> purrloin8 2>dev/null
ls -lR | grep "le" | sort -k 2 
cat -n ./*3 ./*/*3 ./*/*/*3 | sort -r 2>&1
cat ./*3 ./*/*3 ./*/*/*3 | sort -r 2>tmp/OPD
wc -m pidove0 | cat > pidove0 2>tmp/OPD
ls -R | grep "ba" | sort -r | tail -3 2>tmp/OPD

rm -rf litwick3
rm -rf empoleon3/bagon
rm -f Copy_*
rm -f empoleon3/volcaronapurrlo*
rmdir -f sceptile9
rmdir empoleon3/squirtle


