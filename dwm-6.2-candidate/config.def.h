/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int gappx     = 3;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const unsigned int systraypinning = 0;   /* 0: sloppy systray follows selected monitor, >0: pin systray to monitor X */
static const unsigned int systrayspacing = 2;   /* systray spacing */
static const int systraypinningfailfirst = 1;   /* 1: if pinning fails, display systray on the first monitor, False: display systray on the last monitor*/
static const int showsystray        = 1;     /* 0 means no systray */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "monospace:size=10" };
static const char dmenufont[]       = "monospace:size=10";
static const char rofifont[]        = "Monospace 9";
static const char col_gray1[]       = "#222222";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#bbbbbb";
static const char col_gray4[]       = "#eeeeee";
static const char col_cyan[]        = "#005577";
static const char col_green[]       = "#656667";
static const char col_red[]         = "#990000";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_red  },
	[SchemeTitle] = { col_gray4, col_cyan,  col_cyan  },

};

/* tagging */
#define MAX_TAGNAME_LEN 14		/* excludes TAG_PREPEND */
#define TAG_PREPEND "%1i:"		/* formatted as 2 chars */
#define MAX_TAGLEN 16			/* altogether */
static char tags[][MAX_TAGLEN] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            1,           -1 },
	{ "Firefox",  NULL,       NULL,       1 << 8,       0,           -1 },
        { "Thunderbird", NULL,       NULL,       1 << 7,       0,           -1 },
        { "Pavucontrol", NULL,       NULL,       0,            1,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

#include "gaplessgrid.c"
static const Layout layouts[] = {
	/* symbol     arrange function */
	[0] = { "[]=",      tile },    /* first entry is default */
	[1] = { "><>",      NULL },    /* no layout function means floating behavior */
	[2] = { "[M]",      monocle },
	[3] = { "|M|",      centeredmaster },
	[4] = { "TTT",      bstack },
	[5] = { "###",      gaplessgrid },
	[6] = { "H[]",      deck },
	{ NULL,       NULL },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char rofimode[] = "drun";
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *roficmd[] = { "rofi", "-show", rofimode, "-monitor", dmenumon, "-font", rofifont, NULL };
static const char *termcmd[]  = { "st", NULL };
//static const char *termcmd[]  = { "terminator", NULL };
static const char *screenlockcmd[]  = { "slock", NULL };
static const char scratchpadname[] = "scratchpad";
static const char *scratchpadcmd[] = { "st", "-t", scratchpadname, "-g", "120x34", NULL };
static const char *exitcmd[]  = { "dwm-exit", NULL };
static const char *morelightcmd[]  = { "xbacklight", "-inc", "10", NULL };
static const char *lesslightcmd[]  = { "xbacklight", "-dec", "10", NULL };

static Key keys[] = {
        /* modifier                     key             function        argument */
        { MODKEY,                       XK_d,           spawn,          {.v = dmenucmd } },
        { MODKEY,                       XK_r,           spawn,          {.v = roficmd } },
        { MODKEY|ShiftMask,             XK_Return,      spawn,          {.v = termcmd } },
        { MODKEY,                       XK_p,           spawn,          {.v = dmenucmd } },
        { MODKEY|ShiftMask,             XK_p,           spawn,          {.v = roficmd } },
        { MODKEY,                       XK_grave,       togglescratch,  {.v = scratchpadcmd } },
        { MODKEY|ControlMask,           XK_l,           spawn,          {.v = screenlockcmd } },
        { MODKEY,                       XK_equal,       spawn,          {.v = morelightcmd } },
        { MODKEY,                       XK_minus,       spawn,          {.v = lesslightcmd } },
        { MODKEY,                       XK_b,           togglebar,      {0} },
        { MODKEY|ShiftMask,             XK_r,           nametag,        {0} },
        { MODKEY,                       XK_j,           focusstack,     {.i = +1 } },
        { MODKEY,                       XK_k,           focusstack,     {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_j,           inplacerotate,  {.i = +1} },
	{ MODKEY|ShiftMask,             XK_k,           inplacerotate,  {.i = -1} },
	{ MODKEY|ShiftMask,             XK_h,           inplacerotate,  {.i = +2} },
	{ MODKEY|ShiftMask,             XK_l,           inplacerotate,  {.i = -2} },
        { MODKEY|ShiftMask,             XK_bracketleft,         incnmaster,     {.i = +1 } },
        { MODKEY|ShiftMask,             XK_bracketright,        incnmaster,     {.i = -1 } },
        { MODKEY,                       XK_h,           setmfact,       {.f = -0.05} },
        { MODKEY,                       XK_l,           setmfact,       {.f = +0.05} },
        { MODKEY,                       XK_Return,      zoom,           {0} },
        { MODKEY,                       XK_Tab,         view,           {0} },
        { MODKEY|ShiftMask,             XK_c,           killclient,     {0} },
        { MODKEY,                       XK_t,           setlayout,      {.v = &layouts[0]} },
        { MODKEY|ShiftMask,             XK_t,           setlayout,      {.v = &layouts[4]} },
        { MODKEY,                       XK_c,           setlayout,      {.v = &layouts[6]} },
        { MODKEY,                       XK_f,           setlayout,      {.v = &layouts[2]} },
        { MODKEY,                       XK_u,           setlayout,      {.v = &layouts[3]} },
        { MODKEY,                       XK_g,           setlayout,      {.v = &layouts[5]} },
        { MODKEY|ShiftMask,             XK_space,       togglefloating, {0} },
        { MODKEY,                       XK_0,           view,           {.ui = ~0 } },
        { MODKEY|ShiftMask,             XK_0,           tag,            {.ui = ~0 } },
        { MODKEY,                       XK_comma,       focusmon,       {.i = -1 } },
        { MODKEY,                       XK_period,      focusmon,       {.i = +1 } },
        { MODKEY|ShiftMask,             XK_comma,       tagmon,         {.i = -1 } },
        { MODKEY|ShiftMask,             XK_period,      tagmon,         {.i = +1 } },
        { MODKEY,                       XK_space,       cyclelayout,    {.i = +1 } },
	{ MODKEY|ControlMask,           XK_minus,       setgaps,        {.i = -5 } },
	{ MODKEY|ControlMask,           XK_equal,       setgaps,        {.i = +5 } },
	{ MODKEY|ShiftMask,             XK_equal,       setgaps,        {.i = 0  } },
        { MODKEY,                       XK_Down,        moveresize,     {.v = (int []){ 0, 25, 0, 0 }}},
        { MODKEY,                       XK_Up,          moveresize,     {.v = (int []){ 0, -25, 0, 0 }}},
        { MODKEY,                       XK_Right,       moveresize,     {.v = (int []){ 25, 0, 0, 0 }}},
        { MODKEY,                       XK_Left,        moveresize,     {.v = (int []){ -25, 0, 0, 0 }}},
        { MODKEY|ShiftMask,             XK_Down,        moveresize,     {.v = (int []){ 0, 0, 0, 25 }}},
        { MODKEY|ShiftMask,             XK_Up,          moveresize,     {.v = (int []){ 0, 0, 0, -25 }}},
        { MODKEY|ShiftMask,             XK_Right,       moveresize,     {.v = (int []){ 0, 0, 25, 0 }}},
        { MODKEY|ShiftMask,             XK_Left,        moveresize,     {.v = (int []){ 0, 0, -25, 0 }}},
        TAGKEYS(                        XK_1,                      0)
        TAGKEYS(                        XK_2,                      1)
        TAGKEYS(                        XK_3,                      2)
        TAGKEYS(                        XK_4,                      3)
        TAGKEYS(                        XK_5,                      4)
        TAGKEYS(                        XK_6,                      5)
        TAGKEYS(                        XK_7,                      6)
        TAGKEYS(                        XK_8,                      7)
        TAGKEYS(                        XK_9,                      8)
        { MODKEY|ShiftMask,             XK_q,      spawn,          {.v = exitcmd } },
        { MODKEY,                       XK_o,      winview,        {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
        /* click                event mask      button          function        argument */
        /* { ClkLtSymbol,          0,              Button1,        setlayout,      {0} }, */
        { ClkLtSymbol,          0,              Button3,        view,           {.ui = ~0 } },
        { ClkLtSymbol,          0,              Button4,        cyclelayout,    {.i = -1 } },
        { ClkLtSymbol,          0,              Button5,        cyclelayout,    {.i = +1 } },
        { ClkWinTitle,          0,              Button2,        zoom,           {0} },
        { ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
        { ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
        { ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
        { ClkClientWin,         MODKEY|ShiftMask,         Button1,        winview,        {0} },
        { ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
        { ClkTagBar,            0,              Button1,        view,           {0} },
        { ClkTagBar,            0,              Button3,        toggleview,     {0} },
        { ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
        { ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

