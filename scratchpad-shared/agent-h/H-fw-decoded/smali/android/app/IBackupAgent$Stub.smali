.class public abstract Landroid/app/IBackupAgent$Stub;
.super Landroid/os/Binder;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBackupAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IBackupAgent"

.field static final TRANSACTION_clearBackupRestoreEventLogger:I = 0xc

.field static final TRANSACTION_doBackup:I = 0x1

.field static final TRANSACTION_doFullBackup:I = 0x4

.field static final TRANSACTION_doMeasureFullBackup:I = 0x5

.field static final TRANSACTION_doQuotaExceeded:I = 0x6

.field static final TRANSACTION_doRestore:I = 0x2

.field static final TRANSACTION_doRestoreFile:I = 0x7

.field static final TRANSACTION_doRestoreFinished:I = 0x8

.field static final TRANSACTION_doRestoreWithExcludedKeys:I = 0x3

.field static final TRANSACTION_fail:I = 0x9

.field static final TRANSACTION_getLoggerResults:I = 0xa

.field static final TRANSACTION_getOperationType:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 216
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 217
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {p0, p0, v0}, Landroid/app/IBackupAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 225
    if-nez p0, :cond_0

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_0
    const-string v0, "android.app.IBackupAgent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 229
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IBackupAgent;

    if-eqz v1, :cond_1

    .line 230
    move-object v1, v0

    check-cast v1, Landroid/app/IBackupAgent;

    return-object v1

    .line 232
    :cond_1
    new-instance v1, Landroid/app/IBackupAgent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IBackupAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 241
    packed-switch p0, :pswitch_data_0

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 289
    :pswitch_0
    const-string v0, "clearBackupRestoreEventLogger"

    return-object v0

    .line 285
    :pswitch_1
    const-string v0, "getOperationType"

    return-object v0

    .line 281
    :pswitch_2
    const-string v0, "getLoggerResults"

    return-object v0

    .line 277
    :pswitch_3
    const-string v0, "fail"

    return-object v0

    .line 273
    :pswitch_4
    const-string v0, "doRestoreFinished"

    return-object v0

    .line 269
    :pswitch_5
    const-string v0, "doRestoreFile"

    return-object v0

    .line 265
    :pswitch_6
    const-string v0, "doQuotaExceeded"

    return-object v0

    .line 261
    :pswitch_7
    const-string v0, "doMeasureFullBackup"

    return-object v0

    .line 257
    :pswitch_8
    const-string v0, "doFullBackup"

    return-object v0

    .line 253
    :pswitch_9
    const-string v0, "doRestoreWithExcludedKeys"

    return-object v0

    .line 249
    :pswitch_a
    const-string v0, "doRestore"

    return-object v0

    .line 245
    :pswitch_b
    const-string v0, "doBackup"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 236
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 833
    const/16 v0, 0xb

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 300
    invoke-static {p1}, Landroid/app/IBackupAgent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 304
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    const-string v15, "android.app.IBackupAgent"

    .line 305
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt v13, v1, :cond_0

    const v2, 0xffffff

    if-gt v13, v2, :cond_0

    .line 306
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    :cond_0
    const v2, 0x5f4e5446

    if-ne v13, v2, :cond_1

    .line 309
    move-object/from16 v2, p3

    invoke-virtual {v2, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    return v1

    .line 312
    :cond_1
    move-object/from16 v2, p3

    packed-switch v13, :pswitch_data_0

    .line 473
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 468
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/IBackupAgent$Stub;->clearBackupRestoreEventLogger()V

    .line 469
    move/from16 v16, v1

    goto/16 :goto_0

    .line 461
    :pswitch_1
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 462
    .local v3, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {v0, v3}, Landroid/app/IBackupAgent$Stub;->getOperationType(Lcom/android/internal/infra/AndroidFuture;)V

    .line 464
    move/from16 v16, v1

    goto/16 :goto_0

    .line 453
    .end local v3    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    :pswitch_2
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 454
    .local v3, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;>;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {v0, v3}, Landroid/app/IBackupAgent$Stub;->getLoggerResults(Lcom/android/internal/infra/AndroidFuture;)V

    .line 456
    move/from16 v16, v1

    goto/16 :goto_0

    .line 445
    .end local v3    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;>;>;"
    :pswitch_3
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {v0, v3}, Landroid/app/IBackupAgent$Stub;->fail(Ljava/lang/String;)V

    .line 448
    move/from16 v16, v1

    goto/16 :goto_0

    .line 435
    .end local v3    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 437
    .local v3, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    .line 438
    .local v4, "_arg1":Landroid/app/backup/IBackupManager;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {v0, v3, v4}, Landroid/app/IBackupAgent$Stub;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 440
    move/from16 v16, v1

    goto/16 :goto_0

    .line 411
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/app/backup/IBackupManager;
    :pswitch_5
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 413
    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    move v4, v1

    move-object v1, v3

    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 415
    .local v2, "_arg1":J
    move v5, v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 417
    .local v4, "_arg2":I
    move v6, v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "_arg3":Ljava/lang/String;
    move v7, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, "_arg4":Ljava/lang/String;
    move v9, v7

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 423
    .local v7, "_arg5":J
    move v11, v9

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 425
    .local v9, "_arg6":J
    move v12, v11

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 427
    .local v11, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v16

    .line 428
    .local v16, "_arg8":Landroid/app/backup/IBackupManager;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    move-object/from16 v17, v16

    move/from16 v16, v12

    move-object/from16 v12, v17

    .end local v16    # "_arg8":Landroid/app/backup/IBackupManager;
    .local v12, "_arg8":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {v0 .. v12}, Landroid/app/IBackupAgent$Stub;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    .line 430
    goto/16 :goto_0

    .line 399
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":J
    .end local v9    # "_arg6":J
    .end local v11    # "_arg7":I
    .end local v12    # "_arg8":Landroid/app/backup/IBackupManager;
    :pswitch_6
    move/from16 v16, v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 401
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 403
    .local v3, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupCallback;

    move-result-object v5

    .line 404
    .local v5, "_arg2":Landroid/app/backup/IBackupCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IBackupAgent$Stub;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    .line 406
    goto/16 :goto_0

    .line 385
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Landroid/app/backup/IBackupCallback;
    :pswitch_7
    move/from16 v16, v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 387
    .restart local v1    # "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 389
    .local v3, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    .line 391
    .local v4, "_arg2":Landroid/app/backup/IBackupManager;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 392
    .local v5, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IBackupAgent$Stub;->doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V

    .line 394
    goto/16 :goto_0

    .line 369
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/app/backup/IBackupManager;
    .end local v5    # "_arg3":I
    :pswitch_8
    move/from16 v16, v1

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 371
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 373
    .restart local v2    # "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 375
    .local v4, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    .line 377
    .local v5, "_arg3":Landroid/app/backup/IBackupManager;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 378
    .local v6, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IBackupAgent$Stub;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V

    .line 380
    goto/16 :goto_0

    .line 351
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/app/backup/IBackupManager;
    .end local v6    # "_arg4":I
    :pswitch_9
    move/from16 v16, v1

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 353
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 355
    .restart local v2    # "_arg1":J
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 357
    .local v4, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 359
    .local v5, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v6

    .line 361
    .local v6, "_arg4":Landroid/app/backup/IBackupManager;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 362
    .local v7, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IBackupAgent$Stub;->doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    .line 364
    goto :goto_0

    .line 335
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/app/backup/IBackupManager;
    .end local v7    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    move/from16 v16, v1

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 337
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 339
    .restart local v2    # "_arg1":J
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 341
    .restart local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 343
    .restart local v5    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v6

    .line 344
    .restart local v6    # "_arg4":Landroid/app/backup/IBackupManager;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IBackupAgent$Stub;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 346
    goto :goto_0

    .line 317
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/app/backup/IBackupManager;
    :pswitch_b
    move/from16 v16, v1

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 319
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 321
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 323
    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 325
    .local v4, "_arg3":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupCallback;

    move-result-object v6

    .line 327
    .local v6, "_arg4":Landroid/app/backup/IBackupCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 328
    .local v7, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IBackupAgent$Stub;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    .line 330
    nop

    .line 476
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":Landroid/app/backup/IBackupCallback;
    .end local v7    # "_arg5":I
    :goto_0
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
