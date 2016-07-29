var msg = argument0; 
var splitBy = " "; 
var slot = 1;



var i;
for (i = 1; i < (string_length(msg)+1); i++) {  
    if (string_char_at(msg,i) == splitBy) {
        slot++;
}
}

return slot
