.class public final Landroid/hardware/display/DisplayTopology$TreeNode;
.super Ljava/lang/Object;
.source "DisplayTopology.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayTopology$TreeNode$Position;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist POSITION_BOTTOM:I = 0x3

.field public static final blacklist POSITION_LEFT:I = 0x0

.field public static final blacklist POSITION_RIGHT:I = 0x2

.field public static final blacklist POSITION_TOP:I = 0x1


# instance fields
.field private final blacklist mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayId:I

.field private blacklist mHeight:F

.field private blacklist mOffset:F

.field private blacklist mPosition:I

.field private blacklist mWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;F)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;F)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 892
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode$1;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$TreeNode$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IFFIF)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "position"    # I
    .param p5, "offset"    # F

    .line 939
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "displayId":I
    .end local p2    # "width":F
    .end local p3    # "height":F
    .end local p4    # "position":I
    .end local p5    # "offset":F
    .local v1, "displayId":I
    .local v2, "width":F
    .local v3, "height":F
    .local v4, "position":I
    .local v5, "offset":F
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIFLjava/util/List;)V

    .line 940
    return-void
.end method

.method public constructor blacklist <init>(IFFIFLjava/util/List;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "position"    # I
    .param p5, "offset"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFIF",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;)V"
        }
    .end annotation

    .line 943
    .local p6, "children":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput p1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    .line 945
    iput p2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    .line 946
    iput p3, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    .line 947
    iput p4, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    .line 948
    iput p5, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    .line 950
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 953
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    .line 955
    iget-object v1, v0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    sget-object v2, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 956
    return-void
.end method

.method public static blacklist positionToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "position"    # I

    .line 1004
    packed-switch p0, :pswitch_data_0

    .line 1009
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :pswitch_0
    const-string v0, "bottom"

    goto :goto_0

    .line 1007
    :pswitch_1
    const-string v0, "right"

    goto :goto_0

    .line 1006
    :pswitch_2
    const-string v0, "top"

    goto :goto_0

    .line 1005
    :pswitch_3
    const-string v0, "left"

    .line 1004
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addChild(Landroid/hardware/display/DisplayTopology$TreeNode;)V
    .locals 1
    .param p1, "child"    # Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 1046
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    return-void
.end method

.method public blacklist copy()Landroid/hardware/display/DisplayTopology$TreeNode;
    .locals 6

    .line 986
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    iget v2, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    iget v3, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    iget v4, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    iget v5, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    .line 987
    .local v0, "copy":Landroid/hardware/display/DisplayTopology$TreeNode;
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 988
    .local v2, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    iget-object v3, v0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->copy()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    .end local v2    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_0

    .line 990
    :cond_0
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1015
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 1033
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1034
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1035
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 1036
    .local v1, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1037
    .end local v1    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1039
    return-void
.end method

.method public blacklist getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation

    .line 979
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    .line 959
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    return v0
.end method

.method public blacklist getHeight()F
    .locals 1

    .line 967
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    return v0
.end method

.method public blacklist getOffset()F
    .locals 1

    .line 975
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    return v0
.end method

.method public blacklist getPosition()I
    .locals 1

    .line 971
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    return v0
.end method

.method public blacklist getWidth()F
    .locals 1

    .line 963
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    .line 996
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->positionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1020
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mWidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1022
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mHeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1023
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1025
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$TreeNode;->mChildren:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1026
    return-void
.end method
