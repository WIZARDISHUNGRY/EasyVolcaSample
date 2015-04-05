#ifndef __APPLE__
#error Use PlaySound.cxx on Windows
#endif

#include "PlaySound.h"

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

int myPlaySound()
{
  NSSound *snd = [[NSSound alloc] initWithContentsOfFile:@"out.wav" byReference:YES];
  if ( [snd play] ) {
      [[NSRunLoop currentRunLoop] run];
  }
  return 0;
}
