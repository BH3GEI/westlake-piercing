.class public interface abstract Landroid/content/pm/verify/domain/DomainVerificationState;
.super Ljava/lang/Object;
.source "DomainVerificationState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationState$State;
    }
.end annotation


# static fields
.field public static final STATE_APPROVED:I = 0x2

.field public static final STATE_DENIED:I = 0x3

.field public static final STATE_FIRST_VERIFIER_DEFINED:I = 0x400

.field public static final STATE_LEGACY_FAILURE:I = 0x6

.field public static final STATE_MIGRATED:I = 0x4

.field public static final STATE_NO_RESPONSE:I = 0x0

.field public static final STATE_PRE_VERIFIED:I = 0x8

.field public static final STATE_RESTORED:I = 0x5

.field public static final STATE_SUCCESS:I = 0x1

.field public static final STATE_SYS_CONFIG:I = 0x7


# direct methods
.method public static convertToInfoState(I)I
    .locals 1
    .param p0, "internalState"    # I

    .line 223
    const/16 v0, 0x400

    if-lt p0, v0, :cond_0

    .line 224
    return p0

    .line 225
    :cond_0
    if-nez p0, :cond_1

    .line 226
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 228
    return v0

    .line 229
    :cond_2
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationState;->isModifiable(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    const/4 v0, 0x2

    return v0

    .line 231
    :cond_3
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    const/4 v0, 0x4

    return v0

    .line 234
    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method public static isDefault(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 138
    sparse-switch p0, :sswitch_data_0

    .line 150
    const/4 v0, 0x0

    return v0

    .line 142
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isModifiable(I)Z
    .locals 3
    .param p0, "state"    # I

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 195
    const/16 v2, 0x400

    if-lt p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 193
    :pswitch_0
    return v0

    .line 189
    :pswitch_1
    return v1

    .line 195
    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isVerified(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 159
    packed-switch p0, :pswitch_data_0

    .line 171
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 166
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static shouldMigrate(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 204
    packed-switch p0, :pswitch_data_0

    .line 217
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 211
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static stateToDebugString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 109
    packed-switch p0, :pswitch_data_0

    .line 129
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :pswitch_0
    const-string/jumbo v0, "pre_verified"

    return-object v0

    .line 125
    :pswitch_1
    const-string/jumbo v0, "system_configured"

    return-object v0

    .line 123
    :pswitch_2
    const-string/jumbo v0, "legacy_failure"

    return-object v0

    .line 121
    :pswitch_3
    const-string/jumbo v0, "restored"

    return-object v0

    .line 119
    :pswitch_4
    const-string/jumbo v0, "migrated"

    return-object v0

    .line 117
    :pswitch_5
    const-string v0, "denied"

    return-object v0

    .line 115
    :pswitch_6
    const-string v0, "approved"

    return-object v0

    .line 113
    :pswitch_7
    const-string/jumbo v0, "verified"

    return-object v0

    .line 111
    :pswitch_8
    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
