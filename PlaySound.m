#include "PlaySound.h"
#ifndef _WIN32
#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

int myPlaySound()
{
  NSSound *snd = [[NSSound alloc] initWithContentsOfFile:@"out.wav"];
  if ( [snd play] ) {
      [[NSRunLoop currentRunLoop] run];
  }
	return 0;
}
#endif
