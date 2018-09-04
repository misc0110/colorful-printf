#include <stdio.h>
#include "colorprint.h"

int main() {
    printf_color(1, "[lr][br][+][/br][/lr] [lr]Error[/lr] [lw]or[/lw] [g]s[lg]o[/lg]meth[/g]ing similar\n");
    printf_color(1, "[blr][r][+][/r][/blr] E[bb]r[/bb][bg]r[/bg]or foo\n");
    printf_color(1, "[r][+][/r] [r]Red [g]green[/g] red again[/r] [br]w[lw]h[/lw]ite[/br] [y] foo [ly][/bar][/ly][/y] [default\n");
    printf_color(1, "[ r]not red[/r] normal\n");

    printf("Spinner: ");
    fflush(stdout);
    spinner_start(1, "Initialize...");
    int i;
    for(i = 0; i < 10; i++) {
        usleep(100000);
        spinner_update(1, "Test [bb][ly]%d[/ly][/bb]...", i);
    }
    spinner_done(1, "Done!\n");

    printf("Progress: ");
    fflush(stdout);
    progress_start(1, 15, NULL);
    for(i = 0; i < 15; i++) {
        usleep(100000);
        progress_update(1);
    }



    return 0;
}
