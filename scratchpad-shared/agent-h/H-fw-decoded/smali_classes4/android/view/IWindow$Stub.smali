.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x9

.field static final greylist-max-o TRANSACTION_dispatchAppVisibility:I = 0x7

.field static final greylist-max-o TRANSACTION_dispatchDragEvent:I = 0xc

.field static final greylist-max-o TRANSACTION_dispatchGetNewSurface:I = 0x8

.field static final greylist-max-o TRANSACTION_dispatchWallpaperCommand:I = 0xb

.field static final greylist-max-o TRANSACTION_dispatchWallpaperOffsets:I = 0xa

.field static final greylist-max-o TRANSACTION_dispatchWindowShown:I = 0xd

.field static final blacklist TRANSACTION_dumpWindow:I = 0x10

.field static final greylist-max-o TRANSACTION_executeCommand:I = 0x1

.field static final blacklist TRANSACTION_hideInsets:I = 0x5

.field static final blacklist TRANSACTION_insetsControlChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_moved:I = 0x6

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0xe

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0xf

.field static final greylist-max-o TRANSACTION_resized:I = 0x2

.field static final blacklist TRANSACTION_showInsets:I = 0x4


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 120
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 128
    if-nez p0, :cond_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_0
    const-string v0, "android.view.IWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 132
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_1

    .line 133
    move-object v1, v0

    check-cast v1, Landroid/view/IWindow;

    return-object v1

    .line 135
    :cond_1
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 144
    packed-switch p0, :pswitch_data_0

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 208
    :pswitch_0
    const-string v0, "dumpWindow"

    return-object v0

    .line 204
    :pswitch_1
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 200
    :pswitch_2
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 196
    :pswitch_3
    const-string v0, "dispatchWindowShown"

    return-object v0

    .line 192
    :pswitch_4
    const-string v0, "dispatchDragEvent"

    return-object v0

    .line 188
    :pswitch_5
    const-string v0, "dispatchWallpaperCommand"

    return-object v0

    .line 184
    :pswitch_6
    const-string v0, "dispatchWallpaperOffsets"

    return-object v0

    .line 180
    :pswitch_7
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 176
    :pswitch_8
    const-string v0, "dispatchGetNewSurface"

    return-object v0

    .line 172
    :pswitch_9
    const-string v0, "dispatchAppVisibility"

    return-object v0

    .line 168
    :pswitch_a
    const-string v0, "moved"

    return-object v0

    .line 164
    :pswitch_b
    const-string v0, "hideInsets"

    return-object v0

    .line 160
    :pswitch_c
    const-string/jumbo v0, "showInsets"

    return-object v0

    .line 156
    :pswitch_d
    const-string v0, "insetsControlChanged"

    return-object v0

    .line 152
    :pswitch_e
    const-string/jumbo v0, "resized"

    return-object v0

    .line 148
    :pswitch_f
    const-string v0, "executeCommand"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 139
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 712
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 219
    invoke-static {p1}, Landroid/view/IWindow$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "android.view.IWindow"

    .line 224
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v11, v14, :cond_0

    const v1, 0xffffff

    if-gt v11, v1, :cond_0

    .line 225
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    :cond_0
    const v1, 0x5f4e5446

    if-ne v11, v1, :cond_1

    .line 228
    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    return v14

    .line 231
    :cond_1
    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_0

    .line 413
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 406
    :pswitch_0
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 407
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dumpWindow(Landroid/os/ParcelFileDescriptor;)V

    .line 409
    goto/16 :goto_0

    .line 398
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_1
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v1

    .line 399
    .local v1, "_arg0":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V

    .line 401
    goto/16 :goto_0

    .line 388
    .end local v1    # "_arg0":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_2
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 390
    .local v1, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 391
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 393
    goto/16 :goto_0

    .line 382
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v2    # "_arg1":I
    :pswitch_3
    invoke-virtual {v0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    .line 383
    goto/16 :goto_0

    .line 375
    :pswitch_4
    sget-object v1, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DragEvent;

    .line 376
    .local v1, "_arg0":Landroid/view/DragEvent;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 378
    goto/16 :goto_0

    .line 357
    .end local v1    # "_arg0":Landroid/view/DragEvent;
    :pswitch_5
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 363
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 365
    .local v4, "_arg3":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 367
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 368
    .local v6, "_arg5":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 370
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 339
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Z
    :pswitch_6
    invoke-virtual {v12}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 341
    .local v1, "_arg0":F
    invoke-virtual {v12}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 343
    .local v2, "_arg1":F
    invoke-virtual {v12}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 345
    .local v3, "_arg2":F
    invoke-virtual {v12}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 347
    .local v4, "_arg3":F
    invoke-virtual {v12}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 349
    .local v5, "_arg4":F
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 350
    .restart local v6    # "_arg5":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFFZ)V

    .line 352
    goto/16 :goto_0

    .line 331
    .end local v1    # "_arg0":F
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":F
    .end local v5    # "_arg4":F
    .end local v6    # "_arg5":Z
    :pswitch_7
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 334
    goto/16 :goto_0

    .line 325
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    .line 326
    goto/16 :goto_0

    .line 318
    :pswitch_9
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 319
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    .line 321
    goto/16 :goto_0

    .line 308
    .end local v1    # "_arg0":Z
    :pswitch_a
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->moved(II)V

    .line 313
    goto/16 :goto_0

    .line 296
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_b
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 298
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 300
    .local v2, "_arg1":Z
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 301
    .local v3, "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 303
    goto/16 :goto_0

    .line 284
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_c
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 288
    .restart local v2    # "_arg1":Z
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 289
    .restart local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 291
    goto :goto_0

    .line 274
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_d
    sget-object v1, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsState;

    .line 276
    .local v1, "_arg0":Landroid/view/InsetsState;
    sget-object v2, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl$Array;

    .line 277
    .local v2, "_arg1":Landroid/view/InsetsSourceControl$Array;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 279
    goto :goto_0

    .line 248
    .end local v1    # "_arg0":Landroid/view/InsetsState;
    .end local v2    # "_arg1":Landroid/view/InsetsSourceControl$Array;
    :pswitch_e
    sget-object v1, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ClientWindowFrames;

    .line 250
    .local v1, "_arg0":Landroid/window/ClientWindowFrames;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 252
    .local v2, "_arg1":Z
    sget-object v3, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/MergedConfiguration;

    .line 254
    .local v3, "_arg2":Landroid/util/MergedConfiguration;
    sget-object v4, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsState;

    .line 256
    .local v4, "_arg3":Landroid/view/InsetsState;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 258
    .local v5, "_arg4":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 260
    .restart local v6    # "_arg5":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 262
    .local v7, "_arg6":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 264
    .local v8, "_arg7":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 266
    .local v9, "_arg8":Z
    sget-object v10, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/ActivityWindowInfo;

    .line 267
    .local v10, "_arg9":Landroid/window/ActivityWindowInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindow$Stub;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V

    .line 269
    goto :goto_0

    .line 236
    .end local v1    # "_arg0":Landroid/window/ClientWindowFrames;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/util/MergedConfiguration;
    .end local v4    # "_arg3":Landroid/view/InsetsState;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":Landroid/window/ActivityWindowInfo;
    :pswitch_f
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 241
    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 243
    nop

    .line 416
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
