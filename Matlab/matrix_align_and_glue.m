function [C] = matrix_align_and_glue(A,B)
%Denne funksjonen tar inn matrisene A og B, fjerner overlap, og limer dem
%sammen

k2=0;
diff1 = 1;
% Finn offset
for k=1:length(A),
    diff2 = abs(A(k,1)-B(1,1));
    if diff2<diff1
        diff1=diff2;
        k2=k;
    end
end
C = zeros([(k2+length(B)) 2]);

% Append arrays inn i k3
for k3=1:k2,
    C(k3,1) = A(k3,1);
    C(k3,2) = A(k3,2);
end

% Legg til offset
for k4=1:length(B),
    C(k2+k4,1) = B(k4,1);
    C(k2+k4,2) = B(k4,2);
end
end


function [C] = array_append(A,B)
%Legger sammen to matriser til en.

C = zeros([(length(A)+length(B)) 2]);
% Append arrays inn i k3
for i=1:length(A),
    C(i,1) = A(i,1);
    C(i,2) = A(i,2);
end

end