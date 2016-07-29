if cmdExcecute = false
{
    input = prevcmd
    array = splitString(input)
    argscnt = countString(input)
    }
//display commands
if array[0] == "help" && cmdExcecute = false 
{
    cmdExcecute = true
    showCommands ^= true;
}
// Spawn Object x y *add new objects to cmd_spawn
if array[0] == "spawn" && cmdExcecute = false 
{
    if argscnt == 4
    {
        cmdExcecute = true
        cmd_spawn(array[1],real(array[2]),real(array[3]))
        }
    else
    {
        show_debug_message("Not enough args")
        cmdExcecute = true
    }
}
//run scripts  *add new scripts
if array[0] == "run" && cmdExcecute = false
{

    if argscnt >= 2
    {
    cmdExcecute = true
    args = argscnt - 2
    if (args) == 0
        cmd_run_0(array[1])
    else if (args) == 1
        cmd_run_1(array[1],array[2])
    else if (args) == 2
        cmd_run_2(array[1],array[2],array[3])
    else if (args) == 3
        cmd_run_3(array[1],array[2],array[3],array[4])
    else
    show_debug_message("invalid amount of args")
        }
    else
        show_debug_message("cmdMain -  run command")
}

