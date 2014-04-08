function exc=Memory_update(gp_qua,gc_qua,vn,cn,xn,yn,zn)

%   /*------------------------------------------------------*
%    * - Find the total excitation                          *
%    * - update filters memories for finding the target     *
%    *   vector in the next subframe                        *
%    *------------------------------------------------------*/

%gp_qua,gc_qua,vn,cn----quantinized gp ,quantinized gc
%exc---total excitation

global Filterstate;

exc=zeros(1,40);
ewn=zeros(1,40);
exc=(gp_qua*vn+gc_qua*cn);
ewn=xn-gp_qua*yn-gc_qua*zn;
Filterstate=round(ewn(31:end));
