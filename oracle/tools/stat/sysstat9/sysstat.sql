SELECT to_char(sysdate, 'MMDDHH24MISS')||','||NAME||','||VALUE
FROM V$SYSSTAT
WHERE VALUE > 0;