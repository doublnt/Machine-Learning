G = 1;%文件个数
N = 5;%聚类数
for k = 1:G
    filename1 = strcat(['p' num2str(k) '.txt']);
    in = importdata(filename1);
    D = pdist2(in,in);%求行与行之间欧式距离
    C = linkage(D,'average');%开始聚类
    HC = cluster(C, N); %划分聚类为N类
    
    out = strcat(['nhc' num2str(k) '.txt']);
    fid = fopen(out,'a');
    
    for i = 1:N %把聚类后的每一类的行坐标存入txt中
        HCi = find(HC == i);
        HCI = HCi;
        fprintf(fid,'%d',HCI);
        fprintf(fid,'\n');
    end
    fclose(fid);
end