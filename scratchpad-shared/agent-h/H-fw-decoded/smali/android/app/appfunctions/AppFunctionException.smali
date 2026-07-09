.class public final Landroid/app/appfunctions/AppFunctionException;
.super Ljava/lang/Exception;
.source "AppFunctionException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionException$ErrorCategory;,
        Landroid/app/appfunctions/AppFunctionException$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/AppFunctionException;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_APP_UNKNOWN_ERROR:I = 0xbb8

.field public static final ERROR_CANCELLED:I = 0x7d1

.field public static final ERROR_CATEGORY_APP:I = 0x3

.field public static final ERROR_CATEGORY_REQUEST_ERROR:I = 0x1

.field public static final ERROR_CATEGORY_SYSTEM:I = 0x2

.field public static final ERROR_CATEGORY_UNKNOWN:I = 0x0

.field public static final ERROR_DENIED:I = 0x3e8

.field public static final ERROR_DISABLED:I = 0x3ea

.field public static final ERROR_ENTERPRISE_POLICY_DISALLOWED:I = 0x7d2

.field public static final ERROR_FUNCTION_NOT_FOUND:I = 0x3eb

.field public static final ERROR_INVALID_ARGUMENT:I = 0x3e9

.field public static final ERROR_SYSTEM_ERROR:I = 0x7d0


# instance fields
.field private final mErrorCode:I

.field private final mErrorMessage:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 264
    new-instance v0, Landroid/app/appfunctions/AppFunctionException$1;

    invoke-direct {v0}, Landroid/app/appfunctions/AppFunctionException$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/AppFunctionException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 148
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 158
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 159
    iput p1, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    .line 160
    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorMessage:Ljava/lang/String;

    .line 161
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mExtras:Landroid/os/Bundle;

    .line 162
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorMessage:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mExtras:Landroid/os/Bundle;

    .line 168
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/appfunctions/AppFunctionException-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/appfunctions/AppFunctionException;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCategory()I
    .locals 3

    .line 197
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    const/16 v1, 0x3e8

    const/16 v2, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    if-ge v0, v2, :cond_0

    .line 198
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    const/16 v1, 0xbb8

    if-lt v0, v2, :cond_1

    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    if-ge v0, v1, :cond_1

    .line 201
    const/4 v0, 0x2

    return v0

    .line 203
    :cond_1
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    const/16 v1, 0xfa0

    if-ge v0, v1, :cond_2

    .line 204
    const/4 v0, 0x3

    return v0

    .line 206
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 173
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 222
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 225
    return-void
.end method
