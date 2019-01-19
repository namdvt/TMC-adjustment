function [ TMC ] = getTMCbyHistogramMatching( in, out )
% in = imread('F:\10bitimages\Comparison\Original\scene3\out1.png');
% out = imread('F:\10bitimages\Comparison\HDR10+\Decode\scene3\out1.png');

% out = dpxread('F:\10bitimages\HDR10Frames\HighContrast\HighColorfulness\HighNaturalness\im (6).dpx');
% in = imread('F:\HDR10+Frames\im (6).jp2');

%% Normalize to 8 bit
inGray = rgb2gray(in);
inGray = double(inGray);
inGray = round(inGray);
inGray = max(inGray,1);

outGray = rgb2gray(out);
outGray = double(outGray);
outGray = round(outGray);
outGray = max(outGray,1);

%% Obtain histograms
hIn = getHistogram(inGray);
hInNormalized = hIn / sum(hIn);
cdfIn = cumsum(hInNormalized);

hOut = getHistogram(outGray);
hOutNormalized = hOut / sum(hOut);
cdfOut = cumsum(hOutNormalized);

%% Get TMC
TMC = get_x(cdfIn,cdfOut);
TMC = max(TMC,1);

%% Plot pixel domain
% figure,plot(TMC);
% % legend([plotProposed, plotHDR10],{'Proposed','HDR10+'},'Location','NorthWest');
% hold on
% linear = 1:1:255;
% plot(linear);
% 
% xlabel('Input pixel value', 'FontSize', 18)
% ylabel('Output pixel value', 'FontSize', 18)
% set(gca,'fontsize',18)
% pbaspect([1 1 2])
% xlim([0 255]);
% ylim([0 255])

%% Plot luminance domain
% figure, plotProposed = plot(l1,l2(TMCProposed));
% hold on
% plotHDR10 = plot(l1,l2(TMCHDR10));
% legend([plotProposed, plotHDR10],{'Proposed','HDR10+'},'Location','NorthWest');
% hold off
% 
% xlabel('Input luminance (nit)', 'FontSize', 18)
% ylabel('Output luminance (nit)', 'FontSize', 18)
% set(gca,'fontsize',18)
% pbaspect([2 1 2]);
% xlim([0 1000]);
% ylim([0 500])

end

