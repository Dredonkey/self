#include "_glueDefs.cpp.incl"
#include "glue1.primMaker.hh"
#include <SDL3/SDL.h>
#include <wait.h>

// the names of these identifiers matters
// the pattern is <ctypename>_seal
// I'm not sure if the contents of the assigned string matters
const char* SDL_Window_seal = "SDL_Window_seal";
const char* SDL_Renderer_seal = "SDL_Renderer_seal";
const char* SDL_Event_seal = "SDL_Event_seal";

// the first piece of glue I tried to get working
char* uppercase(char* str) {
    static char res[1000];
    int i;
    for (i = 0; str[i] != '\0'; i++) {
        char c = str[i];
        if (c >= 'a' && c <= 'z') {
            c -= 32;
        }
        res[i] = c;
    }
    res[i] = '\0';
    return res;
}

// basic test of sdl in a single function
void sdlWindowTest() {
    // comment this next line out if you aren't running a wayland compositor, or just want to test x11
    SDL_SetHint(SDL_HINT_VIDEO_DRIVER, "wayland");
    if (!SDL_Init(SDL_INIT_VIDEO)) {
        printf("SDL_Init: %s\n", SDL_GetError());
    }

    SDL_Window* w;
    SDL_Renderer* rend;
    if (!SDL_CreateWindowAndRenderer("test window", 500, 500, SDL_WINDOW_RESIZABLE, &w, &rend) || !w || !rend) {
        printf("SDL_CreateWindowAndRenderer: %s\n", SDL_GetError());
    }

    SDL_Event e;
    bool should_run = true;
    while (should_run) {
        if (SDL_PollEvent(&e)) {
            if (e.type == SDL_EVENT_QUIT) should_run = false;
        }

        SDL_SetRenderDrawColor(rend, 98, 121, 131, 255);
        SDL_RenderClear(rend);

        SDL_RenderPresent(rend);
    }

    SDL_DestroyRenderer(rend);
    SDL_DestroyWindow(w);
    SDL_Quit();
}

SDL_Event* allocEvent() {
    return (SDL_Event*)malloc(sizeof(SDL_Event));
}

// compiler complains about const char* being cast to char* so that is why these wrappers exist
char* SDL_GetRevision_wrapped() {
    return (char*)SDL_GetRevision();
}

char* SDL_GetError_wrapped() {
    return (char*)SDL_GetError();
}

char* SDL_GetRendererName_wrapped(SDL_Renderer* rend) {
    return (char*)SDL_GetRendererName(rend);
}

void setClipboard(char* str) {
    const int PIPE_READ = 0;
    const int PIPE_WRITE = 1;

    int to_child[2];
    pipe(to_child);

    int pid = fork();
    if (pid == 0) {
        close(to_child[PIPE_WRITE]);
        dup2(to_child[PIPE_READ], 0);
        execlp("xsel", "xsel", "-bi", NULL);
        perror("glue1::execlp");
        return;
    }

    close(to_child[PIPE_READ]);
    write(to_child[PIPE_WRITE], str, strlen(str));
    close(to_child[PIPE_WRITE]);
    waitpid(pid, NULL, 0);
}

#define WHAT_GLUE FUNCTIONS
    glue1_glue
#undef WHAT_GLUE