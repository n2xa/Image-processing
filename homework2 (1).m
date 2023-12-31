function varargout = homework2(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @homework2_OpeningFcn, ...
                   'gui_OutputFcn',  @homework2_OutputFcn, ...
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


function homework2_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
guidata(hObject, handles);

function varargout = homework2_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function Histogram_Callback(hObject, eventdata, handles)
    originalImage = getappdata(0, 'originalImage');
    grayImage = originalImage;
    grayImage = rgb2gray(grayImage);
    axes(handles.axes1);
    imhist(grayImage);

function UploadImage_Callback(hObject, eventdata, handles)
    selectedFile = uigetfile('.jpg');
    image = imread(selectedFile);
    axes(handles.axes1);
    imshow(image);
    setappdata(0, 'originalImage', image);

function RGBtoGray_Callback(hObject, eventdata, handles)
    originalImage = getappdata(0, 'originalImage');
    grayImage = rgb2gray(originalImage);
    axes(handles.axes1);
    imshow(grayImage);

function ConvertToBinaryImage_Callback(hObject, eventdata, handles)
    originalImage = getappdata(0, 'originalImage');
    binaryImage = im2bw(originalImage);
    axes(handles.axes1);
    imshow(binaryImage);

function RESET_Callback(hObject, eventdata, handles)
    originalImage = getappdata(0, 'originalImage');
    axes(handles.axes1);
    imshow(originalImage);

function ComplementImage_Callback(hObject, eventdata, handles)
    originalImage = getappdata(0, 'originalImage');
    complementImage = originalImage;
    complementImage = imcomplement(complementImage);
    axes(handles.axes1);
    imshow(complementImage);

function EdgeDetection_Callback(hObject, eventdata, handles)
    originalImage = getappdata(0, 'originalImage');
    edgeImage = originalImage;
    edgeImage = rgb2gray(edgeImage);
    edgeImage = edge(edgeImage, 'sobel');
    axes(handles.axes1);
    imshow(edgeImage);
