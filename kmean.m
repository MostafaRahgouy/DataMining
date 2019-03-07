

x = xlsread('glass.xlsx');

opts = statset('Display','final');

[idx,ctrs] = kmeans(x,2,...
                    'Distance','city',...
                    'Replicates',5,...
                    'Options',opts);
plot(x(idx==1,1),x(idx==1,2),'r.','MarkerSize',12)
hold on
plot(x(idx==2,1),x(idx==2,2),'b.','MarkerSize',12)
plot(ctrs(:,1),ctrs(:,2),'kx',...
     'MarkerSize',12,'LineWidth',2)
plot(ctrs(:,1),ctrs(:,2),'ko',...
     'MarkerSize',12,'LineWidth',2)
legend('Cluster 1','Cluster 2','Centroids',...
       'Location','NW')