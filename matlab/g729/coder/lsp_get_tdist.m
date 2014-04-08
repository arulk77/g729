function o=lsp_get_tdist(W,candidate_LSP_vector,target_LSP_vector,P)
%W--weight coef
%P--present MA prediction coef
%o--distortion for present MA
for i=1:10
    temp(i)=(candidate_LSP_vector(i)-target_LSP_vector(i))*(1-P(i,1)-P(i,2)-P(i,3)-P(i,4));
end
distortion=sum(W.*(temp.^2));
o=distortion;
    
