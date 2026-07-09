.class Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;
.super Landroid/app/admin/IDeviceAdminService$Stub;
.source "DeviceAdminService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DeviceAdminService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IDeviceAdminServiceImpl"
.end annotation


# direct methods
.method private constructor <init>(Landroid/app/admin/DeviceAdminService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Landroid/app/admin/IDeviceAdminService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DeviceAdminService;Landroid/app/admin/DeviceAdminService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;-><init>(Landroid/app/admin/DeviceAdminService;)V

    return-void
.end method
