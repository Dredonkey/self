 ''
 '
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
[ 
"prefileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: sdlDefs InitialContents: FollowSlot'
        
         sdlDefs = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDefs' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDefs' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules sdlDefs.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDefs' -> () From: ( | {
         'ModuleInfo: Module: sdlDefs InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'glue1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDefs' -> () From: ( | {
         'ModuleInfo: Module: sdlDefs InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDefs' -> () From: ( | {
         'ModuleInfo: Module: sdlDefs InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDefs' -> () From: ( | {
         'ModuleInfo: Module: sdlDefs InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDefs' -> () From: ( | {
         'ModuleInfo: Module: sdlDefs InitialContents: InitializeToExpression: (\'30.21.0\')\x7fVisibility: public'
        
         revision <- '30.21.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sdlDefs' -> () From: ( | {
         'ModuleInfo: Module: sdlDefs InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> () From: ( | {
         'Category: defs\x7fModuleInfo: Module: sdlDefs InitialContents: FollowSlot'
        
         sdl_event_quit = 256.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> () From: ( | {
         'Category: defs\x7fModuleInfo: Module: sdlDefs InitialContents: FollowSlot'
        
         sdl_init_video = 32.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> () From: ( | {
         'Category: defs\x7fModuleInfo: Module: sdlDefs InitialContents: FollowSlot'
        
         sdl_window_resizable = 32.
        } | ) 



 '-- Side effects'

 globals modules sdlDefs postFileIn
