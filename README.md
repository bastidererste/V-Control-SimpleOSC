# V-Control-SimpleOSC V0.9a
This is a simple OSC protocol implementation to send OSC Messages (with or without arguments) from V-Control to OSC clients (Ventuz, Processing, Pandora,..) This driver can use UDP Channels. This simple OSC implementation was tested on Windows 7/10 and OSX 10.11 with the following client software: Ventuz 4/5, Processing (oscP5), PacketSender, Osculator.

# Usage:

SimpleOSCMessage:
This Command sends an OSC Message without any argument. 

SimpleOSCText:
This Command sends an OSC Message wiht one string as argument. On the client side just listen for OSC messages with the address and one string argument

SimpleOSCInteger:
This Command sends an OSC Message wiht one integer as argument. On the client side just listen for OSC messages with the address and one integer argument

//The SimpleOSCFloat command is in beta. Plattform independent reliability not given yet. 
SimpleOSCFloat
This Command sends an OSC Message wiht one float as argument. On the client side just listen for OSC messages with the address and one float argument

This simple OSC implementation was tested on Windows 7/10 and OSX 10.11 with the following client software: Ventuz 4/5, Processing (oscP5), PacketSender, Osculator
