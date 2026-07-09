.class public abstract Landroid/security/identity/ICredential$Stub;
.super Landroid/os/Binder;
.source "ICredential.java"

# interfaces
.implements Landroid/security/identity/ICredential;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ICredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ICredential$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createEphemeralKeyPair:I = 0x1

.field static final blacklist TRANSACTION_deleteCredential:I = 0x3

.field static final blacklist TRANSACTION_deleteWithChallenge:I = 0x4

.field static final blacklist TRANSACTION_getAuthKeysNeedingCertification:I = 0xa

.field static final blacklist TRANSACTION_getAuthenticationDataExpirations:I = 0xe

.field static final blacklist TRANSACTION_getAuthenticationDataUsageCount:I = 0xd

.field static final blacklist TRANSACTION_getCredentialKeyCertificateChain:I = 0x6

.field static final blacklist TRANSACTION_getEntries:I = 0x8

.field static final blacklist TRANSACTION_proveOwnership:I = 0x5

.field static final blacklist TRANSACTION_selectAuthKey:I = 0x7

.field static final blacklist TRANSACTION_setAvailableAuthenticationKeys:I = 0x9

.field static final blacklist TRANSACTION_setReaderEphemeralPublicKey:I = 0x2

.field static final blacklist TRANSACTION_storeStaticAuthenticationData:I = 0xb

.field static final blacklist TRANSACTION_storeStaticAuthenticationDataWithExpiration:I = 0xc

.field static final blacklist TRANSACTION_update:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "android.security.identity.ICredential"

    invoke-virtual {p0, p0, v0}, Landroid/security/identity/ICredential$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredential;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    const-string v0, "android.security.identity.ICredential"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/identity/ICredential;

    if-eqz v1, :cond_1

    .line 97
    move-object v1, v0

    check-cast v1, Landroid/security/identity/ICredential;

    return-object v1

    .line 99
    :cond_1
    new-instance v1, Landroid/security/identity/ICredential$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/identity/ICredential$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 108
    packed-switch p0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 168
    :pswitch_0
    const-string/jumbo v0, "update"

    return-object v0

    .line 164
    :pswitch_1
    const-string v0, "getAuthenticationDataExpirations"

    return-object v0

    .line 160
    :pswitch_2
    const-string v0, "getAuthenticationDataUsageCount"

    return-object v0

    .line 156
    :pswitch_3
    const-string/jumbo v0, "storeStaticAuthenticationDataWithExpiration"

    return-object v0

    .line 152
    :pswitch_4
    const-string/jumbo v0, "storeStaticAuthenticationData"

    return-object v0

    .line 148
    :pswitch_5
    const-string v0, "getAuthKeysNeedingCertification"

    return-object v0

    .line 144
    :pswitch_6
    const-string/jumbo v0, "setAvailableAuthenticationKeys"

    return-object v0

    .line 140
    :pswitch_7
    const-string v0, "getEntries"

    return-object v0

    .line 136
    :pswitch_8
    const-string/jumbo v0, "selectAuthKey"

    return-object v0

    .line 132
    :pswitch_9
    const-string v0, "getCredentialKeyCertificateChain"

    return-object v0

    .line 128
    :pswitch_a
    const-string/jumbo v0, "proveOwnership"

    return-object v0

    .line 124
    :pswitch_b
    const-string v0, "deleteWithChallenge"

    return-object v0

    .line 120
    :pswitch_c
    const-string v0, "deleteCredential"

    return-object v0

    .line 116
    :pswitch_d
    const-string/jumbo v0, "setReaderEphemeralPublicKey"

    return-object v0

    .line 112
    :pswitch_e
    const-string v0, "createEphemeralKeyPair"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 649
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 179
    invoke-static {p1}, Landroid/security/identity/ICredential$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    move-object v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.security.identity.ICredential"

    .line 184
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 185
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    :cond_0
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_1

    .line 188
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return v11

    .line 191
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 346
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 339
    :pswitch_0
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->update()Landroid/security/identity/IWritableCredential;

    move-result-object v1

    .line 340
    .local v1, "_result":Landroid/security/identity/IWritableCredential;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 342
    goto/16 :goto_0

    .line 332
    .end local v1    # "_result":Landroid/security/identity/IWritableCredential;
    :pswitch_1
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->getAuthenticationDataExpirations()[J

    move-result-object v1

    .line 333
    .local v1, "_result":[J
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 335
    goto/16 :goto_0

    .line 325
    .end local v1    # "_result":[J
    :pswitch_2
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->getAuthenticationDataUsageCount()[I

    move-result-object v1

    .line 326
    .local v1, "_result":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 328
    goto/16 :goto_0

    .line 313
    .end local v1    # "_result":[I
    :pswitch_3
    sget-object v1, Landroid/security/identity/AuthKeyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/identity/AuthKeyParcel;

    .line 315
    .local v1, "_arg0":Landroid/security/identity/AuthKeyParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 317
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 318
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/security/identity/ICredential$Stub;->storeStaticAuthenticationDataWithExpiration(Landroid/security/identity/AuthKeyParcel;J[B)V

    .line 320
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_0

    .line 302
    .end local v1    # "_arg0":Landroid/security/identity/AuthKeyParcel;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":[B
    :pswitch_4
    sget-object v1, Landroid/security/identity/AuthKeyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/identity/AuthKeyParcel;

    .line 304
    .restart local v1    # "_arg0":Landroid/security/identity/AuthKeyParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 305
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v1, v2}, Landroid/security/identity/ICredential$Stub;->storeStaticAuthenticationData(Landroid/security/identity/AuthKeyParcel;[B)V

    .line 307
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    goto/16 :goto_0

    .line 294
    .end local v1    # "_arg0":Landroid/security/identity/AuthKeyParcel;
    .end local v2    # "_arg1":[B
    :pswitch_5
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->getAuthKeysNeedingCertification()[Landroid/security/identity/AuthKeyParcel;

    move-result-object v1

    .line 295
    .local v1, "_result":[Landroid/security/identity/AuthKeyParcel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 297
    goto/16 :goto_0

    .line 282
    .end local v1    # "_result":[Landroid/security/identity/AuthKeyParcel;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 287
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/security/identity/ICredential$Stub;->setAvailableAuthenticationKeys(IIJ)V

    .line 289
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_0

    .line 260
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 262
    .local v1, "_arg0":[B
    sget-object v2, Landroid/security/identity/RequestNamespaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/security/identity/RequestNamespaceParcel;

    .line 264
    .local v2, "_arg1":[Landroid/security/identity/RequestNamespaceParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 266
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 268
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 270
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 272
    .local v6, "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 273
    .local v7, "_arg6":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/security/identity/ICredential$Stub;->getEntries([B[Landroid/security/identity/RequestNamespaceParcel;[B[BZZZ)Landroid/security/identity/GetEntriesResultParcel;

    move-result-object v12

    .line 275
    .local v12, "_result":Landroid/security/identity/GetEntriesResultParcel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {v9, v12, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 277
    goto :goto_0

    .line 246
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[Landroid/security/identity/RequestNamespaceParcel;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v12    # "_result":Landroid/security/identity/GetEntriesResultParcel;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 248
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 250
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 251
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v1, v2, v3}, Landroid/security/identity/ICredential$Stub;->selectAuthKey(ZZZ)J

    move-result-wide v4

    .line 253
    .local v4, "_result":J
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    goto :goto_0

    .line 238
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":J
    :pswitch_9
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->getCredentialKeyCertificateChain()[B

    move-result-object v1

    .line 239
    .local v1, "_result":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 241
    goto :goto_0

    .line 229
    .end local v1    # "_result":[B
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 230
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v1}, Landroid/security/identity/ICredential$Stub;->proveOwnership([B)[B

    move-result-object v2

    .line 232
    .local v2, "_result":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 234
    goto :goto_0

    .line 219
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":[B
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 220
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v1}, Landroid/security/identity/ICredential$Stub;->deleteWithChallenge([B)[B

    move-result-object v2

    .line 222
    .restart local v2    # "_result":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 224
    goto :goto_0

    .line 211
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":[B
    :pswitch_c
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->deleteCredential()[B

    move-result-object v1

    .line 212
    .local v1, "_result":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 214
    goto :goto_0

    .line 203
    .end local v1    # "_result":[B
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 204
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v1}, Landroid/security/identity/ICredential$Stub;->setReaderEphemeralPublicKey([B)V

    .line 206
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_0

    .line 195
    .end local v1    # "_arg0":[B
    :pswitch_e
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->createEphemeralKeyPair()[B

    move-result-object v1

    .line 196
    .local v1, "_result":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 198
    nop

    .line 349
    .end local v1    # "_result":[B
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
