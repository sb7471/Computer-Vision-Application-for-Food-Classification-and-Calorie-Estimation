% this code is for caluclating performance 
function accuracy=accuracy_classification()
F=dir('TEST');
F=char(F.name)
sz=size(F,1)-2;
load SS
st{1}='apple';st{2}='Babycorn';st{3}='Banana';st{4}='Beetroot';st{5}='Biryani';st{6}='Bittergourd';st{7}='Blackforest';st{8}='Blueberry';st{9}='Boiled Egg';
st{10}='Bottlegourd';st{11}='Brinjal';st{12}='Broccoli';st{13}='Burger';st{14}='Butterscotch Cake';st{15}='Cabbage';
st{16}='Capsicum';st{17}='Carrot';st{18}='Cauliflower';st{19}='Cherry';st{20}='Chicken drumsticks';st{21}='Chocolate cake';
st{22}='Chocolate icecream';st{23}='CholeBhatura';st{24}='Cone icecream';st{25}='Coriander';st{26}='corn';
st{27}='Cucumber';st{28}='Cupcakes';st{29}='curry';st{30}='Dhokla';st{31}='Donuts';st{32}='Dosa';st{33}='Farafelle';
st{34}='Fish fry';st{35}='Frankie';st{36}='French fries';st{37}='Fried rice';st{38}='Fusili pasta';
st{39}='Garlic bread';st{40}='Grapes';st{41}='Green chutney';st{42}='Green chilli';st{43}='Gulab jamun';
st{44}='Hotandsour soup';st{45}='Hotdog';st{46}='IDLY';st{47}='Jalebi';st{48}='Khandvi';
st{49}='kiwi';st{50}='Lasagna';st{51}='lemon';st{52}='Manchuria';st{53}='Mango';st{54}='Momos';st{55}='Mushroom';
st{56}='Noodles';st{57}='Omelette';st{58}='Onion';st{59}='Orange';st{60}='Panipuri';st{61}='Paneer Tikka';
st{62}='Papaya';st{63}='Pavbhaji';st{64}='Pear';st{65}='Peas';st{66}='Penne pasta';st{67}='Pine apple';
st{68}='Pizza slice';st{69}='Pizza';st{70}='Plum';st{71}='Pomegranate';st{72}='Poori';st{73}='Popcorn';
st{74}='Potato';st{75}='Raddish';st{76}='Raspberry';st{77}='Red bellpepper';st{78}='red velvet cake';
st{79}='Ridge guord';st{80}='Roti';st{81}='Russian salad';st{82}='Samosa';st{83}='Sandwich';st{84}='Sizzler';
st{85}='Strawberry icecream';st{86}='Stick icecream';st{87}='Strawberry';st{88}='Sushi';st{89}='sweet corn soup';
st{90}='sweetcorn';st{91}='Tacos';st{92}='Tomato soup';st{93}='Tomato';st{94}='Upma';st{95}='Vada';
st{96}='Vanilla icecream';st{97}='Veggie salad';st{98}='Waffles';st{99}='Watermelon';st{100}='White rice';
st{101}='Yellow bellpepper';
cnt=0;t=0;
addpath(pwd);
for ii=1:sz
    cd TEST
    str=F(ii+2,:);    
    G=dir(str);
    G=char(G.name);
    sz2=size(G,1)-2;   
  for kk=1:sz2   
    cd(str)
    st2=G(kk+2,:);
    I=imread(st2);
    I=imresize(I,[256 256]);
    fq=IRCTF(I);
    rst1=multisvmtest(fq(:)',101,SS);
    rst1=rst1-1;
    str
    dst=st{rst1}
    dd=double(dst);
    dd=dd(dd~=32);
    stt=double(str);
    stt=stt(stt~=32);
    if strcmp(char(stt),char(dd))==1
        cnt=cnt+1;
    end
    t=t+1;
   cd ..
  end
  cd ..
end
accuracy=num2str((cnt/t*100));
disp(['The performance of the system is ',num2str((cnt/t*100))]);
    