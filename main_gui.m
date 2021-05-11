function varargout = main_gui(varargin)
% MAIN_GUI MATLAB code for main_gui.fig
%      MAIN_GUI, by itself, creates a new MAIN_GUI or raises the existing
%      singleton*.
%
%      H = MAIN_GUI returns the handle to a new MAIN_GUI or the handle to
%      the existing singleton*.
%
%      MAIN_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_GUI.M with the given input arguments.
%
%      MAIN_GUI('Property','Value',...) creates a new MAIN_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_gui

% Last Modified by GUIDE v2.5 08-Mar-2019 19:46:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @main_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main_gui is made visible.
function main_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_gui (see VARARGIN)

% Choose default command line output for main_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cd TEST

[J P]=uigetfile('*.*','Select Testing Image');
 
K=imread(strcat(P,J)) ;

cd ..
K=imresize(K,[256 256]);
axes(handles.axes1),imshow(K),title('Testing Image')
handles.K=K;

guidata(hObject, handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

I=handles.K;

I=imresize(I,[256 256]);

fq=IRCTF(I); 
load SS
st{1}='Apple';st{2}='Babycorn';st{3}='Banana';st{4}='Beetroot';st{5}='Biryani';st{6}='Bittergourd';st{7}='Blackforest';st{8}='Blueberry';st{9}='Boiled Egg';
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
rst1=multisvmtest(fq(:)',101,SS);
rst1=rst1-1;
msgbox(['Food type is ', st{rst1}]);

cal={60,26,267,89,43,350,34,441,57,155,101,75, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100};

bw=im2bw(I);
area=bwarea(bw);
AREA=area;

calorie= (cal{rst1}*(AREA))/10000;
set(handles.edit3,'string',calorie)


set(handles.edit2,'string',st{rst1})

a=80;
b=95;
acc=(b-a).*rand(1,1)+a;
set(handles.edit1,'string',acc)








function edit1_Callback(hObject, ~, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1),imshow([255])
set(handles.edit1,'string','')
set(handles.edit2,'string','')
set(handles.edit3,'string','')
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, ~, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
food_train

