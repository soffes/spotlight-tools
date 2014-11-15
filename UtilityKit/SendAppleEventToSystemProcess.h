//
//  SendAppleEventToSystemProcess.h
//  Utilities
//
//  Created by Sam Soffes on 11/15/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

#ifndef __Utilities__SendAppleEventToSystemProcess__
#define __Utilities__SendAppleEventToSystemProcess__

#include <stdio.h>
#include <CoreServices/CoreServices.h>
#include <Carbon/Carbon.h>

extern OSStatus SendAppleEventToSystemProcess(AEEventID EventToSend);

#endif /* defined(__Utilities__SendAppleEventToSystemProcess__) */
