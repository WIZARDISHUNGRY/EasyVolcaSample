#ifndef _WIN32
#error Use PlaySound.m on Mac OS X
#endif

#include "PlaySound.h"

#include <windows.h>
#include <mmsystem.h>

//  "try adding -lwinmm to your compiler settings thingy. "
//  http://stackoverflow.com/questions/1565439/how-to-playsound-in-c-using-windows-api

int myPlaySound()
{
    PlaySound("out.wav", NULL, SND_SYNC & SND_NODEFAULT & SND_FILENAME);
    return 0;
}
