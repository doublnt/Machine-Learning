clear all

Q = 2;
N = 7;

for q = 1:Q

    foldername = strcat([pwd '/DATA/data' num2str(q) '/']);
    files = dir(foldername);

    for k = 1:numel(files)
        filename = files(k).name;
        if startsWith(filename,'data') == 0
            continue;
        end
        filename = strcat([foldername filename]);
        input_data = importdata(filename);
		sum = 0;
		for i = 1:N
			sum = sum + input_data(i,1);
		end 
		
		fid = fopen([pwd '/DATA/' num2str(q) 'result.txt'],'a');
		fprintf(fid,'%d',sum);
		fprintf(fid,'\n');

    end
	fclose(fid);
end





