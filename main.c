#include <stdio.h>
#include "colorprint.h"

int main() {
    printf_color(1, "[lr][br][+][/br][/lr] [lr]Error[/lr] [lw]or[/lw] [g]s[lg]o[/lg]meth[/g]ing similar\n");
    printf_color(1, "[blr][r][+][/r][/blr] E[bb]r[/bb][bg]r[/bg]or foo\n");
    printf_color(1, "[r][+][/r] [r]Red [g]green[/g] red again[/r] [br]w[lw]h[/lw]ite[/br] [y] foo [ly][/bar][/ly][/y] [default\n");
    printf_color(1, "[ r]not red[/r] normal\n");
    return 0;
}
