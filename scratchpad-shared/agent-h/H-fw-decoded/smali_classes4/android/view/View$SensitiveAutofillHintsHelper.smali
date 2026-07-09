.class Landroid/view/View$SensitiveAutofillHintsHelper;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensitiveAutofillHintsHelper"
.end annotation


# static fields
.field private static final blacklist SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 33125
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    .line 33127
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33128
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "passwordAuto"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33129
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33130
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardNumber"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33131
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardSecurityCode"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33132
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardExpirationDate"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33133
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardExpirationDay"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33134
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardExpirationMonth"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33135
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "creditCardExpirationYear"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33136
    sget-object v0, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    const-string v1, "credential"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33137
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 33121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist containsSensitiveAutofillHint([Ljava/lang/String;)Z
    .locals 5
    .param p0, "autofillHints"    # [Ljava/lang/String;

    .line 33145
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 33146
    return v0

    .line 33149
    :cond_0
    array-length v1, p0

    .line 33150
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 33151
    sget-object v3, Landroid/view/View$SensitiveAutofillHintsHelper;->SENSITIVE_CONTENT_AUTOFILL_HINTS:Landroid/util/ArraySet;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33152
    const/4 v0, 0x1

    return v0

    .line 33150
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33155
    .end local v2    # "i":I
    :cond_2
    return v0
.end method
