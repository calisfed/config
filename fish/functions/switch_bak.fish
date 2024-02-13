function switch_bak
   mv $argv $argv\_bak2
   mv $argv\_bak ( string replace --filter '_bak' '' $argv\_bak )
   mv $argv\_bak2 $argv\_bak
end
