.class Landroid/telephony/satellite/SatelliteManager$14;
.super Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForModemStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteModemStateCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteModemStateCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteModemStateCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/satellite/SatelliteManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2072
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$callback:Landroid/telephony/satellite/SatelliteModemStateCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onEmergencyModeChanged$2(Landroid/telephony/satellite/SatelliteModemStateCallback;Z)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .param p1, "isEmergency"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2082
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteModemStateCallback;->onEmergencyModeChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onEmergencyModeChanged$3(Landroid/telephony/satellite/SatelliteModemStateCallback;Z)V
    .locals 1
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .param p1, "isEmergency"    # Z

    .line 2081
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteModemStateCallback;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationFailure$4(Landroid/telephony/satellite/SatelliteModemStateCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .param p1, "causeCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2089
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteModemStateCallback;->onRegistrationFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationFailure$5(Landroid/telephony/satellite/SatelliteModemStateCallback;I)V
    .locals 1
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .param p1, "causeCode"    # I

    .line 2088
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/satellite/SatelliteModemStateCallback;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteModemStateChanged$0(Landroid/telephony/satellite/SatelliteModemStateCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2076
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteModemStateCallback;->onSatelliteModemStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteModemStateChanged$1(Landroid/telephony/satellite/SatelliteModemStateCallback;I)V
    .locals 1
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .param p1, "state"    # I

    .line 2075
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteModemStateCallback;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTerrestrialNetworkAvailableChanged$6(Landroid/telephony/satellite/SatelliteModemStateCallback;Z)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .param p1, "isAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2095
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteModemStateCallback;->onTerrestrialNetworkAvailableChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onTerrestrialNetworkAvailableChanged$7(Landroid/telephony/satellite/SatelliteModemStateCallback;Z)V
    .locals 1
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .param p1, "isAvailable"    # Z

    .line 2094
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/satellite/SatelliteModemStateCallback;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onEmergencyModeChanged(Z)V
    .locals 3
    .param p1, "isEmergency"    # Z

    .line 2081
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$callback:Landroid/telephony/satellite/SatelliteModemStateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/satellite/SatelliteModemStateCallback;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2083
    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .locals 3
    .param p1, "causeCode"    # I

    .line 2088
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$callback:Landroid/telephony/satellite/SatelliteModemStateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/satellite/SatelliteModemStateCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2090
    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 2075
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$callback:Landroid/telephony/satellite/SatelliteModemStateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/satellite/SatelliteModemStateCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2077
    return-void
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .locals 3
    .param p1, "isAvailable"    # Z

    .line 2094
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$14;->val$callback:Landroid/telephony/satellite/SatelliteModemStateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$14$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/satellite/SatelliteModemStateCallback;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2096
    return-void
.end method
