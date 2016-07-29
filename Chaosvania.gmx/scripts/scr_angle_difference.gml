var facingDir = argument0;
var targetDir = argument1;

var facingMinusTarget = facingDir - targetDir;
angleDiff = facingMinusTarget;


if(abs(facingMinusTarget) > 180)
{
    if(facingDir > targetDir)
    {
        angleDiff = -1 * ((360 - facingDir) + targetDir);
    }
    else
    {
        angleDiff = (360 - targetDir) + facingDir;
    }
}

return angleDiff
