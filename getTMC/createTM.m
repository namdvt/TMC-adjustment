clear all;
close all;
in = imread('10\1.png');
out = imread('10+\1.png');


% in = imread('E:\Code\Tone Mapping\HDR10ToneMapping\testresult\in.png');
% out = imread('E:\Code\Tone Mapping\HDR10ToneMapping\testresult\out.png');

in = rgb2gray(in);
out = rgb2gray(out);
in = double(in)/65536*1024;
out = double(out)/65536*1024;
in = max(in,1);
in = round(in);
out = max(out,1);

x=zeros(1,1024);


[r c] = size(in);
for i=1:r
    for j=1:c
        x(in(i,j)) = out(i,j);
    end
end

x = max(x,1);
x = round(x);

p = 0:1:1023;
% l1 = 1000*get_L(p/1023);
% l2 = 500*get_L(p/1023);

figure,plot(x);
xlabel('Input pixel value', 'FontSize', 18)
ylabel('Output pixel value', 'FontSize', 18)
set(gca,'fontsize',18)
pbaspect([1 1 2])
xlim([0 1024]);
ylim([0 1024])

% figure,plot(l1,l2(x));
% xlabel('Input luminance (nit)', 'FontSize', 18)
% ylabel('Output luminance (nit)', 'FontSize', 18)
% set(gca,'fontsize',18)
% pbaspect([2 1 2]);
% width=550;
% height=300;
% x0=10;
% y0=5;
% set(gcf,'units','points','position',[x0,y0,width,height]);
% p2.LineWidth = 3;
% xlim([0 1000]);
% ylim([0 500])