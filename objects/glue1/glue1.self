 '30.21.0'
 '
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         glue1 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'glue1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals glue1.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'glue1' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'lobby' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         glue1 = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'glue1' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'glue1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules glue1.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'glue1' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'glue1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'glue1' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'glue1' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'glue1' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'glue1' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: InitializeToExpression: (\'30.21.0\')\x7fVisibility: public'
        
         revision <- '30.21.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'glue1' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'sdlDefs
sdlDemo
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         sdl = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'sdl' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals sdl.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         demo = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'sdl' -> 'demo' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals sdl demo.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> () From: ( | {
         'Category: types\x7fModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         sdl_Event = bootstrap define: bootstrap stub -> 'globals' -> 'sdl' -> 'sdl_Event' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals proxy deadCopy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'sdl' -> 'sdl_Event' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals sdl sdl_Event.

CopyDowns:
globals proxy. deadCopy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sdl' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         sdl_Event = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Event' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits sdl sdl_Event.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'sdl_Event' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Event' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> () From: ( | {
         'Category: types\x7fModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         sdl_Renderer = bootstrap define: bootstrap stub -> 'globals' -> 'sdl' -> 'sdl_Renderer' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals proxy deadCopy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'sdl' -> 'sdl_Renderer' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals sdl sdl_Renderer.

CopyDowns:
globals proxy. deadCopy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sdl' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         sdl_Renderer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Renderer' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits sdl sdl_Renderer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'sdl_Renderer' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Renderer' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> () From: ( | {
         'Category: types\x7fModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         sdl_Window = bootstrap define: bootstrap stub -> 'globals' -> 'sdl' -> 'sdl_Window' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals proxy deadCopy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'sdl' -> 'sdl_Window' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals sdl sdl_Window.

CopyDowns:
globals proxy. deadCopy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sdl' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         sdl_Window = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Window' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits sdl sdl_Window.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sdl' -> 'sdl_Window' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Window' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         sdl = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'sdl' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits sdl.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Event' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'proxy' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Renderer' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'proxy' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Renderer' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         renderDebugText: str At: pos = ( |
            | renderDebugTextX: pos x Y: pos y Str: str).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Renderer' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         setDrawColorPaint: p = ( |
            | setDrawColorFloatR: p red G: p green B: p blue A: p alpha).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sdl' -> 'sdl_Window' -> () From: ( | {
         'ModuleInfo: Module: glue1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'proxy' -> ().
        } | ) 



 '-- Sub parts'

 bootstrap read: 'sdlDefs' From: 'glue1'
 bootstrap read: 'sdlDemo' From: 'glue1'



 '-- Side effects'

 globals modules glue1 postFileIn
