.class public final Landroid/hardware/input/KeyGestureEvent;
.super Ljava/lang/Object;
.source "KeyGestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyGestureEvent$Builder;,
        Landroid/hardware/input/KeyGestureEvent$KeyGestureType;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_GESTURE_COMPLETE:I = 0x2

.field public static final blacklist ACTION_GESTURE_START:I = 0x1

.field public static final blacklist FLAG_CANCELLED:I = 0x1

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_ALL_APPS:I = 0x18

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT:I = 0x3c

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT_CHORD:I = 0x37

.field public static final blacklist KEY_GESTURE_TYPE_ACTIVATE_SELECT_TO_SPEAK:I = 0x49

.field public static final blacklist KEY_GESTURE_TYPE_ALL_APPS:I = 0x15

.field public static final blacklist KEY_GESTURE_TYPE_APP_SWITCH:I = 0x4

.field public static final blacklist KEY_GESTURE_TYPE_BACK:I = 0x3

.field public static final blacklist KEY_GESTURE_TYPE_BRIGHTNESS_DOWN:I = 0xe

.field public static final blacklist KEY_GESTURE_TYPE_BRIGHTNESS_UP:I = 0xd

.field public static final blacklist KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_LEFT:I = 0x1d

.field public static final blacklist KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_RIGHT:I = 0x1e

.field public static final blacklist KEY_GESTURE_TYPE_CLOSE_ALL_DIALOGS:I = 0x3d

.field public static final blacklist KEY_GESTURE_TYPE_DESKTOP_MODE:I = 0x34

.field public static final blacklist KEY_GESTURE_TYPE_GLOBAL_ACTIONS:I = 0x39

.field public static final blacklist KEY_GESTURE_TYPE_HOME:I = 0x1

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_DOWN:I = 0x10

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_TOGGLE:I = 0x11

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_UP:I = 0xf

.field public static final blacklist KEY_GESTURE_TYPE_LANGUAGE_SWITCH:I = 0x17

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_APPLICATION:I = 0x33

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_ASSISTANT:I = 0x5

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_BROWSER:I = 0x27

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALCULATOR:I = 0x2b

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALENDAR:I = 0x2a

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CONTACTS:I = 0x29

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_EMAIL:I = 0x28

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FILES:I = 0x30

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FITNESS:I = 0x32

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_GALLERY:I = 0x2f

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MAPS:I = 0x2d

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MESSAGING:I = 0x2e

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MUSIC:I = 0x2c

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_WEATHER:I = 0x31

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_SEARCH:I = 0x16

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_SYSTEM_SETTINGS:I = 0x7

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_VOICE_ASSISTANT:I = 0x6

.field public static final blacklist KEY_GESTURE_TYPE_LOCK_SCREEN:I = 0x20

.field public static final blacklist KEY_GESTURE_TYPE_MAXIMIZE_FREEFORM_WINDOW:I = 0x4a

.field public static final blacklist KEY_GESTURE_TYPE_MEDIA_KEY:I = 0x26

.field public static final blacklist KEY_GESTURE_TYPE_MINIMIZE_FREEFORM_WINDOW:I = 0x46

.field public static final blacklist KEY_GESTURE_TYPE_MOVE_TO_NEXT_DISPLAY:I = 0x3e

.field public static final blacklist KEY_GESTURE_TYPE_MULTI_WINDOW_NAVIGATION:I = 0x35

.field public static final blacklist KEY_GESTURE_TYPE_OPEN_NOTES:I = 0x21

.field public static final blacklist KEY_GESTURE_TYPE_OPEN_SHORTCUT_HELPER:I = 0xc

.field public static final blacklist KEY_GESTURE_TYPE_RECENT_APPS:I = 0x2

.field public static final blacklist KEY_GESTURE_TYPE_RECENT_APPS_SWITCHER:I = 0x36

.field public static final blacklist KEY_GESTURE_TYPE_RINGER_TOGGLE_CHORD:I = 0x38

.field public static final blacklist KEY_GESTURE_TYPE_SCREENSHOT_CHORD:I = 0xb

.field public static final blacklist KEY_GESTURE_TYPE_SLEEP:I = 0x24

.field public static final blacklist KEY_GESTURE_TYPE_SNAP_LEFT_FREEFORM_WINDOW:I = 0x44

.field public static final blacklist KEY_GESTURE_TYPE_SNAP_RIGHT_FREEFORM_WINDOW:I = 0x45

.field public static final blacklist KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_LEFT:I = 0x1b

.field public static final blacklist KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_RIGHT:I = 0x1c

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_MUTE:I = 0x1a

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_NAVIGATION:I = 0x23

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_RESERVED:I = -0x1

.field public static final blacklist KEY_GESTURE_TYPE_TAKE_SCREENSHOT:I = 0xa

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_BOUNCE_KEYS:I = 0x41

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_CAPS_LOCK:I = 0x19

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_DO_NOT_DISTURB:I = 0x4b

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MAGNIFICATION:I = 0x48

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MAXIMIZE_FREEFORM_WINDOW:I = 0x47

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MOUSE_KEYS:I = 0x43

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_NOTIFICATION_PANEL:I = 0x8

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_POWER:I = 0x22

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_SLOW_KEYS:I = 0x42

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_STICKY_KEYS:I = 0x40

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_TALKBACK:I = 0x3f

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_TASKBAR:I = 0x9

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_VOICE_ACCESS:I = 0x4c

.field public static final blacklist KEY_GESTURE_TYPE_TRIGGER_BUG_REPORT:I = 0x1f

.field public static final blacklist KEY_GESTURE_TYPE_TV_ACCESSIBILITY_SHORTCUT_CHORD:I = 0x3a

.field public static final blacklist KEY_GESTURE_TYPE_TV_TRIGGER_BUG_REPORT:I = 0x3b

.field public static final blacklist KEY_GESTURE_TYPE_UNSPECIFIED:I = 0x0

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_DOWN:I = 0x13

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_MUTE:I = 0x14

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_UP:I = 0x12

.field public static final blacklist KEY_GESTURE_TYPE_WAKEUP:I = 0x25

.field private static final blacklist LOG_EVENT_UNSPECIFIED:I


# instance fields
.field private blacklist mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .locals 0
    .param p1, "keyGestureEvent"    # Landroid/hardware/input/AidlKeyGestureEvent;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    .line 249
    return-void
.end method

.method private static blacklist getLogEventFromLaunchAppData(Landroid/hardware/input/AppLaunchData;)I
    .locals 2
    .param p0, "data"    # Landroid/hardware/input/AppLaunchData;

    .line 598
    if-nez p0, :cond_0

    .line 599
    const/4 v0, 0x0

    return v0

    .line 601
    :cond_0
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v0, :cond_1

    .line 602
    move-object v0, p0

    check-cast v0, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 603
    invoke-virtual {v0}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromSelectorCategory(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 604
    :cond_1
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v0, :cond_2

    .line 605
    move-object v0, p0

    check-cast v0, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {v0}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromRole(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 606
    :cond_2
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v0, :cond_3

    .line 607
    const/16 v0, 0x2f

    return v0

    .line 609
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppLaunchData type is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getLogEventFromRole(Ljava/lang/String;)I
    .locals 1
    .param p0, "role"    # Ljava/lang/String;

    .line 649
    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const/16 v0, 0x23

    return v0

    .line 651
    :cond_0
    const-string v0, "android.app.role.SMS"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    const/16 v0, 0x2a

    return v0

    .line 654
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getLogEventFromSelectorCategory(Ljava/lang/String;)I
    .locals 2
    .param p0, "category"    # Ljava/lang/String;

    .line 614
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "android.intent.category.APP_FITNESS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "android.intent.category.APP_CALENDAR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "android.intent.category.APP_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "android.intent.category.APP_FILES"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "android.intent.category.APP_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "android.intent.category.APP_MESSAGING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "android.intent.category.APP_WEATHER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v0, "android.intent.category.APP_BROWSER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_b
    const-string v0, "android.intent.category.APP_MAPS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 640
    return v1

    .line 638
    :pswitch_0
    const/16 v0, 0x2e

    return v0

    .line 636
    :pswitch_1
    const/16 v0, 0x2d

    return v0

    .line 634
    :pswitch_2
    const/16 v0, 0x2c

    return v0

    .line 632
    :pswitch_3
    const/16 v0, 0x2b

    return v0

    .line 630
    :pswitch_4
    const/16 v0, 0x2a

    return v0

    .line 628
    :pswitch_5
    const/16 v0, 0x29

    return v0

    .line 626
    :pswitch_6
    const/16 v0, 0x28

    return v0

    .line 624
    :pswitch_7
    const/16 v0, 0x27

    return v0

    .line 622
    :pswitch_8
    const/16 v0, 0x26

    return v0

    .line 620
    :pswitch_9
    const/16 v0, 0x25

    return v0

    .line 618
    :pswitch_a
    const/16 v0, 0x24

    return v0

    .line 616
    :pswitch_b
    const/16 v0, 0x23

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae0672e -> :sswitch_b
        -0x70f45113 -> :sswitch_a
        -0x31074447 -> :sswitch_9
        -0x20da2677 -> :sswitch_8
        0x19b1550e -> :sswitch_7
        0x1e6800a1 -> :sswitch_6
        0x1e746f7c -> :sswitch_5
        0x1edca32a -> :sswitch_4
        0x267d18fd -> :sswitch_3
        0x30e2eff9 -> :sswitch_2
        0x538b29ad -> :sswitch_1
        0x7a58fb17 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isVisibleBackgrounduserAllowedGesture(I)Z
    .locals 1
    .param p0, "keyGestureType"    # I

    .line 234
    sparse-switch p0, :sswitch_data_0

    .line 244
    const/4 v0, 0x1

    return v0

    .line 242
    :sswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x14 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist keyGestureTypeToLogEvent(I)I
    .locals 1
    .param p0, "value"    # I

    .line 481
    packed-switch p0, :pswitch_data_0

    .line 589
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 541
    :pswitch_1
    const/16 v0, 0x33

    return v0

    .line 587
    :pswitch_2
    const/16 v0, 0x31

    return v0

    .line 585
    :pswitch_3
    const/16 v0, 0x30

    return v0

    .line 583
    :pswitch_4
    const/16 v0, 0x2f

    return v0

    .line 581
    :pswitch_5
    const/16 v0, 0x2e

    return v0

    .line 579
    :pswitch_6
    const/16 v0, 0x2d

    return v0

    .line 577
    :pswitch_7
    const/16 v0, 0x2c

    return v0

    .line 575
    :pswitch_8
    const/16 v0, 0x2b

    return v0

    .line 573
    :pswitch_9
    const/16 v0, 0x2a

    return v0

    .line 571
    :pswitch_a
    const/16 v0, 0x29

    return v0

    .line 569
    :pswitch_b
    const/16 v0, 0x28

    return v0

    .line 567
    :pswitch_c
    const/16 v0, 0x27

    return v0

    .line 565
    :pswitch_d
    const/16 v0, 0x26

    return v0

    .line 563
    :pswitch_e
    const/16 v0, 0x25

    return v0

    .line 561
    :pswitch_f
    const/16 v0, 0x24

    return v0

    .line 559
    :pswitch_10
    const/16 v0, 0x23

    return v0

    .line 557
    :pswitch_11
    const/16 v0, 0x22

    return v0

    .line 555
    :pswitch_12
    const/16 v0, 0x21

    return v0

    .line 553
    :pswitch_13
    const/16 v0, 0x20

    return v0

    .line 551
    :pswitch_14
    const/16 v0, 0x1f

    return v0

    .line 549
    :pswitch_15
    const/16 v0, 0x1e

    return v0

    .line 547
    :pswitch_16
    const/16 v0, 0x1d

    return v0

    .line 545
    :pswitch_17
    const/16 v0, 0x1c

    return v0

    .line 543
    :pswitch_18
    const/16 v0, 0x1b

    return v0

    .line 539
    :pswitch_19
    const/16 v0, 0x32

    return v0

    .line 536
    :pswitch_1a
    const/16 v0, 0x1a

    return v0

    .line 533
    :pswitch_1b
    const/16 v0, 0x19

    return v0

    .line 531
    :pswitch_1c
    const/16 v0, 0x18

    return v0

    .line 529
    :pswitch_1d
    const/16 v0, 0x17

    return v0

    .line 527
    :pswitch_1e
    const/16 v0, 0x16

    return v0

    .line 525
    :pswitch_1f
    const/16 v0, 0x15

    return v0

    .line 523
    :pswitch_20
    const/16 v0, 0x14

    return v0

    .line 521
    :pswitch_21
    const/16 v0, 0x13

    return v0

    .line 519
    :pswitch_22
    const/16 v0, 0x12

    return v0

    .line 517
    :pswitch_23
    const/16 v0, 0x11

    return v0

    .line 515
    :pswitch_24
    const/16 v0, 0x10

    return v0

    .line 513
    :pswitch_25
    const/16 v0, 0xf

    return v0

    .line 511
    :pswitch_26
    const/16 v0, 0xe

    return v0

    .line 509
    :pswitch_27
    const/16 v0, 0xd

    return v0

    .line 507
    :pswitch_28
    const/16 v0, 0xc

    return v0

    .line 505
    :pswitch_29
    const/16 v0, 0xb

    return v0

    .line 503
    :pswitch_2a
    const/16 v0, 0xa

    return v0

    .line 500
    :pswitch_2b
    const/16 v0, 0x9

    return v0

    .line 498
    :pswitch_2c
    const/16 v0, 0x8

    return v0

    .line 496
    :pswitch_2d
    const/4 v0, 0x7

    return v0

    .line 494
    :pswitch_2e
    const/4 v0, 0x6

    return v0

    .line 492
    :pswitch_2f
    const/4 v0, 0x5

    return v0

    .line 490
    :pswitch_30
    const/4 v0, 0x4

    return v0

    .line 488
    :pswitch_31
    const/4 v0, 0x3

    return v0

    .line 486
    :pswitch_32
    const/4 v0, 0x2

    return v0

    .line 483
    :pswitch_33
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist keyGestureTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 659
    packed-switch p0, :pswitch_data_0

    .line 817
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 815
    :pswitch_0
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_VOICE_ACCESS"

    return-object v0

    .line 813
    :pswitch_1
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_DO_NOT_DISTURB"

    return-object v0

    .line 811
    :pswitch_2
    const-string v0, "KEY_GESTURE_TYPE_MAXIMIZE_FREEFORM_WINDOW"

    return-object v0

    .line 809
    :pswitch_3
    const-string v0, "KEY_GESTURE_TYPE_ACTIVATE_SELECT_TO_SPEAK"

    return-object v0

    .line 807
    :pswitch_4
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_MAGNIFICATION"

    return-object v0

    .line 805
    :pswitch_5
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_MAXIMIZE_FREEFORM_WINDOW"

    return-object v0

    .line 803
    :pswitch_6
    const-string v0, "KEY_GESTURE_TYPE_MINIMIZE_FREEFORM_WINDOW"

    return-object v0

    .line 801
    :pswitch_7
    const-string v0, "KEY_GESTURE_TYPE_SNAP_RIGHT_FREEFORM_WINDOW"

    return-object v0

    .line 799
    :pswitch_8
    const-string v0, "KEY_GESTURE_TYPE_SNAP_LEFT_FREEFORM_WINDOW"

    return-object v0

    .line 797
    :pswitch_9
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_MOUSE_KEYS"

    return-object v0

    .line 795
    :pswitch_a
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_SLOW_KEYS"

    return-object v0

    .line 793
    :pswitch_b
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_BOUNCE_KEYS"

    return-object v0

    .line 791
    :pswitch_c
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_STICKY_KEYS"

    return-object v0

    .line 789
    :pswitch_d
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_TALKBACK"

    return-object v0

    .line 725
    :pswitch_e
    const-string v0, "KEY_GESTURE_TYPE_MOVE_TO_NEXT_DISPLAY"

    return-object v0

    .line 787
    :pswitch_f
    const-string v0, "KEY_GESTURE_TYPE_CLOSE_ALL_DIALOGS"

    return-object v0

    .line 785
    :pswitch_10
    const-string v0, "KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT"

    return-object v0

    .line 783
    :pswitch_11
    const-string v0, "KEY_GESTURE_TYPE_TV_TRIGGER_BUG_REPORT"

    return-object v0

    .line 781
    :pswitch_12
    const-string v0, "KEY_GESTURE_TYPE_TV_ACCESSIBILITY_SHORTCUT_CHORD"

    return-object v0

    .line 779
    :pswitch_13
    const-string v0, "KEY_GESTURE_TYPE_GLOBAL_ACTIONS"

    return-object v0

    .line 777
    :pswitch_14
    const-string v0, "KEY_GESTURE_TYPE_RINGER_TOGGLE_CHORD"

    return-object v0

    .line 775
    :pswitch_15
    const-string v0, "KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT_CHORD"

    return-object v0

    .line 773
    :pswitch_16
    const-string v0, "KEY_GESTURE_TYPE_RECENT_APPS_SWITCHER"

    return-object v0

    .line 771
    :pswitch_17
    const-string v0, "KEY_GESTURE_TYPE_MULTI_WINDOW_NAVIGATION"

    return-object v0

    .line 769
    :pswitch_18
    const-string v0, "KEY_GESTURE_TYPE_DESKTOP_MODE"

    return-object v0

    .line 767
    :pswitch_19
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_APPLICATION"

    return-object v0

    .line 765
    :pswitch_1a
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FITNESS"

    return-object v0

    .line 763
    :pswitch_1b
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_WEATHER"

    return-object v0

    .line 761
    :pswitch_1c
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FILES"

    return-object v0

    .line 759
    :pswitch_1d
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_GALLERY"

    return-object v0

    .line 757
    :pswitch_1e
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MESSAGING"

    return-object v0

    .line 755
    :pswitch_1f
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MAPS"

    return-object v0

    .line 753
    :pswitch_20
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MUSIC"

    return-object v0

    .line 751
    :pswitch_21
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALCULATOR"

    return-object v0

    .line 749
    :pswitch_22
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALENDAR"

    return-object v0

    .line 747
    :pswitch_23
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CONTACTS"

    return-object v0

    .line 745
    :pswitch_24
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_EMAIL"

    return-object v0

    .line 743
    :pswitch_25
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_BROWSER"

    return-object v0

    .line 741
    :pswitch_26
    const-string v0, "KEY_GESTURE_TYPE_MEDIA_KEY"

    return-object v0

    .line 739
    :pswitch_27
    const-string v0, "KEY_GESTURE_TYPE_WAKEUP"

    return-object v0

    .line 737
    :pswitch_28
    const-string v0, "KEY_GESTURE_TYPE_SLEEP"

    return-object v0

    .line 735
    :pswitch_29
    const-string v0, "KEY_GESTURE_TYPE_SYSTEM_NAVIGATION"

    return-object v0

    .line 733
    :pswitch_2a
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_POWER"

    return-object v0

    .line 731
    :pswitch_2b
    const-string v0, "KEY_GESTURE_TYPE_OPEN_NOTES"

    return-object v0

    .line 729
    :pswitch_2c
    const-string v0, "KEY_GESTURE_TYPE_LOCK_SCREEN"

    return-object v0

    .line 727
    :pswitch_2d
    const-string v0, "KEY_GESTURE_TYPE_TRIGGER_BUG_REPORT"

    return-object v0

    .line 723
    :pswitch_2e
    const-string v0, "KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_RIGHT"

    return-object v0

    .line 721
    :pswitch_2f
    const-string v0, "KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_LEFT"

    return-object v0

    .line 719
    :pswitch_30
    const-string v0, "KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_RIGHT"

    return-object v0

    .line 717
    :pswitch_31
    const-string v0, "KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_LEFT"

    return-object v0

    .line 715
    :pswitch_32
    const-string v0, "KEY_GESTURE_TYPE_SYSTEM_MUTE"

    return-object v0

    .line 713
    :pswitch_33
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_CAPS_LOCK"

    return-object v0

    .line 711
    :pswitch_34
    const-string v0, "KEY_GESTURE_TYPE_ACCESSIBILITY_ALL_APPS"

    return-object v0

    .line 709
    :pswitch_35
    const-string v0, "KEY_GESTURE_TYPE_LANGUAGE_SWITCH"

    return-object v0

    .line 707
    :pswitch_36
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_SEARCH"

    return-object v0

    .line 705
    :pswitch_37
    const-string v0, "KEY_GESTURE_TYPE_ALL_APPS"

    return-object v0

    .line 703
    :pswitch_38
    const-string v0, "KEY_GESTURE_TYPE_VOLUME_MUTE"

    return-object v0

    .line 701
    :pswitch_39
    const-string v0, "KEY_GESTURE_TYPE_VOLUME_DOWN"

    return-object v0

    .line 699
    :pswitch_3a
    const-string v0, "KEY_GESTURE_TYPE_VOLUME_UP"

    return-object v0

    .line 697
    :pswitch_3b
    const-string v0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_TOGGLE"

    return-object v0

    .line 695
    :pswitch_3c
    const-string v0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_DOWN"

    return-object v0

    .line 693
    :pswitch_3d
    const-string v0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_UP"

    return-object v0

    .line 691
    :pswitch_3e
    const-string v0, "KEY_GESTURE_TYPE_BRIGHTNESS_DOWN"

    return-object v0

    .line 689
    :pswitch_3f
    const-string v0, "KEY_GESTURE_TYPE_BRIGHTNESS_UP"

    return-object v0

    .line 687
    :pswitch_40
    const-string v0, "KEY_GESTURE_TYPE_OPEN_SHORTCUT_HELPER"

    return-object v0

    .line 685
    :pswitch_41
    const-string v0, "KEY_GESTURE_TYPE_SCREENSHOT_CHORD"

    return-object v0

    .line 683
    :pswitch_42
    const-string v0, "KEY_GESTURE_TYPE_TAKE_SCREENSHOT"

    return-object v0

    .line 681
    :pswitch_43
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_TASKBAR"

    return-object v0

    .line 679
    :pswitch_44
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_NOTIFICATION_PANEL"

    return-object v0

    .line 677
    :pswitch_45
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_SYSTEM_SETTINGS"

    return-object v0

    .line 675
    :pswitch_46
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_VOICE_ASSISTANT"

    return-object v0

    .line 673
    :pswitch_47
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_ASSISTANT"

    return-object v0

    .line 671
    :pswitch_48
    const-string v0, "KEY_GESTURE_TYPE_APP_SWITCH"

    return-object v0

    .line 669
    :pswitch_49
    const-string v0, "KEY_GESTURE_TYPE_BACK"

    return-object v0

    .line 667
    :pswitch_4a
    const-string v0, "KEY_GESTURE_TYPE_RECENT_APPS"

    return-object v0

    .line 665
    :pswitch_4b
    const-string v0, "KEY_GESTURE_TYPE_HOME"

    return-object v0

    .line 663
    :pswitch_4c
    const-string v0, "KEY_GESTURE_TYPE_UNSPECIFIED"

    return-object v0

    .line 661
    :pswitch_4d
    const-string v0, "KEY_GESTURE_TYPE_SYSTEM_RESERVED"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 440
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 441
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 442
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/KeyGestureEvent;

    .line 443
    .local v2, "that":Landroid/hardware/input/KeyGestureEvent;
    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 444
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    .line 450
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    .line 451
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    .line 452
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    .line 453
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 443
    :goto_0
    return v0

    .line 441
    .end local v2    # "that":Landroid/hardware/input/KeyGestureEvent;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAction()I
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    return v0
.end method

.method public blacklist getAppLaunchData()Landroid/hardware/input/AppLaunchData;
    .locals 4

    .line 416
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    .line 417
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/input/AppLaunchData;->createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceId()I
    .locals 1

    .line 372
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    .line 392
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    return v0
.end method

.method public blacklist getFlags()I
    .locals 1

    .line 396
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    return v0
.end method

.method public blacklist getKeyGestureType()I
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    return v0
.end method

.method public blacklist getKeycodes()[I
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    return-object v0
.end method

.method public blacklist getLogEvent()I
    .locals 2

    .line 404
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    .line 405
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromLaunchAppData(Landroid/hardware/input/AppLaunchData;)I

    move-result v0

    return v0

    .line 407
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->keyGestureTypeToLogEvent(I)I

    move-result v0

    return v0
.end method

.method public blacklist getModifierState()I
    .locals 1

    .line 380
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    return v0
.end method

.method public blacklist hasModifiers(I)Z
    .locals 1
    .param p1, "modifiers"    # I

    .line 256
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 458
    const/4 v0, 0x1

    .line 459
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    add-int/2addr v1, v2

    .line 460
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 461
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    add-int/2addr v1, v2

    .line 462
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    add-int/2addr v0, v2

    .line 463
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    add-int/2addr v1, v2

    .line 464
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    add-int/2addr v0, v2

    .line 465
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    add-int/2addr v1, v2

    .line 466
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 468
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v1, v2

    .line 470
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 471
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    .line 472
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 473
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    nop

    :goto_3
    add-int/2addr v1, v3

    .line 474
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public blacklist isCancelled()Z
    .locals 2

    .line 400
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGestureEvent { deviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keycodes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 428
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyGestureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 430
    invoke-static {v1}, Landroid/hardware/input/KeyGestureEvent;->keyGestureTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appLaunchData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    return-object v0
.end method
