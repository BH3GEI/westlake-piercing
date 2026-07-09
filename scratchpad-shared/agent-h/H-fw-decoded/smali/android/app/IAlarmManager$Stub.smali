.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_canScheduleExactAlarms:I = 0x8

.field static final TRANSACTION_getConfigVersion:I = 0xa

.field static final TRANSACTION_getNextAlarmClock:I = 0x7

.field static final TRANSACTION_getNextWakeFromIdleTime:I = 0x6

.field static final TRANSACTION_hasScheduleExactAlarm:I = 0x9

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_removeAll:I = 0x5

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setTime:I = 0x2

.field static final TRANSACTION_setTimeZone:I = 0x3


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    nop

    .line 79
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IAlarmManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Landroid/app/IAlarmManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 74
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    const-string v0, "android.app.IAlarmManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_1

    .line 92
    move-object v1, v0

    check-cast v1, Landroid/app/IAlarmManager;

    return-object v1

    .line 94
    :cond_1
    new-instance v1, Landroid/app/IAlarmManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 103
    packed-switch p0, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_0
    const-string v0, "getConfigVersion"

    return-object v0

    .line 139
    :pswitch_1
    const-string/jumbo v0, "hasScheduleExactAlarm"

    return-object v0

    .line 135
    :pswitch_2
    const-string v0, "canScheduleExactAlarms"

    return-object v0

    .line 131
    :pswitch_3
    const-string v0, "getNextAlarmClock"

    return-object v0

    .line 127
    :pswitch_4
    const-string v0, "getNextWakeFromIdleTime"

    return-object v0

    .line 123
    :pswitch_5
    const-string/jumbo v0, "removeAll"

    return-object v0

    .line 119
    :pswitch_6
    const-string/jumbo v0, "remove"

    return-object v0

    .line 115
    :pswitch_7
    const-string/jumbo v0, "setTimeZone"

    return-object v0

    .line 111
    :pswitch_8
    const-string/jumbo v0, "setTime"

    return-object v0

    .line 107
    :pswitch_9
    const-string/jumbo v0, "set"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 98
    return-object p0
.end method

.method protected getConfigVersion_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 506
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 507
    return-void
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 511
    const/16 v0, 0x9

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 154
    invoke-static {p1}, Landroid/app/IAlarmManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    move-object/from16 v0, p0

    move/from16 v15, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.app.IAlarmManager"

    .line 159
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v15, v4, :cond_0

    const v5, 0xffffff

    if-gt v15, v5, :cond_0

    .line 160
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    :cond_0
    const v5, 0x5f4e5446

    if-ne v15, v5, :cond_1

    .line 163
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v4

    .line 166
    :cond_1
    packed-switch v15, :pswitch_data_0

    .line 284
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 277
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/IAlarmManager$Stub;->getConfigVersion()I

    move-result v5

    .line 278
    .local v5, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 266
    .end local v5    # "_result":I
    :pswitch_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 269
    .local v6, "_arg1":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v0, v5, v6}, Landroid/app/IAlarmManager$Stub;->hasScheduleExactAlarm(Ljava/lang/String;I)Z

    move-result v7

    .line 271
    .local v7, "_result":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 256
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_result":Z
    :pswitch_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 257
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {v0, v5}, Landroid/app/IAlarmManager$Stub;->canScheduleExactAlarms(Ljava/lang/String;)Z

    move-result v6

    .line 259
    .local v6, "_result":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 261
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 246
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 247
    .local v5, "_arg0":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v0, v5}, Landroid/app/IAlarmManager$Stub;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v6

    .line 249
    .local v6, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v2, v6, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 238
    .end local v5    # "_arg0":I
    .end local v6    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :pswitch_4
    invoke-virtual {v0}, Landroid/app/IAlarmManager$Stub;->getNextWakeFromIdleTime()J

    move-result-wide v5

    .line 239
    .local v5, "_result":J
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {v2, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 230
    .end local v5    # "_result":J
    :pswitch_5
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v0, v5}, Landroid/app/IAlarmManager$Stub;->removeAll(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 219
    .end local v5    # "_arg0":Ljava/lang/String;
    :pswitch_6
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 221
    .local v5, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object v6

    .line 222
    .local v6, "_arg1":Landroid/app/IAlarmListener;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v0, v5, v6}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 224
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 210
    .end local v5    # "_arg0":Landroid/app/PendingIntent;
    .end local v6    # "_arg1":Landroid/app/IAlarmListener;
    :pswitch_7
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v0, v5}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 200
    .end local v5    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 201
    .local v5, "_arg0":J
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {v0, v5, v6}, Landroid/app/IAlarmManager$Stub;->setTime(J)Z

    move-result v7

    .line 203
    .restart local v7    # "_result":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto :goto_0

    .line 171
    .end local v5    # "_arg0":J
    .end local v7    # "_result":Z
    :pswitch_9
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .local v2, "_arg1":I
    move-object v6, v3

    move v7, v4

    .end local v3    # "descriptor":Ljava/lang/String;
    .local v6, "descriptor":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 177
    .local v3, "_arg2":J
    move-object v9, v5

    move-object v8, v6

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 179
    .local v5, "_arg3":J
    move v11, v7

    move-object v10, v8

    .end local v8    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 181
    .local v7, "_arg4":J
    move-object v12, v9

    .end local v9    # "_arg0":Ljava/lang/String;
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 183
    .local v9, "_arg5":I
    sget-object v13, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .line 185
    .local v13, "_arg6":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object v14

    .line 187
    .local v14, "_arg7":Landroid/app/IAlarmListener;
    move-object/from16 v16, v12

    .end local v12    # "_arg0":Ljava/lang/String;
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, "_arg8":Ljava/lang/String;
    sget-object v11, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/WorkSource;

    .line 191
    .local v11, "_arg9":Landroid/os/WorkSource;
    sget-object v0, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 192
    .local v0, "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    const/16 v17, 0x1

    move-object/from16 v1, v16

    move-object/from16 v16, v10

    move-object v10, v13

    move-object v13, v11

    move-object v11, v14

    move-object v14, v0

    move-object/from16 v0, p0

    .end local v0    # "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    .local v1, "_arg0":Ljava/lang/String;
    .local v10, "_arg6":Landroid/app/PendingIntent;
    .local v11, "_arg7":Landroid/app/IAlarmListener;
    .local v13, "_arg9":Landroid/os/WorkSource;
    .local v14, "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    .local v16, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v14}, Landroid/app/IAlarmManager$Stub;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 194
    move-object v0, v12

    move-object v12, v1

    .end local v1    # "_arg0":Ljava/lang/String;
    .local v0, "_arg8":Ljava/lang/String;
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    nop

    .line 287
    .end local v0    # "_arg8":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    .end local v7    # "_arg4":J
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":Landroid/app/PendingIntent;
    .end local v11    # "_arg7":Landroid/app/IAlarmListener;
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg9":Landroid/os/WorkSource;
    .end local v14    # "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    :goto_0
    return v17

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected setTimeZone_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_TIME_ZONE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 496
    return-void
.end method

.method protected setTime_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 491
    return-void
.end method
