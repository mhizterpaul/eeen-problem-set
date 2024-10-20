
% function plotSin(f1)
% % plot a sin function with a frequency f1
% x = 0:2*pi/16:2*pi;
% y = sin(f1*x);
% figure;
% plot(x,y);
% end

% function plotSin(f1, f2)
% % plot a sin function with a frequency f1
% if nargin == 1
%     x = 0:2*pi/16:2*pi;
%     y = sin(f1*x);
%     figure;
%     plot(x,y);
% else
%     disp('Two inputs were given');
% end

% function plotSin(f1, f2)
%     % plot a sin function with a frequency f2 and or f1
%     figure;
%     plotProps.Color = 'r';
%     plotProps.LineStyle = '-';
%     plotProps.LineWidth = 2;
%     plotProps.MarkerFaceColor = 'b';
%     plotProps.Marker = 'square';
% 
%     if nargin == 1
%         x = 0:2*pi/(f1*4):2*pi;
%         y = sin(f1*x);
%         plot(x,y, plotProps);
% 
%     else
%         x1 = 0:2*pi/(f1*4):2*pi;
%         x2 = 0:2*pi/(f2*4):2*pi;
%         y1 = sin(f1*x);
%         y2 = sin(f2*x);
%         subplot(2,1,1);
%         plot(x1, y1, plotProps);
%         subplot(2,1,2);
%         plot(x2, y2, plotProps);
% 
%     end
% 
% end

function plotSin(f1, f2)
    % plot a sin function with a frequency f2 and or f1
    figure;
    plotProps.Color = 'r';
    plotProps.LineStyle = '-';
    plotProps.LineWidth = 2;
    plotProps.MarkerFaceColor = 'b';
    plotProps.Marker = 'square';
    
    if nargin == 1
        x = 0:2*pi/(f1*4):2*pi;
        y = sin(f1*x);
        plot(x,y, plotProps);
    
    else
        x = 0:2*pi/(f1*4):2*pi;
        y = 0:2*pi/(f2*4):2*pi;
        [x, y] = meshgrid(x, y);
        z = sin(f1*x) + sin(f2*y);
        subplot(2,1,1);
        imagesc(z);
        colormap("hot");
        colorbar;
        axis("xy");
        subplot(2,1,2);
        surf(x,y,z)
    end

end



