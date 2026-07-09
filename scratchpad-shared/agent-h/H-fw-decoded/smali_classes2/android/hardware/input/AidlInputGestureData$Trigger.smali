.class public final Landroid/hardware/input/AidlInputGestureData$Trigger;
.super Ljava/lang/Object;
.source "AidlInputGestureData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/AidlInputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trigger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/AidlInputGestureData$Trigger$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/AidlInputGestureData$Trigger;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist key:I = 0x0

.field public static final blacklist touchpadGesture:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 286
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger$1;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData$Trigger$1;-><init>()V

    sput-object v0, Landroid/hardware/input/AidlInputGestureData$Trigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "_value":Landroid/hardware/input/AidlInputGestureData$KeyTrigger;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    .line 240
    iput-object v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    .line 241
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    .line 249
    iput-object p2, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    .line 250
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-virtual {p0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->readFromParcel(Landroid/os/Parcel;)V

    .line 245
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/AidlInputGestureData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 366
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 369
    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 380
    iput p1, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    .line 381
    iput-object p2, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    .line 382
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 372
    packed-switch p1, :pswitch_data_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :pswitch_0
    const-string v0, "touchpadGesture"

    return-object v0

    .line 373
    :pswitch_1
    const-string v0, "key"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 342
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 343
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 344
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 346
    :cond_1
    return v0
.end method

.method public static blacklist key(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)Landroid/hardware/input/AidlInputGestureData$Trigger;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    .line 259
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist touchpadGesture(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)Landroid/hardware/input/AidlInputGestureData$Trigger;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 274
    new-instance v0, Landroid/hardware/input/AidlInputGestureData$Trigger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 336
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTouchpadGesture()Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getKey()Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 334
    nop

    .line 339
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 351
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 352
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 353
    :cond_1
    instance-of v2, p1, Landroid/hardware/input/AidlInputGestureData$Trigger;

    if-nez v2, :cond_2

    return v1

    .line 354
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AidlInputGestureData$Trigger;

    .line 355
    .local v2, "that":Landroid/hardware/input/AidlInputGestureData$Trigger;
    iget v3, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    iget v4, v2, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    if-eq v3, v4, :cond_3

    return v1

    .line 356
    :cond_3
    iget-object v3, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 357
    :cond_4
    return v0
.end method

.method public blacklist getKey()Landroid/hardware/input/AidlInputGestureData$KeyTrigger;
    .locals 1

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_assertTag(I)V

    .line 264
    iget-object v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    return-object v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 253
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    return v0
.end method

.method public blacklist getTouchpadGesture()Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;
    .locals 1

    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_assertTag(I)V

    .line 279
    iget-object v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 362
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_value:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 325
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :pswitch_0
    sget-object v1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 322
    .local v1, "_aidl_value":Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;
    invoke-direct {p0, v0, v1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_set(ILjava/lang/Object;)V

    .line 323
    return-void

    .line 316
    .end local v1    # "_aidl_value":Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;
    :pswitch_1
    sget-object v1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    .line 317
    .local v1, "_aidl_value":Landroid/hardware/input/AidlInputGestureData$KeyTrigger;
    invoke-direct {p0, v0, v1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_set(ILjava/lang/Object;)V

    .line 318
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setKey(Landroid/hardware/input/AidlInputGestureData$KeyTrigger;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_set(ILjava/lang/Object;)V

    .line 269
    return-void
.end method

.method public blacklist setTouchpadGesture(Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->_set(ILjava/lang/Object;)V

    .line 284
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 299
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Landroid/hardware/input/AidlInputGestureData$Trigger;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 305
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTouchpadGesture()Landroid/hardware/input/AidlInputGestureData$TouchpadGestureTrigger;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getKey()Landroid/hardware/input/AidlInputGestureData$KeyTrigger;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 303
    nop

    .line 308
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
