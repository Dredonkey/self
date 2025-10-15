 '30.21.0'
 '
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         sdlDemo = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDemo' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDemo' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules sdlDemo.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDemo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'glue1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDemo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDemo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDemo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDemo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: InitializeToExpression: (\'30.21.0\')\x7fVisibility: public'
        
         revision <- '30.21.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDemo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         bgColor = paint copyRed: 0.380254 Green: 0.470186  Blue: 0.510264.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         cleanup = ( |
            | 
            ev isLive ifTrue: [ev delete].
            sdl_Quit.
            rend kill.
            win kill).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: sdlDemo InitialContents: InitializeToExpression: (sdl sdl_Event deadCopy)'
        
         ev <- sdl sdl_Event deadCopy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         init = ( |
            | 
            "sdl_SetHintName: 'SDL_VIDEO_DRIVER' Value: 'wayland'."
            sdl_Init: sdl_init_video.
            win: sdl_CreateWindowTitle: 'test win'
              W: 500 H: 500 Flags: sdl_window_resizable.
            rend: sdl_CreateRendererWindow: win Name: ''.
            rend setVSync: 1.
            ev: sdl_Event new).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         loop = ( |
            | 
            processEvents.
            rend setDrawColorPaint: bgColor.
            rend renderClear.
            rend setDrawColorPaint: paint named: 'leaf'.
            rend renderLineX1: 0 Y1: 0 X2: 100 Y2: 100.
            rend renderDebugText: 'Hello World! Live programming!!!' At: 0@200.
            rend present.).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         processEvents = ( |
            | [sdl_PollEvent: ev] whileTrue: [
                (ev type = sdl_event_quit) ifTrue: [shouldRun: false. ^self].
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: sdlDemo InitialContents: InitializeToExpression: (sdl sdl_Renderer deadCopy)'
        
         rend <- sdl sdl_Renderer deadCopy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         sdlImport* = bootstrap stub -> 'globals' -> 'sdl' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: sdlDemo InitialContents: InitializeToExpression: (false)'
        
         shouldRun <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'ModuleInfo: Module: sdlDemo InitialContents: FollowSlot'
        
         start = ( |
            | 
            cleanup.
            thisProcess: process this.
            init.
            shouldRun: true.
            [shouldRun] whileTrue: [loop].
            cleanup).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: sdlDemo InitialContents: InitializeToExpression: (nil)'
        
         thisProcess <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: sdlDemo InitialContents: InitializeToExpression: (sdl sdl_Window deadCopy)'
        
         win <- sdl sdl_Window deadCopy.
        } | ) 



 '-- Side effects'

 globals modules sdlDemo postFileIn
