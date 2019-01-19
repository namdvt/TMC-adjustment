function varargout = displayimage(varargin)
% DISPLAYIMAGE MATLAB code for displayimage.fig
%      DISPLAYIMAGE, by itself, creates a new DISPLAYIMAGE or raises the existing
%      singleton*.
%
%      H = DISPLAYIMAGE returns the handle to a new DISPLAYIMAGE or the handle to
%      the existing singleton*.
%
%      DISPLAYIMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISPLAYIMAGE.M with the given input arguments.
%
%      DISPLAYIMAGE('Property','Value',...) creates a new DISPLAYIMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before displayimage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to displayimage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help displayimage

% Last Modified by GUIDE v2.5 03-Oct-2018 20:25:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @displayimage_OpeningFcn, ...
                   'gui_OutputFcn',  @displayimage_OutputFcn, ...
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


% --- Executes just before displayimage is made visible.
function displayimage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to displayimage (see VARARGIN)

% Choose default command line output for displayimage
handles.output = hObject;

% Position
% set(handles.figure1,'Units', 'pixels');
% set(handles.figure1,'Position', [ 1           1        2560        1440]);
% set(handles.figure1,'Position', [ -2559        -719        2560        1440]);
% set(handles.figure1, 'Position', [1000 918 560 420]);
set(gcf,'Position',[2561         207        2194        1234])

% Update handles structure
guidata(hObject, handles);
image = varargin{1};
text = varargin{2};
image = insertText(image,[100 100],text,'FontSize',100);
imshow(image, 'Parent', handles.axes1);

% display image in truesize
% hFig = figure('Toolbar','none',...
%               'Menubar','none');
% hIm = imshow(image);
% hSP = imscrollpanel(hFig,hIm); % Handle to scroll panel.
% set(hSP,'Units','normalized',...
%         'Position',[0 .1 1 .9])
imshow(image,'Parent', handles.axes1);


% UIWAIT makes displayimage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = displayimage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
