.class Landroid/database/CursorWindow_ravenwood;
.super Ljava/lang/Object;
.source "CursorWindow_ravenwood.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorWindow_ravenwood$Row;
    }
.end annotation


# static fields
.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/database/CursorWindow_ravenwood;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextId:J


# instance fields
.field private mColumnNum:I

.field private mName:Ljava/lang/String;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/database/CursorWindow_ravenwood$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    .line 34
    const-wide/16 v0, 0x1

    sput-wide v0, Landroid/database/CursorWindow_ravenwood;->sNextId:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    return-void
.end method

.method public static nativeAllocRow(J)Z
    .locals 4
    .param p0, "windowPtr"    # J

    .line 71
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow_ravenwood;

    .line 72
    .local v0, "instance":Landroid/database/CursorWindow_ravenwood;
    new-instance v1, Landroid/database/CursorWindow_ravenwood$Row;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/database/CursorWindow_ravenwood$Row;-><init>(Landroid/database/CursorWindow_ravenwood-IA;)V

    .line 73
    .local v1, "row":Landroid/database/CursorWindow_ravenwood$Row;
    iget v2, v0, Landroid/database/CursorWindow_ravenwood;->mColumnNum:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Landroid/database/CursorWindow_ravenwood$Row;->mFields:[Ljava/lang/String;

    .line 74
    iget v2, v0, Landroid/database/CursorWindow_ravenwood;->mColumnNum:I

    new-array v2, v2, [I

    iput-object v2, v1, Landroid/database/CursorWindow_ravenwood$Row;->mTypes:[I

    .line 75
    iget-object v2, v1, Landroid/database/CursorWindow_ravenwood$Row;->mTypes:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 76
    iget-object v2, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v2, 0x1

    return v2
.end method

.method public static nativeCreate(Ljava/lang/String;I)J
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cursorWindowSize"    # I

    .line 46
    new-instance v0, Landroid/database/CursorWindow_ravenwood;

    invoke-direct {v0}, Landroid/database/CursorWindow_ravenwood;-><init>()V

    .line 47
    .local v0, "instance":Landroid/database/CursorWindow_ravenwood;
    iput-object p0, v0, Landroid/database/CursorWindow_ravenwood;->mName:Ljava/lang/String;

    .line 48
    sget-wide v1, Landroid/database/CursorWindow_ravenwood;->sNextId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Landroid/database/CursorWindow_ravenwood;->sNextId:J

    .line 49
    .local v1, "instanceId":J
    sget-object v3, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-wide v1
.end method

.method public static nativeCreateFromParcel(Landroid/os/Parcel;)J
    .locals 8
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 180
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/database/CursorWindow_ravenwood;->nativeCreate(Ljava/lang/String;I)J

    move-result-wide v2

    .line 181
    .local v2, "windowPtr":J
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow_ravenwood;

    .line 182
    .local v0, "window":Landroid/database/CursorWindow_ravenwood;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/database/CursorWindow_ravenwood;->mName:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Landroid/database/CursorWindow_ravenwood;->mColumnNum:I

    .line 184
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 185
    .local v4, "rowCount":I
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 186
    new-instance v6, Landroid/database/CursorWindow_ravenwood$Row;

    invoke-direct {v6, v1}, Landroid/database/CursorWindow_ravenwood$Row;-><init>(Landroid/database/CursorWindow_ravenwood-IA;)V

    .line 187
    .local v6, "r":Landroid/database/CursorWindow_ravenwood$Row;
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/database/CursorWindow_ravenwood$Row;->mFields:[Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    iput-object v7, v6, Landroid/database/CursorWindow_ravenwood$Row;->mTypes:[I

    .line 189
    iget-object v7, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v6    # "r":Landroid/database/CursorWindow_ravenwood$Row;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 191
    .end local v5    # "row":I
    :cond_0
    return-wide v2
.end method

.method public static nativeDispose(J)V
    .locals 2
    .param p0, "windowPtr"    # J

    .line 54
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static nativeGetBlob(JII)[B
    .locals 3
    .param p0, "windowPtr"    # J
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 148
    invoke-static {p0, p1, p2, p3}, Landroid/database/CursorWindow_ravenwood;->nativeGetType(JII)I

    move-result v0

    .line 149
    .local v0, "type":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 164
    return-object v1

    .line 151
    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Landroid/database/CursorWindow_ravenwood;->nativeGetString(JII)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    :goto_0
    return-object v1

    .line 155
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Landroid/database/CursorWindow_ravenwood;->nativeGetString(JII)Ljava/lang/String;

    move-result-object v2

    .line 156
    .restart local v2    # "value":Ljava/lang/String;
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_1
    return-object v1

    .line 159
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteException;-><init>()V

    throw v1

    .line 161
    :pswitch_3
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteException;-><init>()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static nativeGetDouble(JII)D
    .locals 6
    .param p0, "windowPtr"    # J
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 133
    invoke-static {p0, p1, p2, p3}, Landroid/database/CursorWindow_ravenwood;->nativeGetString(JII)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "value":Ljava/lang/String;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    return-wide v1

    .line 138
    :cond_0
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3}, Ljava/text/DecimalFormat;-><init>()V

    new-instance v4, Ljava/text/ParsePosition;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    .line 139
    .local v3, "number":Ljava/lang/Number;
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public static nativeGetLong(JII)J
    .locals 6
    .param p0, "windowPtr"    # J
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 119
    invoke-static {p0, p1, p2, p3}, Landroid/database/CursorWindow_ravenwood;->nativeGetString(JII)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "value":Ljava/lang/String;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    return-wide v1

    .line 124
    :cond_0
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3}, Ljava/text/DecimalFormat;-><init>()V

    new-instance v4, Ljava/text/ParsePosition;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    .line 125
    .local v3, "number":Ljava/lang/Number;
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public static nativeGetName(J)Ljava/lang/String;
    .locals 2
    .param p0, "windowPtr"    # J

    .line 58
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow_ravenwood;

    iget-object v0, v0, Landroid/database/CursorWindow_ravenwood;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public static nativeGetNumRows(J)I
    .locals 2
    .param p0, "windowPtr"    # J

    .line 67
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow_ravenwood;

    iget-object v0, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static nativeGetString(JII)Ljava/lang/String;
    .locals 2
    .param p0, "windowPtr"    # J
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 106
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow_ravenwood;

    .line 107
    .local v0, "instance":Landroid/database/CursorWindow_ravenwood;
    iget-object v1, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    iget v1, v0, Landroid/database/CursorWindow_ravenwood;->mColumnNum:I

    if-lt p3, v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/CursorWindow_ravenwood$Row;

    iget-object v1, v1, Landroid/database/CursorWindow_ravenwood$Row;->mFields:[Ljava/lang/String;

    aget-object v1, v1, p3

    return-object v1

    .line 108
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static nativeGetType(JII)I
    .locals 2
    .param p0, "windowPtr"    # J
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 92
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow_ravenwood;

    .line 93
    .local v0, "instance":Landroid/database/CursorWindow_ravenwood;
    iget-object v1, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    iget v1, v0, Landroid/database/CursorWindow_ravenwood;->mColumnNum:I

    if-lt p3, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/CursorWindow_ravenwood$Row;

    iget-object v1, v1, Landroid/database/CursorWindow_ravenwood$Row;->mTypes:[I

    aget v1, v1, p3

    return v1

    .line 94
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static nativePutBlob(J[BII)Z
    .locals 7
    .param p0, "windowPtr"    # J
    .param p2, "value"    # [B
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 143
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const/4 v4, 0x4

    move-wide v1, p0

    move v5, p3

    move v6, p4

    .end local p0    # "windowPtr":J
    .end local p3    # "row":I
    .end local p4    # "column":I
    .local v1, "windowPtr":J
    .local v5, "row":I
    .local v6, "column":I
    invoke-static/range {v1 .. v6}, Landroid/database/CursorWindow_ravenwood;->put(JLjava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public static nativePutDouble(JDII)Z
    .locals 6
    .param p0, "windowPtr"    # J
    .param p2, "value"    # D
    .param p4, "row"    # I
    .param p5, "column"    # I

    .line 129
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-wide v0, p0

    move v4, p4

    move v5, p5

    .end local p0    # "windowPtr":J
    .end local p4    # "row":I
    .end local p5    # "column":I
    .local v0, "windowPtr":J
    .local v4, "row":I
    .local v5, "column":I
    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow_ravenwood;->put(JLjava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public static nativePutLong(JJII)Z
    .locals 6
    .param p0, "windowPtr"    # J
    .param p2, "value"    # J
    .param p4, "row"    # I
    .param p5, "column"    # I

    .line 115
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide v0, p0

    move v4, p4

    move v5, p5

    .end local p0    # "windowPtr":J
    .end local p4    # "row":I
    .end local p5    # "column":I
    .local v0, "windowPtr":J
    .local v4, "row":I
    .local v5, "column":I
    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow_ravenwood;->put(JLjava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public static nativePutString(JLjava/lang/String;II)Z
    .locals 6
    .param p0, "windowPtr"    # J
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 102
    const/4 v3, 0x3

    move-wide v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p0    # "windowPtr":J
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "row":I
    .end local p4    # "column":I
    .local v0, "windowPtr":J
    .local v2, "value":Ljava/lang/String;
    .local v4, "row":I
    .local v5, "column":I
    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow_ravenwood;->put(JLjava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public static nativeSetNumColumns(JI)Z
    .locals 2
    .param p0, "windowPtr"    # J
    .param p2, "columnNum"    # I

    .line 62
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow_ravenwood;

    iput p2, v0, Landroid/database/CursorWindow_ravenwood;->mColumnNum:I

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public static nativeWriteToParcel(JLandroid/os/Parcel;)V
    .locals 3
    .param p0, "windowPtr"    # J
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 169
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow_ravenwood;

    .line 170
    .local v0, "window":Landroid/database/CursorWindow_ravenwood;
    iget-object v1, v0, Landroid/database/CursorWindow_ravenwood;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget v1, v0, Landroid/database/CursorWindow_ravenwood;->mColumnNum:I

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v1, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    iget-object v2, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 174
    iget-object v2, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/CursorWindow_ravenwood$Row;

    iget-object v2, v2, Landroid/database/CursorWindow_ravenwood$Row;->mFields:[Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 175
    iget-object v2, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/CursorWindow_ravenwood$Row;

    iget-object v2, v2, Landroid/database/CursorWindow_ravenwood$Row;->mTypes:[I

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "row":I
    :cond_0
    return-void
.end method

.method private static put(JLjava/lang/String;III)Z
    .locals 3
    .param p0, "windowPtr"    # J
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "row"    # I
    .param p5, "column"    # I

    .line 81
    sget-object v0, Landroid/database/CursorWindow_ravenwood;->sInstances:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow_ravenwood;

    .line 82
    .local v0, "instance":Landroid/database/CursorWindow_ravenwood;
    iget-object v1, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_1

    iget v1, v0, Landroid/database/CursorWindow_ravenwood;->mColumnNum:I

    if-lt p5, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, v0, Landroid/database/CursorWindow_ravenwood;->mRows:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/CursorWindow_ravenwood$Row;

    .line 86
    .local v1, "r":Landroid/database/CursorWindow_ravenwood$Row;
    iget-object v2, v1, Landroid/database/CursorWindow_ravenwood$Row;->mFields:[Ljava/lang/String;

    aput-object p2, v2, p5

    .line 87
    iget-object v2, v1, Landroid/database/CursorWindow_ravenwood$Row;->mTypes:[I

    aput p3, v2, p5

    .line 88
    const/4 v2, 0x1

    return v2

    .line 83
    .end local v1    # "r":Landroid/database/CursorWindow_ravenwood$Row;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
