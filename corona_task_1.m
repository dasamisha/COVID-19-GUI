function varargout = corona_task_1(varargin)
% CORONA_TASK_1 MATLAB code for corona_task_1.fig
%      CORONA_TASK_1, by itself, creates a new CORONA_TASK_1 or raises the existing
%      singleton*.
%
%      H = CORONA_TASK_1 returns the handle to a new CORONA_TASK_1 or the handle to
%      the existing singleton*.
%
%      CORONA_TASK_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CORONA_TASK_1.M with the given input arguments.
%
%      CORONA_TASK_1('Property','Value',...) creates a new CORONA_TASK_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before corona_task_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to corona_task_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help corona_task_1

% Last Modified by GUIDE v2.5 15-May-2020 23:21:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @corona_task_1_OpeningFcn, ...
                   'gui_OutputFcn',  @corona_task_1_OutputFcn, ...
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


% --- Executes just before corona_task_1 is made visible.
function corona_task_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to corona_task_1 (see VARARGIN)

% Choose default command line output for corona_task_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes corona_task_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = corona_task_1_OutputFcn(hObject, eventdata, handles) 
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
popup_se1_index=get(handles.popupmenu1,'Value');
    
   load data.mat
   figure;
   xlabel('NUMBER OF DAYS');
   ylabel('NUMBER OF PATIENTS');
 switch popup_se1_index
       case 2
           x=data.dateRep(1:122);
           y=data.cases(1:122);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('GERMANY');
     case 3
          x=data.dateRep(124:244);
           y=data.cases(124:244);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('CHINA');
     case 4
         x=data.dateRep(246:365);
           y=data.cases(246:365);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('INDIA');
     case 5
         x=data.dateRep(367:487);
           y=data.cases(367:487);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('ITALY');
     case 6
         x=data.dateRep(489:608);
           y=data.cases(489:608);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('UNITED STATES OF AMERICA');
 end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
popup_se1_index=get(handles.popupmenu1,'Value');
    
   load data.mat
   figure;
   xlabel('NUMBER OF DAYS');
   ylabel('NUMBER OF DEATHS');
 switch popup_se1_index
       case 2
           x=data.dateRep(1:122);
           y=data.deaths(1:122);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('GERMANY');
           
           
     case 3
          x=data.dateRep(124:244);
           y=data.deaths(124:244);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('CHINA');
     case 4
         x=data.dateRep(246:365);
           y=data.deaths(246:365);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('INDIA');
     case 5
         x=data.dateRep(367:487);
           y=data.deaths(367:487);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('ITALY');
     case 6
         x=data.dateRep(489:608);
           y=data.deaths(489:608);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('UNITED STATES OF AMERICA');
 end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
popup_se1_index=get(handles.popupmenu1,'Value');
 
   load data.mat
   figure;
   xlabel('NUMBER OF DAYS');
   ylabel('NUMBER OF CASES');
 switch popup_se1_index
       case 2
           subplot(2,1,1);
           x=data.dateRep(1:122);
           y=data.cases(1:122);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('GERMANY');
           subplot(2,1,2);
           x1=data.dateRep(1:122);
           y1=data.deaths(1:122);
           bar(x1,y1);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('GERMANY');
     case 3
         subplot(2,1,1);
          x=data.dateRep(124:244);
           y=data.cases(124:244);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('CHINA');
           subplot(2,1,2);
           x=data.dateRep(124:244);
           y=data.deaths(124:244);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('CHINA');
     case 4
         subplot(2,1,1);
         x=data.dateRep(246:365);
           y=data.cases(246:365);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('INDIA');
           subplot(2,1,2);
           x=data.dateRep(246:365);
           y=data.deaths(246:365);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('INDIA');
           
     case 5
         subplot(2,1,1);
         x=data.dateRep(367:487);
           y=data.cases(367:487);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('ITALY');
           subplot(2,1,2);
           x=data.dateRep(367:487);
           y=data.deaths(367:487);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('ITALY');
     case 6
         subplot(2,1,1);
         x=data.dateRep(489:608);
           y=data.cases(489:608);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF PATIENTS');
           title('UNITED STATES OF AMERICA');
           subplot(2,1,2);
           x=data.dateRep(489:608);
           y=data.deaths(489:608);
           bar(x,y);
           xlabel('NUMBER OF DAYS');
           ylabel('NUMBER OF DEATHS');
           title('UNITED STATES OF AMERICA');
 end

function edit1_Callback(hObject, eventdata, handles)
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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
load ('data.mat')
contents = cellstr(get(hObject,'String'));
choice = contents{get(hObject,'Value')};
sum_c = 0;
sum_d = 0;
if (strcmp(choice,'MENU'))
    sum_c=0;
    sum_d=0;
    a=0;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
elseif (strcmp(choice,'GERMANY'))
    for x=1:122
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=1;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
elseif (strcmp(choice,'CHINA'))
    for x=124:244
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=2;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d) 
elseif (strcmp(choice,'INDIA'))
    for x=245:364
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=3;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
elseif (strcmp(choice,'ITALY'));
    for x=366:486
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=4;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
elseif (strcmp(choice,'UNITED STATES OF AMERICA'))
    for x=488:608
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=5;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
