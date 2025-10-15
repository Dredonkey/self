'Sun-$Revision: 30.6 $'

primitiveMaker reader copy staticLinking create: 'glue1' From: '

  -- Copyright 1992-2012 AUTHORS.
  -- See the LICENSE file for license information.

  macroName: glue1
  glueLibraryName: glue1_glue.o

traits: globals glue1
  visibility: publicSlot
    void uppercase: string = string call uppercase
    void sdlWindowTest = void call sdlWindowTest
    void setClipboard: string = void call setClipboard

traits: globals sdl
  visibility: publicSlot
    void sdl_GetRevision = string call SDL_GetRevision_wrapped

    void sdl_GetError = string call SDL_GetError_wrapped

    void sdl_SetHintName: string Value: string = bool call SDL_SetHint
    void sdl_Init: unsigned_int = bool call SDL_Init
    void sdl_Quit = void call SDL_Quit

    void sdl_CreateWindowTitle: string W: int H: int Flags: unsigned_long \
    = SDL_Window {sdl sdl_Window deadCopy} call SDL_CreateWindow

    void sdl_CreateRendererWindow: SDL_Window Name: string \
    = SDL_Renderer {sdl sdl_Renderer deadCopy} call SDL_CreateRenderer

    void sdl_PollEvent: SDL_Event = bool call SDL_PollEvent

traits: traits sdl sdl_Event
  visibility: publicSlot
    void new = SDL_Event {sdl sdl_Event deadCopy} new
    SDL_Event delete = void delete
    SDL_Event type = unsigned_int getMember type

traits: traits sdl sdl_Renderer
  visibility: publicSlot
    SDL_Renderer setVSync: int = bool call SDL_SetRenderVSync
    SDL_Renderer present = bool call SDL_RenderPresent

    SDL_Renderer setDrawColorR: unsigned_char G: unsigned_char B: unsigned_char A: unsigned_char \
    = bool call SDL_SetRenderDrawColor

    SDL_Renderer setDrawColorFloatR: float G: float B: float A: float \
    = bool call SDL_SetRenderDrawColorFloat

    SDL_Renderer renderClear = bool call SDL_RenderClear
    SDL_Renderer renderLineX1: float Y1: float X2: float Y2: float = bool call SDL_RenderLine
    SDL_Renderer renderDebugTextX: float Y: float Str: string = bool call SDL_RenderDebugText
    SDL_Renderer destroy = void call SDL_DestroyRenderer
    SDL_Renderer getRendererName = string call SDL_GetRendererName_wrapped

traits: traits sdl sdl_Window
  visibility: publicSlot
    SDL_Window setAlwaysOnTop: bool = bool call SDL_SetWindowAlwaysOnTop
    SDL_Window destroy = void call SDL_DestroyWindow
'.

"This is just here for convenience during development"
_Quit