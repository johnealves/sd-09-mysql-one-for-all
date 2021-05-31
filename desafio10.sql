delimiter $$
create function quantidade_musicas_no_historico(usuario_id int)
returns int reads sql data
begin
declare num_reproducoes int;
SELECT 
    COUNT(*)
FROM
    historico_reproducoes_unicas AS hru
WHERE
    hru.usuario_id = usuario_id INTO num_reproducoes;
return num_reproducoes;
end $$
delimiter ;