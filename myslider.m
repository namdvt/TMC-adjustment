function varargout = myslider(varargin)
addpath('getTMC/');
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @myslider_OpeningFcn, ...
                   'gui_OutputFcn',  @myslider_OutputFcn, ...
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


%% main
function myslider_OpeningFcn(hObject,eventdata,handles,varargin)
handles.output = hObject;

% Anchor points
setappdata(handles.figure1,'value1',0); 
setappdata(handles.figure1,'value2',25);
setappdata(handles.figure1,'value3',50); 
setappdata(handles.figure1,'value4',75);
setappdata(handles.figure1,'value5',100); 
setappdata(handles.figure1,'value6',125);
setappdata(handles.figure1,'value7',150); 
setappdata(handles.figure1,'value8',175);
setappdata(handles.figure1,'value9',200); 
setappdata(handles.figure1,'value10',255);

% HDR10 and HDR10+
set(handles.text12,'String','HDR10');
set(handles.text13,'String','HDR10+');

% Input image and initial TMC
i = imread('10\1_8.png');
i = max(i,1);
setappdata(handles.figure1,'inputImage',i);
inputTMC = 1:1:255;
setappdata(handles.figure1,'inputTMC',inputTMC);

% Update texts and slide positions
updateGUI(handles);
guidata(hObject,handles)

% Update handles structure
guidata(hObject, handles);
plot(handles.axes1,inputTMC)
handles.axes1.XLim = [0 255];
handles.axes1.YLim = [0 255];
xlabel(handles.axes1,'Input pixel value');
ylabel(handles.axes1,'Output pixel value')


% --- Outputs from this function are returned to the command line.
function varargout = myslider_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

%% Define components
% x = 0
function slider1_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value1',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text,'String',num2str(currval));
guidata(hObject,handles)

% x = 25
function slider2_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value2',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text2,'String',num2str(currval));
guidata(hObject,handles)

% x = 50
function slider3_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value3',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text3,'String',num2str(currval));
guidata(hObject,handles)

% x = 75
function slider4_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value4',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text4,'String',num2str(currval));
guidata(hObject,handles)

% x = 100
function slider5_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value5',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text5,'String',num2str(currval));
guidata(hObject,handles)

% x = 125
function slider6_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value6',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text6,'String',num2str(currval));
guidata(hObject,handles)

% x = 150
function slider7_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value7',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text7,'String',num2str(currval));
guidata(hObject,handles)

% x = 175
function slider8_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value8',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text8,'String',num2str(currval));
guidata(hObject,handles)

% x = 200
function slider9_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value9',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text9,'String',num2str(currval));
guidata(hObject,handles)

% x = 255
function slider10_Callback(hObject, eventdata, handles)
currval = get(hObject,'Value'); 
% Store application data
setappdata(handles.figure1,'value10',currval); 
updateFigure(hObject, eventdata, handles)
% Update text
set(handles.text10,'String',num2str(currval));
guidata(hObject,handles)

function slider1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function hdr10plusaddress_Callback(hObject, eventdata, handles)

function hdr10plusaddress_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%% Change TMC and figure
function updateFigure(hObject, eventdata, handles)
x = 0:1:255;
px = [0 25 50 75 100 125 150 175 200 255];
py = [0 25 50 75 100 125 150 175 200 255];

% Retrieve application data
value1 = getappdata(handles.figure1,'value1');
value2 = getappdata(handles.figure1,'value2');
value3 = getappdata(handles.figure1,'value3');
value4 = getappdata(handles.figure1,'value4');
value5 = getappdata(handles.figure1,'value5');
value6 = getappdata(handles.figure1,'value6');
value7 = getappdata(handles.figure1,'value7');
value8 = getappdata(handles.figure1,'value8');
value9 = getappdata(handles.figure1,'value9');
value10 = getappdata(handles.figure1,'value10');

% Fit value
px(1) = value1;
px(2) = value2;
px(3) = value3;
px(4) = value4;
px(5) = value5;
px(6) = value6;
px(7) = value7;
px(8) = value8;
px(9) = value9;
px(10) = value10;

fit = polyfit(py,px,4);
y  = polyval(fit,x);
y = uint8(y);
setappdata(handles.figure1,'proposedTMC',y);

% Plot
inputTMC = getappdata(handles.figure1,'inputTMC');
plotInputTMC = plot(handles.axes1,inputTMC);
hold on

plotProposedTMC = plot(handles.axes1, x, y,'r');
plot(handles.axes1, py, px,'or');
handles.axes1.XLim = [0 255];
handles.axes1.YLim = [0 255];
xlabel(handles.axes1,'Input pixel value');
ylabel(handles.axes1,'Output pixel value')
hold off
legend([plotProposedTMC, plotInputTMC],{'Proposed','HDR10/HDR10+'},'Location','NorthWest');


% Get output image
in = getappdata(handles.figure1,'inputImage');
out = y(in);
setappdata(handles.figure1,'outputImage',out);
setappdata(handles.figure1,'isOutput',true);

%show
displayimage(out, 'output')
% showImage(handles, out, 'output');

% Show image full screen
function showImage(handles, image, text)
image = insertText(image,[100 100],text,'FontSize',100);
try
close(getappdata(handles.figure1,'figure'));
catch
end
hFig = figure('Toolbar','none','Menubar','none');
hIm = imshow(image);
hSP = imscrollpanel(hFig,hIm); % Handle to scroll panel.
set(hSP,'Units','normalized','Position',[0 0 1 1]);
set(gcf, 'Position', get(0, 'Screensize'));
setappdata(handles.figure1,'figure',hFig); 

% --- flip images
function pushbutton2_Callback(hObject, eventdata, handles)
% Switch image
if (getappdata(handles.figure1,'isOutput') == false)
    displayimage(getappdata(handles.figure1,'outputImage'), 'output');
%     showImage(handles, getappdata(handles.figure1,'outputImage'), 'output');
else
    displayimage(getappdata(handles.figure1,'inputImage'), 'input');
%     showImage(handles, getappdata(handles.figure1,'inputImage'), 'input');
end

setappdata(handles.figure1,'isOutput',~getappdata(handles.figure1,'isOutput'));


% Save the TMC
function savebtn_Callback(hObject, eventdata, handles)
imageName = getappdata(handles.figure1,'imageName');

proposedTMC = getappdata(handles.figure1,'proposedTMC');
try
    % TMC
    dlmwrite(strcat(imageName,'_TMC.txt'), proposedTMC);

    % Plot
    inputTMC = getappdata(handles.figure1,'inputTMC');
    figure,plotInputTMC = plot(inputTMC);
    hold on
    plotProposedTMC = plot(proposedTMC,'r');

    xlim([0 255])
    ylim([0 255])
    xlabel('Input pixel value');
    ylabel('Output pixel value')
    hold off
    legend([plotProposedTMC, plotInputTMC],{'Proposed','HDR10/HDR10+'},'Location','NorthWest');


    saveas(plotInputTMC, strcat(imageName,'_TMC.png'));
    msgbox('Saved');
catch
    errordlg('Unexpected error occurred');
end



function hdr10address_Callback(hObject, eventdata, handles)

function hdr10address_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SaveTMimagebtn_Callback(hObject, eventdata, handles)
% outAddress = getappdata(handles.hdr10addre)
% (handles.figure1,'outputImage',out)

% generate TMC from HDR10 and HDR1o+
function generateTMCbtn_Callback(hObject, eventdata, handles)
% HDR10
HDR10Address = get(handles.hdr10address,'String');
HDR10Image = dpxread(HDR10Address);
HDR10Image = double(HDR10Image)*255/1023;
HDR10Image = uint8(HDR10Image);
HDR10Image = max(HDR10Image,1);

% HDR10+
HDR10PlusAddress = get(handles.hdr10plusaddress,'String');
HDR10PlusImage = imread(HDR10PlusAddress);
HDR10PlusImage = double(HDR10PlusImage)*1024/65535;

% non over enhanced HDR10+ image
a1 =     1.366e-05 ;
b1 =      2.505;
lum = a1*HDR10PlusImage.^b1;

a2 =     196.2  ;
b2 =      0.2303;
nonOverenhancedHDR10PlusImage = a2*lum.^b2;
nonOverenhancedHDR10PlusImage = double(nonOverenhancedHDR10PlusImage)/1024*255;

nonOverenhancedHDR10PlusImage = uint8(nonOverenhancedHDR10PlusImage);
nonOverenhancedHDR10PlusImage = max(nonOverenhancedHDR10PlusImage,1);

% get file name
imageName = strsplit(HDR10Address);
imageName = imageName(length(imageName));
imageName = strsplit(imageName{1},'.');
imageName = imageName(1);
setappdata(handles.figure1,'imageName',imageName{1});

% update TMC and input image to HDR10+
HDR10PlusTMC = getTMCbyHistogramMatching(HDR10Image,nonOverenhancedHDR10PlusImage);
setappdata(handles.figure1,'inputImage',nonOverenhancedHDR10PlusImage);
setappdata(handles.figure1,'inputTMC',HDR10PlusTMC);
plot(handles.axes1,HDR10PlusTMC);

% update anchor points
% Anchor points
setappdata(handles.figure1,'value1',HDR10PlusTMC(1)); 
setappdata(handles.figure1,'value2',HDR10PlusTMC(25));
setappdata(handles.figure1,'value3',HDR10PlusTMC(50));
setappdata(handles.figure1,'value4',HDR10PlusTMC(75));
setappdata(handles.figure1,'value5',HDR10PlusTMC(100));
setappdata(handles.figure1,'value6',HDR10PlusTMC(125));
setappdata(handles.figure1,'value7',HDR10PlusTMC(150));
setappdata(handles.figure1,'value8',HDR10PlusTMC(175));
setappdata(handles.figure1,'value9',HDR10PlusTMC(200));
setappdata(handles.figure1,'value10',HDR10PlusTMC(255));

updateGUI(handles);

function updateGUI(handles)
% Update GUI
% Update texts and slide positions
set(handles.text,'String',num2str(getappdata(handles.figure1,'value1')));
set(handles.text2,'String',num2str(getappdata(handles.figure1,'value2')));
set(handles.text3,'String',num2str(getappdata(handles.figure1,'value3')));
set(handles.text4,'String',num2str(getappdata(handles.figure1,'value4')));
set(handles.text5,'String',num2str(getappdata(handles.figure1,'value5')));
set(handles.text6,'String',num2str(getappdata(handles.figure1,'value6')));
set(handles.text7,'String',num2str(getappdata(handles.figure1,'value7')));
set(handles.text8,'String',num2str(getappdata(handles.figure1,'value8')));
set(handles.text9,'String',num2str(getappdata(handles.figure1,'value9')));
set(handles.text10,'String',num2str(getappdata(handles.figure1,'value10')));

set(handles.slider1,'Value',getappdata(handles.figure1,'value1'));
set(handles.slider2,'Value',getappdata(handles.figure1,'value2'));
set(handles.slider3,'Value',getappdata(handles.figure1,'value3'));
set(handles.slider4,'Value',getappdata(handles.figure1,'value4'));
set(handles.slider5,'Value',getappdata(handles.figure1,'value5'));
set(handles.slider6,'Value',getappdata(handles.figure1,'value6'));
set(handles.slider7,'Value',getappdata(handles.figure1,'value7'));
set(handles.slider8,'Value',getappdata(handles.figure1,'value8'));
set(handles.slider9,'Value',getappdata(handles.figure1,'value9'));
set(handles.slider10,'Value',getappdata(handles.figure1,'value10'));
