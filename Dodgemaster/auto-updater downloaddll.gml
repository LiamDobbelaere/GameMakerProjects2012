#define download_file
/*
Argument0 = Url to file
Argument1 = Local filename to save as
e.g download_file("http://test.com/test.txt", "test.txt");
*/
dll = "downloaddll.dll"

global.DownloadFile = external_define(dll, "DownloadFile", dll_stdcall, ty_real, 2, ty_string, ty_string);
return external_call(global.DownloadFile, string(argument0), argument1);
external_free(dll)
#define draw_text_glowing
////draw_text_glowing\\\\
////Arguments:       \\\\
////0: xpos          \\\\
////1: ypos          \\\\
////2: string to draw\\\\
////3: highlitecolor \\\\
////4: alpha in      \\\\
////   procent for   \\\\
////   highlite      \\\\
////\\\\////|\\\\////\\\\

_x = argument0
_y = argument1
_string = argument2
_2ndColor = argument3
_alphaProcent = argument4

_originalcolor = draw_get_color()
_originalalpha = draw_get_alpha()

_alpha = _originalalpha * _alphaProcent / 100  

draw_set_color(_2ndColor)
draw_set_alpha(_alpha * 0.6)
draw_text(_x+1,_y,_string)
draw_text(_x-1,_y,_string)
draw_text(_x,_y+1,_string)
draw_text(_x,_y-1,_string)

draw_set_alpha(_alpha * 0.5)
draw_text(_x+1,_y+1,_string)
draw_text(_x+1,_y-1,_string)
draw_text(_x-1,_y+1,_string)
draw_text(_x-1,_y-1,_string)

draw_set_alpha(_alpha * 0.45)
draw_text(_x+2,_y,_string)
draw_text(_x-2,_y,_string)
draw_text(_x,_y+2,_string)
draw_text(_x,_y-2,_string)

draw_set_alpha(_alpha * 0.35)
draw_text(_x+2,_y+2,_string)
draw_text(_x+2,_y-2,_string)
draw_text(_x-2,_y+2,_string)
draw_text(_x-2,_y-2,_string)

draw_set_alpha(_alpha * 0.4)
draw_text(_x+2,_y+1,_string)
draw_text(_x+2,_y-1,_string)
draw_text(_x-2,_y+1,_string)
draw_text(_x-2,_y-1,_string)

draw_text(_x+1,_y+2,_string)
draw_text(_x+1,_y-2,_string)
draw_text(_x-1,_y+2,_string)
draw_text(_x-1,_y-2,_string)
//////
draw_text(_x+3,_y,_string)
draw_text(_x-3,_y,_string)
draw_text(_x,_y+3,_string)
draw_text(_x,_y-3,_string)

draw_set_alpha(_alpha * 0.3)
draw_text(_x+3,_y+2,_string)
draw_text(_x+3,_y-2,_string)
draw_text(_x-3,_y+2,_string)
draw_text(_x-3,_y-2,_string)

draw_set_alpha(_alpha * 0.25)
draw_text(_x+3,_y+1,_string)
draw_text(_x+3,_y-1,_string)
draw_text(_x-3,_y+1,_string)
draw_text(_x-3,_y-1,_string)

draw_set_alpha(_alpha * 0.3)
draw_text(_x+2,_y+3,_string)
draw_text(_x+2,_y-3,_string)
draw_text(_x-2,_y+3,_string)
draw_text(_x-2,_y-3,_string)

draw_set_alpha(_alpha * 0.25)
draw_text(_x+1,_y+3,_string)
draw_text(_x+1,_y-3,_string)
draw_text(_x-1,_y+3,_string)
draw_text(_x-1,_y-3,_string)

draw_set_alpha(_alpha * 0.35)
draw_text(_x+3,_y+3,_string)
draw_text(_x+3,_y-3,_string)
draw_text(_x-3,_y+3,_string)
draw_text(_x-3,_y-3,_string)

draw_set_alpha(_alpha * 0.2)
draw_text(_x+4,_y,_string)
draw_text(_x-4,_y,_string)
draw_text(_x,_y+4,_string)
draw_text(_x,_y-4,_string)

draw_set_color(_originalcolor)
draw_set_alpha(_originalalpha)
draw_text(_x,_y,_string)
#define DM_Init
    global.external_dm_createdownload = external_define ('DownloadManager2.dll','hobbl_com_createdownload',dll_stdcall,ty_real,2,ty_string,ty_string);
    global.external_dm_createhandle = external_define ('DownloadManager2.dll','hobbl_com_createhandle',dll_stdcall,ty_real,0);
    global.external_dm_opendownload = external_define ('DownloadManager2.dll','hobbl_com_opendownload',dll_stdcall,ty_real,3,ty_real,ty_string,ty_string);
    global.external_dm_startdownload = external_define ('DownloadManager2.dll','hobbl_com_startdownload',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getresponse = external_define ('DownloadManager2.dll','hobbl_com_getresponse',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getresponseheader = external_define ('DownloadManager2.dll','hobbl_com_getresponseheader',dll_stdcall,ty_string,2,ty_real,ty_string);
    global.external_dm_getspeed = external_define ('DownloadManager2.dll','hobbl_com_getspeed',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getprogress = external_define ('DownloadManager2.dll','hobbl_com_getprogress',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_closedownload = external_define ('DownloadManager2.dll','hobbl_com_closedownload',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_stopdownload = external_define ('DownloadManager2.dll','hobbl_com_stopdownload',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_pausedownload = external_define ('DownloadManager2.dll','hobbl_com_pausedownload',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_resumedownload = external_define ('DownloadManager2.dll','hobbl_com_resumedownload',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_downloadstatus = external_define ('DownloadManager2.dll','hobbl_com_downloadstatus',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getcontenttype = external_define ('DownloadManager2.dll','hobbl_com_getcontenttype',dll_stdcall,ty_string,1,ty_real);
    global.external_dm_getcompleted = external_define ('DownloadManager2.dll','hobbl_com_getcompleted',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getlength = external_define ('DownloadManager2.dll','hobbl_com_getlength',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getresponseheaders = external_define ('DownloadManager2.dll','hobbl_com_getresponseheaders',dll_stdcall,ty_real,1,ty_real);
    global.external_dm_getresponseheadername = external_define ('DownloadManager2.dll','hobbl_com_getresponseheadername',dll_stdcall,ty_string,2,ty_real,ty_real);
    global.external_dm_getresponseheadervalue = external_define ('DownloadManager2.dll','hobbl_com_getresponseheadervalue',dll_stdcall,ty_string,2,ty_real,ty_real);
    global.external_dm_setrange = external_define ('DownloadManager2.dll','hobbl_com_setrange',dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
    global.external_dm_setheader = external_define ('DownloadManager2.dll','hobbl_com_setheader',dll_stdcall,ty_real,3,ty_real,ty_string,ty_string);
    global.external_dm_addcookie = external_define ('DownloadManager2.dll','hobbl_com_addcookie',dll_stdcall,ty_real,3,ty_real,ty_string,ty_string);
    global.external_dm_setproxy = external_define ('DownloadManager2.dll','hobbl_com_setproxy',dll_stdcall,ty_real,3,ty_real,ty_string,ty_real);
    global.external_dm_addsubproxy = external_define ('DownloadManager2.dll','hobbl_com_addsubproxy',dll_stdcall,ty_real,3,ty_real,ty_string,ty_real);
    
    DmStatusFailed      = -1;
    DmStatusInvalid      = 0;
    DmStatusReady		= 1; 
    DmStatusDownloading	= 2;
    DmStatusCompleted	= 3; 
    DmStatusPaused	= 4;
    DmStatusStopped	= 5; 
    DmStatusInterrupted	= 6; 

#define DM_CreateDownload
    return external_call(global.external_dm_createdownload,argument0,argument1);

#define DM_StartDownload
    return external_call(global.external_dm_startdownload,argument0);

#define DM_GetProgress
    return external_call(global.external_dm_getprogress,argument0);

#define DM_DownloadStatus
    return external_call(global.external_dm_downloadstatus,argument0);

#define update_create
/*
argument0 = naam van spel
argument1 = versie
*/

spel = argument0
global.version = argument1

if file_exists('delete.ini')
{
ini_open('delete.ini')
file_delete(ini_read_string('data','file',''))
ini_close()
}

file_delete('delete.ini')

status = 'controleren'

alarm[0] = 1
#define update_alarm0
/*
argument0 = link naar ini file
argument1 = aantal stappen voordat spel wordt afgesloten als de nieuwe versie al bestaat
argument2 = aantal stappen voordat spel verdergaat (volgende room/obj_update verwijderen)
*/

status = 'niet geupdate'
number = argument1

download_file(argument0,'version.ini')

ini_open('version.ini')
iniversion = ini_read_string('data','version',global.version)
ini_close()
if (!(iniversion = global.version))
    {
    if !file_exists(spel+' ('+iniversion+').exe')
        {
        ini_open('version.ini')
        newfile = ini_read_string('data','location',0)
        ini_close()
        file_delete('version.ini')
        
        DM_Init()
        DM_CreateDownload(newfile,spel+' ('+iniversion+').exe')
        DM_StartDownload(1)
        progress = DM_GetProgress(1)
        downloadstatus = DM_DownloadStatus(1)
            
        status = 'downloading'
        }
    else
        {
        file_delete('version.ini')
        
        ini_open('delete.ini')
        ini_write_string('data','file',spel+' ('+global.version+').exe')
        ini_close()
        
        execute_shell(spel+' ('+iniversion+').exe',0)
        
        status = 'geupdate'
        }
    }

if status = 'niet geupdate'
    {
    file_delete('version.ini')
    alarm[2] = argument2
    }
if status = 'geupdate'
    {
    alarm[1] = number
    }

#define update_draw
/*
argument0 = plaatje boven (0 = geen)
argument1 = kleur boven
argument2 = plaatje onder (0 = geen)
argument3 = kleur onder
argument4 = kleur rand boven (-1 = geen)
argument5 = kleur rand onder (-1 = geen)
argument6 = tekstkleur boven
argument7 = tekstkleur onder
argument8 = backcolor download progress bar (-1 = geen)
argument9 = mincolor download progress bar
argument10 = maxcolor download progress bar
argument11 = border download progress bar (0 = false / 1 = true)
*/

//bovenste balkje
if argument0 = 0
    {
    draw_set_color(argument1)
    draw_rectangle(room_width/2-180,room_height/2-80,room_width/2+180,room_height/2-50,0)
    }

else
    {draw_sprite_ext(spr_boven,-1,room_width/2-180,room_height/2-80,360/sprite_get_width(spr_boven),30/sprite_get_height(spr_boven),0,argument1,1)}
    
//onderste scherm
if argument2 = 0
    {
    draw_set_color(argument3)
    draw_rectangle(room_width/2-180,room_height/2-50,room_width/2+180,room_height/2+80,0)
    }
    
else
    {draw_sprite_ext(spr_onder,-1,room_width/2-180,room_height/2-80,360/sprite_get_width(spr_onder),130/sprite_get_height(spr_onder),0,argument3,1)}
    
//bovenste rand
if argument4 != -1
{
draw_set_color(argument4)
draw_rectangle(room_width/2-180,room_height/2-80,room_width/2+180,room_height/2-50,1)//bovenste
}
//onderste rand
if argument5 != -1
{
draw_set_color(argument5)
draw_rectangle(room_width/2-180,room_height/2-50,room_width/2+180,room_height/2+80,1)//onderste
}

draw_set_halign(fa_center)

//tekst
draw_set_color(argument6)
draw_text_glowing(room_width/2,room_height/2-75,'Auto-updater ' + global.version,c_white,20)
draw_set_color(argument7)

if status = 'downloading'
    {
    draw_text(room_width/2,room_height/2-40,'Er is een nieuwe versie: ' + iniversion + '#Downloading: ' + string(progress) + '%')
    if argument8 = -1
        {draw_healthbar(room_width/2-150,room_height/2+10,room_width/2+150,room_height/2+50,progress,argument8,argument9,argument10,0,0,argument11)}
    else
        {draw_healthbar(room_width/2-150,room_height/2+10,room_width/2+150,room_height/2+50,progress,argument8,argument9,argument10,0,1,argument11)}
    }
            
if status = 'geupdate'
    {
    draw_text(room_width/2,room_height/2,'Nieuwe versie wordt opgestart.')
    }
    
if status = 'niet geupdate'
    {
    draw_text(room_width/2,room_height/2,'Je hebt de nieuwste versie.')
    }
    
if status = 'controleren'
    {
    draw_text(room_width/2,room_height/2,'Controleren op updates.')
    }
    
//kleur en horizontale uitlijning resetten
draw_set_color(c_black)
draw_set_halign(fa_left)

#define update_step
if status = 'downloading'
    {
    downloadstatus = DM_DownloadStatus(1)
    progress = DM_GetProgress(1)
    if downloadstatus = 3 //status = 3 betekent voltooid
        {
        ini_open('delete.ini')
        ini_write_string('data','file',spel+' ('+global.version+').exe')
        ini_close()
                
        execute_shell(spel+' ('+iniversion+').exe',0)
        status = 'geupdate'
        alarm[1] = number
        }
    }

