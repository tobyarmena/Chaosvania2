var msg = argument0; 
var splitBy = " "; 
var slot = 0;
var str2 = "";

for (i=0; i<6; i+=1)
{
    splits[i] = ""; 
}

for (i = 1; i < (string_length(msg)+1); i++) {
    var currStr = string_copy(msg, i, 1);
    if (currStr == splitBy) {
        splits[slot] = str2;
        slot++;
        str2 = "";
    } else {
        str2 = str2 + currStr;
        splits[slot] = str2;
    }
}

return splits
