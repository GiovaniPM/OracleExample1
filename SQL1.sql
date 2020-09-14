select
    imitm        as "Código",
    trim(imlitm) as "2nd Código",
    trim(imaitm) as "3rd Código",
    trim(imdsc1) as "Descrição 1",
    trim(imdsc2) as "Descrição 2"
from
    C##GIOVANIPM.F4101
order by
    imitm
