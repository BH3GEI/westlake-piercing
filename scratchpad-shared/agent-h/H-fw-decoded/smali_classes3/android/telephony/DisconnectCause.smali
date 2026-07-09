.class public final Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final whitelist ALREADY_DIALING:I = 0x48

.field public static final whitelist ANSWERED_ELSEWHERE:I = 0x34

.field public static final whitelist BUSY:I = 0x4

.field public static final whitelist CALLING_DISABLED:I = 0x4a

.field public static final whitelist CALL_BARRED:I = 0x14

.field public static final whitelist CALL_PULLED:I = 0x33

.field public static final whitelist CANT_CALL_WHILE_RINGING:I = 0x49

.field public static final whitelist CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final whitelist CDMA_ACCESS_FAILURE:I = 0x20

.field public static final whitelist CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final greylist-max-o CDMA_CALL_LOST:I = 0x29

.field public static final whitelist CDMA_DROP:I = 0x1b

.field public static final whitelist CDMA_INTERCEPT:I = 0x1c

.field public static final whitelist CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final whitelist CDMA_NOT_EMERGENCY:I = 0x22

.field public static final whitelist CDMA_PREEMPTED:I = 0x21

.field public static final whitelist CDMA_REORDER:I = 0x1d

.field public static final whitelist CDMA_RETRY_ORDER:I = 0x1f

.field public static final whitelist CDMA_SO_REJECT:I = 0x1e

.field public static final whitelist CONGESTION:I = 0x5

.field public static final whitelist CS_RESTRICTED:I = 0x16

.field public static final whitelist CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final whitelist CS_RESTRICTED_NORMAL:I = 0x17

.field public static final whitelist DATA_DISABLED:I = 0x36

.field public static final whitelist DATA_LIMIT_REACHED:I = 0x37

.field public static final whitelist DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final whitelist DIALED_MMI:I = 0x27

.field public static final whitelist DIAL_LOW_BATTERY:I = 0x3e

.field public static final whitelist DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final whitelist DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x42

.field public static final whitelist DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final whitelist DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x45

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x46

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_SS:I = 0x43

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x44

.field public static final whitelist EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x4e

.field public static final greylist-max-o EMERGENCY_ONLY:I = 0x25

.field public static final whitelist EMERGENCY_PERM_FAILURE:I = 0x40

.field public static final whitelist EMERGENCY_TEMP_FAILURE:I = 0x3f

.field public static final whitelist ERROR_UNSPECIFIED:I = 0x24

.field public static final greylist-max-o EXITED_ECM:I = 0x2a

.field public static final whitelist FDN_BLOCKED:I = 0x15

.field public static final whitelist ICC_ERROR:I = 0x13

.field public static final whitelist IMEI_NOT_ACCEPTED:I = 0x3a

.field public static final whitelist IMS_ACCESS_BLOCKED:I = 0x3c

.field public static final whitelist IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final whitelist IMS_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x47

.field public static final whitelist INCOMING_AUTO_REJECTED:I = 0x51

.field public static final whitelist INCOMING_MISSED:I = 0x1

.field public static final whitelist INCOMING_REJECTED:I = 0x10

.field public static final whitelist INVALID_CREDENTIALS:I = 0xa

.field public static final whitelist INVALID_NUMBER:I = 0x7

.field public static final whitelist LIMIT_EXCEEDED:I = 0xf

.field public static final whitelist LOCAL:I = 0x3

.field public static final whitelist LOST_SIGNAL:I = 0xe

.field public static final whitelist LOW_BATTERY:I = 0x3d

.field public static final whitelist MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final whitelist MEDIA_TIMEOUT:I = 0x4d

.field public static final whitelist MMI:I = 0x6

.field public static final whitelist NORMAL:I = 0x2

.field public static final whitelist NORMAL_UNSPECIFIED:I = 0x41

.field public static final whitelist NOT_DISCONNECTED:I = 0x0

.field public static final whitelist NOT_VALID:I = -0x1

.field public static final whitelist NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final whitelist NUMBER_UNREACHABLE:I = 0x8

.field public static final whitelist OTASP_PROVISIONING_IN_PROCESS:I = 0x4c

.field public static final whitelist OUTGOING_CANCELED:I = 0x2c

.field public static final whitelist OUTGOING_EMERGENCY_CALL_PLACED:I = 0x50

.field public static final whitelist OUTGOING_FAILURE:I = 0x2b

.field public static final whitelist OUT_OF_NETWORK:I = 0xb

.field public static final whitelist OUT_OF_SERVICE:I = 0x12

.field public static final whitelist POWER_OFF:I = 0x11

.field public static final whitelist SATELLITE_ENABLED:I = 0x52

.field public static final whitelist SERVER_ERROR:I = 0xc

.field public static final whitelist SERVER_UNREACHABLE:I = 0x9

.field public static final whitelist TIMED_OUT:I = 0xd

.field public static final whitelist TOO_MANY_ONGOING_CALLS:I = 0x4b

.field public static final whitelist UNOBTAINABLE_NUMBER:I = 0x19

.field public static final whitelist VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final whitelist VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final whitelist WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x4f

.field public static final whitelist WIFI_LOST:I = 0x3b


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    return-void
.end method

.method public static greylist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cause"    # I

    .line 389
    packed-switch p0, :pswitch_data_0

    .line 553
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 551
    :pswitch_1
    const-string v0, "SATELLITE_ENABLED"

    return-object v0

    .line 549
    :pswitch_2
    const-string v0, "INCOMING_AUTO_REJECTED"

    return-object v0

    .line 547
    :pswitch_3
    const-string v0, "OUTGOING_EMERGENCY_CALL_PLACED"

    return-object v0

    .line 545
    :pswitch_4
    const-string v0, "WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION"

    return-object v0

    .line 543
    :pswitch_5
    const-string v0, "EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE"

    return-object v0

    .line 541
    :pswitch_6
    const-string v0, "MEDIA_TIMEOUT"

    return-object v0

    .line 539
    :pswitch_7
    const-string v0, "OTASP_PROVISIONING_IN_PROCESS"

    return-object v0

    .line 537
    :pswitch_8
    const-string v0, "TOO_MANY_ONGOING_CALLS"

    return-object v0

    .line 535
    :pswitch_9
    const-string v0, "CALLING_DISABLED"

    return-object v0

    .line 533
    :pswitch_a
    const-string v0, "CANT_CALL_WHILE_RINGING"

    return-object v0

    .line 531
    :pswitch_b
    const-string v0, "ALREADY_DIALING"

    return-object v0

    .line 529
    :pswitch_c
    const-string v0, "IMS_SIP_ALTERNATE_EMERGENCY_CALL"

    return-object v0

    .line 487
    :pswitch_d
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 485
    :pswitch_e
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL"

    return-object v0

    .line 483
    :pswitch_f
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_USSD"

    return-object v0

    .line 481
    :pswitch_10
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_SS"

    return-object v0

    .line 479
    :pswitch_11
    const-string v0, "DIAL_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 527
    :pswitch_12
    const-string v0, "NORMAL_UNSPECIFIED"

    return-object v0

    .line 525
    :pswitch_13
    const-string v0, "EMERGENCY_PERM_FAILURE"

    return-object v0

    .line 523
    :pswitch_14
    const-string v0, "EMERGENCY_TEMP_FAILURE"

    return-object v0

    .line 521
    :pswitch_15
    const-string v0, "DIAL_LOW_BATTERY"

    return-object v0

    .line 519
    :pswitch_16
    const-string v0, "LOW_BATTERY"

    return-object v0

    .line 517
    :pswitch_17
    const-string v0, "IMS_ACCESS_BLOCKED"

    return-object v0

    .line 515
    :pswitch_18
    const-string v0, "WIFI_LOST"

    return-object v0

    .line 513
    :pswitch_19
    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    .line 511
    :pswitch_1a
    const-string v0, "DIALED_CALL_FORWARDING_WHILE_ROAMING"

    return-object v0

    .line 509
    :pswitch_1b
    const-string v0, "DATA_LIMIT_REACHED"

    return-object v0

    .line 507
    :pswitch_1c
    const-string v0, "DATA_DISABLED"

    return-object v0

    .line 505
    :pswitch_1d
    const-string v0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    return-object v0

    .line 503
    :pswitch_1e
    const-string v0, "ANSWERED_ELSEWHERE"

    return-object v0

    .line 501
    :pswitch_1f
    const-string v0, "CALL_PULLED"

    return-object v0

    .line 499
    :pswitch_20
    const-string v0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    return-object v0

    .line 497
    :pswitch_21
    const-string v0, "CDMA_ALREADY_ACTIVATED"

    return-object v0

    .line 477
    :pswitch_22
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 475
    :pswitch_23
    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 473
    :pswitch_24
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 495
    :pswitch_25
    const-string v0, "IMS_MERGED_SUCCESSFULLY"

    return-object v0

    .line 493
    :pswitch_26
    const-string v0, "OUTGOING_CANCELED"

    return-object v0

    .line 491
    :pswitch_27
    const-string v0, "OUTGOING_FAILURE"

    return-object v0

    .line 471
    :pswitch_28
    const-string v0, "EXITED_ECM"

    return-object v0

    .line 469
    :pswitch_29
    const-string v0, "CDMA_CALL_LOST"

    return-object v0

    .line 467
    :pswitch_2a
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    return-object v0

    .line 465
    :pswitch_2b
    const-string v0, "DIALED_MMI"

    return-object v0

    .line 463
    :pswitch_2c
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    return-object v0

    .line 461
    :pswitch_2d
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    .line 489
    :pswitch_2e
    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    .line 459
    :pswitch_2f
    const-string v0, "CDMA_ACCESS_BLOCKED"

    return-object v0

    .line 457
    :pswitch_30
    const-string v0, "CDMA_NOT_EMERGENCY"

    return-object v0

    .line 455
    :pswitch_31
    const-string v0, "CDMA_PREEMPTED"

    return-object v0

    .line 453
    :pswitch_32
    const-string v0, "CDMA_ACCESS_FAILURE"

    return-object v0

    .line 451
    :pswitch_33
    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    .line 449
    :pswitch_34
    const-string v0, "CDMA_SO_REJECT"

    return-object v0

    .line 447
    :pswitch_35
    const-string v0, "CDMA_REORDER"

    return-object v0

    .line 445
    :pswitch_36
    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    .line 443
    :pswitch_37
    const-string v0, "CDMA_DROP"

    return-object v0

    .line 441
    :pswitch_38
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object v0

    .line 439
    :pswitch_39
    const-string v0, "UNOBTAINABLE_NUMBER"

    return-object v0

    .line 437
    :pswitch_3a
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    return-object v0

    .line 435
    :pswitch_3b
    const-string v0, "CS_RESTRICTED_NORMAL"

    return-object v0

    .line 433
    :pswitch_3c
    const-string v0, "CS_RESTRICTED"

    return-object v0

    .line 431
    :pswitch_3d
    const-string v0, "FDN_BLOCKED"

    return-object v0

    .line 429
    :pswitch_3e
    const-string v0, "CALL_BARRED"

    return-object v0

    .line 427
    :pswitch_3f
    const-string v0, "ICC_ERROR"

    return-object v0

    .line 425
    :pswitch_40
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 423
    :pswitch_41
    const-string v0, "POWER_OFF"

    return-object v0

    .line 421
    :pswitch_42
    const-string v0, "INCOMING_REJECTED"

    return-object v0

    .line 419
    :pswitch_43
    const-string v0, "LIMIT_EXCEEDED"

    return-object v0

    .line 417
    :pswitch_44
    const-string v0, "LOST_SIGNAL"

    return-object v0

    .line 415
    :pswitch_45
    const-string v0, "TIMED_OUT"

    return-object v0

    .line 413
    :pswitch_46
    const-string v0, "SERVER_ERROR"

    return-object v0

    .line 411
    :pswitch_47
    const-string v0, "OUT_OF_NETWORK"

    return-object v0

    .line 409
    :pswitch_48
    const-string v0, "INVALID_CREDENTIALS"

    return-object v0

    .line 407
    :pswitch_49
    const-string v0, "SERVER_UNREACHABLE"

    return-object v0

    .line 405
    :pswitch_4a
    const-string v0, "NUMBER_UNREACHABLE"

    return-object v0

    .line 403
    :pswitch_4b
    const-string v0, "INVALID_NUMBER"

    return-object v0

    .line 401
    :pswitch_4c
    const-string v0, "CONGESTION"

    return-object v0

    .line 399
    :pswitch_4d
    const-string v0, "BUSY"

    return-object v0

    .line 397
    :pswitch_4e
    const-string v0, "LOCAL"

    return-object v0

    .line 395
    :pswitch_4f
    const-string v0, "NORMAL"

    return-object v0

    .line 393
    :pswitch_50
    const-string v0, "INCOMING_MISSED"

    return-object v0

    .line 391
    :pswitch_51
    const-string v0, "NOT_DISCONNECTED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
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
        :pswitch_0
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
    .end packed-switch
.end method
