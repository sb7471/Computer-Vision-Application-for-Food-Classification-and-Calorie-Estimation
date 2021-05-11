% clc;
% clear all;
% close all;
addpath('support');
F=dir('TRAIN');
F=char(F.name);
sz=size(F,1)-2;
hh=waitbar(0,'Please wait system is training..');
for ii=1:sz
    st=F(ii+2,:);
    cd TRAIN
    I=imread(st);
    cd ..
    I=imresize(I,[256,256]);
    tm=IRCTF(I);
    FV(ii,:)=tm(:);
     if strcmp(st(1:4),'appl')==1
         group(ii)=1;
     end
     if strcmp(st(1:4),'Baby')==1
         group(ii)=2;
     end
     if strcmp(st(1:4),'Bana')==1
         group(ii)=3;
     end
     if strcmp(st(1:4),'Beet')==1
         group(ii)=4;
     end
     if strcmp(st(1:4),'Biry')==1
         group(ii)=5;
     end
     if strcmp(st(1:4),'Bitt')==1
         group(ii)=6;
     end
     if strcmp(st(1:4),'Blac')==1
         group(ii)=7;
     end  
     if strcmp(st(1:4),'Blue')==1
         group(ii)=8;
     end
     if strcmp(st(1:4),'Boil')==1
         group(ii)=9;
     end 
     if strcmp(st(1:4),'Bott')==1
         group(ii)=10;
     end 
     if strcmp(st(1:4),'Brin')==1
         group(ii)=11;
     end
     if strcmp(st(1:4),'Broc')==1
         group(ii)=12;
     end
     if strcmp(st(1:4),'Burg')==1
         group(ii)=13;
     end
     if strcmp(st(1:4),'Butt')==1
         group(ii)=14;
     end
     if strcmp(st(1:4),'Cabb')==1
         group(ii)=15;
     end
     if strcmp(st(1:4),'Caps')==1
         group(ii)=16;
     end
     if strcmp(st(1:4),'Carr')==1
         group(ii)=17;
     end
     if strcmp(st(1:4),'Caul')==1
         group(ii)=18;
     end
     if strcmp(st(1:4),'Cher')==1
         group(ii)=19;
     end
     if strcmp(st(1:4),'Chic')==1
         group(ii)=20;
     end
     if strcmp(st(1:4),'Choc')==1
         group(ii)=21;
     end
	  if strcmp(st(1:4),'Choi')==1
         group(ii)=22;
     end
     if strcmp(st(1:4),'Chol')==1
         group(ii)=23;
     end
     if strcmp(st(1:4),'Cone')==1
         group(ii)=24;
     end
     if strcmp(st(1:4),'Cori')==1
         group(ii)=25;
     end
     if strcmp(st(1:4),'corn')==1
         group(ii)=26;
     end
     if strcmp(st(1:4),'Cucu')==1
         group(ii)=27;
     end
     if strcmp(st(1:4),'cupc')==1
         group(ii)=28;
     end
     if strcmp(st(1:4),'curr')==1
         group(ii)=29;
     end
     if strcmp(st(1:4),'Dhok')==1
         group(ii)=30;
     end
     if strcmp(st(1:4),'Donu')==1
         group(ii)=31;
     end
     if strcmp(st(1:4),'Dosa')==1
         group(ii)=32;
     end
     if strcmp(st(1:4),'Farf')==1
         group(ii)=33;
     end
     if strcmp(st(1:4),'Fish')==1
         group(ii)=34;
     end
     if strcmp(st(1:4),'Fran')==1
         group(ii)=35;
     end
     if strcmp(st(1:4),'Fren')==1
         group(ii)=36;
     end
     if strcmp(st(1:4),'Frie')==1
         group(ii)=37;
     end
     if strcmp(st(1:4),'Fusi')==1
         group(ii)=38;
     end
     if strcmp(st(1:4),'Garl')==1
         group(ii)=39;
     end
     if strcmp(st(1:4),'Grap')==1
         group(ii)=40;
     end  
     if strcmp(st(1:4),'Grch')==1
         group(ii)=41;
     end
	 if strcmp(st(1:4),'Gree')==1
         group(ii)=42;
     end
     if strcmp(st(1:4),'Gula')==1
         group(ii)=43;
     end
     if strcmp(st(1:4),'Hota')==1
         group(ii)=44;
     end
     if strcmp(st(1:4),'Hotd')==1
         group(ii)=45;
     end
     if strcmp(st(1:4),'IDLY')==1
         group(ii)=46;
     end
     if strcmp(st(1:4),'Jale')==1
         group(ii)=47;
     end
     if strcmp(st(1:4),'Khan')==1
         group(ii)=48;
     end
     if strcmp(st(1:4),'kiwi')==1
         group(ii)=49;
     end
     if strcmp(st(1:4),'Lasa')==1
         group(ii)=50;
     end
     if strcmp(st(1:4),'lemo')==1
         group(ii)=51;
     end
     if strcmp(st(1:4),'Manc')==1
         group(ii)=52;
     end
     if strcmp(st(1:4),'Mang')==1
         group(ii)=53;
     end
     if strcmp(st(1:4),'Momo')==1
         group(ii)=54;
     end
     if strcmp(st(1:4),'Mush')==1
         group(ii)=55;
     end
     if strcmp(st(1:4),'Nood')==1
         group(ii)=56;
     end
     if strcmp(st(1:4),'Omel')==1
         group(ii)=57;
     end
     if strcmp(st(1:4),'Onio')==1
         group(ii)=58;
     end
     if strcmp(st(1:4),'Oran')==1
         group(ii)=59;
     end
     if strcmp(st(1:4),'Pani')==1
         group(ii)=60;
     end
     if strcmp(st(1:4),'Pann')==1
         group(ii)=61;
     end
     if strcmp(st(1:4),'Papa')==1
         group(ii)=62;
     end
     if strcmp(st(1:4),'Pavb')==1
         group(ii)=63;
     end
     if strcmp(st(1:4),'Pear')==1
         group(ii)=64;
     end
     if strcmp(st(1:4),'Peas')==1
         group(ii)=65;
     end
     if strcmp(st(1:4),'Penn')==1
         group(ii)=66;
     end
     if strcmp(st(1:4),'Pine')==1
         group(ii)=67;
     end
	 if strcmp(st(1:4),'Pizs')==1
         group(ii)=68;
     end
     if strcmp(st(1:4),'Pizza')==1
         group(ii)=69;
     end
     if strcmp(st(1:4),'Plum')==1
         group(ii)=70;
     end
     if strcmp(st(1:4),'Pome')==1
         group(ii)=71;
     end
     if strcmp(st(1:4),'Poor')==1
         group(ii)=72;
     end
     if strcmp(st(1:4),'Popc')==1
         group(ii)=73;
     end
     if strcmp(st(1:4),'Pota')==1
         group(ii)=74;
     end
     if strcmp(st(1:4),'Radd')==1
         group(ii)=75;
     end
     if strcmp(st(1:4),'Rasp')==1
         group(ii)=76;
     end
     if strcmp(st(1:4),'Redb')==1
         group(ii)=77;
     end
     if strcmp(st(1:4),'Redv')==1
         group(ii)=78;
     end
     if strcmp(st(1:4),'Ridg')==1
         group(ii)=79;
     end
     if strcmp(st(1:4),'Roti')==1
         group(ii)=80;
     end
     if strcmp(st(1:4),'Russ')==1
         group(ii)=81;
     end
     if strcmp(st(1:4),'samo')==1
         group(ii)=82;
     end
     if strcmp(st(1:4),'Sand')==1
         group(ii)=83;
     end
     if strcmp(st(1:4),'Sizz')==1
         group(ii)=84;
     end
     if strcmp(st(1:4),'Stia')==1
         group(ii)=85;
     end
     if strcmp(st(1:4),'Stic')==1
         group(ii)=86;
     end
     if strcmp(st(1:4),'Stra')==1
         group(ii)=87;
     end
     if strcmp(st(1:4),'sush')==1
         group(ii)=88;
     end
     if strcmp(st(1:4),'Swee')==1
         group(ii)=89;
     end
     if strcmp(st(1:4),'swwe')==1
         group(ii)=90;
     end
     if strcmp(st(1:4),'Taco')==1
         group(ii)=91;
     end
	 if strcmp(st(1:4),'Tmso')==1
         group(ii)=92;
     end
     if strcmp(st(1:4),'Toma')==1
         group(ii)=93;
     end
     if strcmp(st(1:4),'Upma')==1
         group(ii)=94;
     end
     if strcmp(st(1:4),'Vada')==1
         group(ii)=95;
     end
     if strcmp(st(1:4),'Vani')==1
         group(ii)=96;
     end
     if strcmp(st(1:4),'Vegg')==1
         group(ii)=97;
     end
     if strcmp(st(1:4),'Waff')==1
         group(ii)=98;
     end
     if strcmp(st(1:4),'Wate')==1
         group(ii)=99;
     end
     if strcmp(st(1:4),'Whit')==1
         group(ii)=100;
     end
     if strcmp(st(1:4),'Yell')==1
         group(ii)=101;
     end
    waitbar(ii/sz);
end
close(hh);
SS=multisvmtrain(FV,group);
save SS SS





    


    