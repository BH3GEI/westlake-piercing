.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static greylist-max-o PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static greylist-max-o sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private greylist-max-o mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private greylist-max-o mAutoText:Z

.field private greylist-max-o mFullKeyboard:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 450
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 453
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string/jumbo v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string/jumbo v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string/jumbo v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string/jumbo v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string/jumbo v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string/jumbo v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string/jumbo v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string/jumbo v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string/jumbo v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string/jumbo v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string/jumbo v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string/jumbo v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string/jumbo v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string/jumbo v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string/jumbo v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string/jumbo v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string/jumbo v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string/jumbo v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 501
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 502
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 505
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string/jumbo v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 510
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 511
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    .line 57
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z
    .param p3, "fullKeyboard"    # Z

    .line 49
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 51
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 52
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    .line 53
    return-void
.end method

.method public static whitelist getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3
    .param p0, "autoText"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .line 64
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    .line 66
    .local v0, "off":I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 70
    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static whitelist getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    .line 79
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 82
    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private greylist-max-o getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 8
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "view"    # Landroid/view/View;

    .line 381
    sub-int v0, p3, p2

    .line 382
    .local v0, "len":I
    const/4 v1, 0x0

    .line 384
    .local v1, "changecase":Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "replacement":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 387
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "key":Ljava/lang/String;
    sub-int v6, p3, p2

    invoke-static {v5, v4, v6, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 389
    const/4 v1, 0x1

    .line 391
    if-nez v2, :cond_0

    .line 392
    return-object v3

    .line 395
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 397
    .local v5, "caps":I
    if-eqz v1, :cond_2

    .line 398
    move v6, p2

    .local v6, "j":I
    :goto_0
    if-ge v6, p3, :cond_2

    .line 399
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 400
    add-int/lit8 v5, v5, 0x1

    .line 398
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 406
    .end local v6    # "j":I
    :cond_2
    if-nez v5, :cond_3

    .line 407
    move-object v6, v2

    .local v6, "out":Ljava/lang/String;
    goto :goto_1

    .line 408
    .end local v6    # "out":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 409
    invoke-static {v2}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "out":Ljava/lang/String;
    goto :goto_1

    .line 410
    .end local v6    # "out":Ljava/lang/String;
    :cond_4
    if-ne v5, v0, :cond_5

    .line 411
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "out":Ljava/lang/String;
    goto :goto_1

    .line 413
    .end local v6    # "out":Ljava/lang/String;
    :cond_5
    invoke-static {v2}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 415
    .restart local v6    # "out":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v0, :cond_6

    .line 416
    invoke-static {p1, p2, v6, v4, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 417
    return-object v3

    .line 419
    :cond_6
    return-object v6
.end method

.method public static whitelist markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 5
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "original"    # Ljava/lang/String;

    .line 437
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 438
    .local v0, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 439
    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v1    # "a":I
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 443
    .local v1, "len":I
    new-array v3, v1, [C

    .line 444
    .local v3, "orig":[C
    invoke-virtual {p3, v2, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 446
    new-instance v2, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v2, v3}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v4, 0x21

    invoke-interface {p0, v2, p1, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 448
    return-void
.end method

.method private greylist-max-o showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "c"    # C
    .param p4, "insert"    # Z
    .param p5, "count"    # I

    .line 517
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 518
    .local v5, "set":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 519
    const/4 v0, 0x0

    return v0

    .line 522
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 523
    new-instance v1, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "content":Landroid/text/Editable;
    .end local p4    # "insert":Z
    .local v3, "view":Landroid/view/View;
    .local v4, "content":Landroid/text/Editable;
    .local v6, "insert":Z
    invoke-direct/range {v1 .. v6}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    .line 524
    invoke-virtual {v1}, Landroid/text/method/CharacterPickerDialog;->show()V

    goto :goto_0

    .line 522
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "content":Landroid/text/Editable;
    .end local v6    # "insert":Z
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "content":Landroid/text/Editable;
    .restart local p4    # "insert":Z
    :cond_1
    move-object v3, p1

    move-object v4, p2

    move v6, p4

    .line 527
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "content":Landroid/text/Editable;
    .end local p4    # "insert":Z
    .restart local v3    # "view":Landroid/view/View;
    .restart local v4    # "content":Landroid/text/Editable;
    .restart local v6    # "insert":Z
    :goto_0
    return v0
.end method

.method private static greylist-max-o toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getInputType()I
    .locals 2

    .line 86
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 92
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 94
    .local v0, "pref":I
    if-eqz p1, :cond_0

    .line 95
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v0

    move v9, v0

    goto :goto_0

    .line 94
    :cond_0
    move v9, v0

    .line 99
    .end local v0    # "pref":I
    .local v9, "pref":I
    :goto_0
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 100
    .local v0, "a":I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 102
    .local v2, "b":I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 103
    .local v4, "selStart":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 105
    .local v5, "selEnd":I
    const/4 v10, 0x0

    if-ltz v4, :cond_2

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    move v11, v4

    move v12, v5

    goto :goto_2

    .line 106
    :cond_2
    :goto_1
    move v5, v10

    move v4, v10

    .line 107
    invoke-static {v3, v10, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v11, v4

    move v12, v5

    .line 111
    .end local v0    # "a":I
    .end local v2    # "b":I
    .end local v4    # "selStart":I
    .end local v5    # "selEnd":I
    .local v11, "selStart":I
    .local v12, "selEnd":I
    :goto_2
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 112
    .local v13, "activeStart":I
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 116
    .local v14, "activeEnd":I
    invoke-static {v3, v8}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v15

    .line 118
    .local v15, "i":I
    iget-boolean v0, v1, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    const/16 v16, 0x1

    if-nez v0, :cond_4

    .line 119
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 120
    .local v6, "count":I
    if-lez v6, :cond_4

    if-ne v11, v12, :cond_4

    if-lez v11, :cond_4

    .line 121
    add-int/lit8 v0, v11, -0x1

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 123
    .local v4, "c":C
    if-eq v4, v15, :cond_3

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    if-ne v4, v0, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    .line 124
    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 126
    return v16

    .line 132
    .end local v4    # "c":C
    .end local v6    # "count":I
    :cond_4
    const v0, 0xef01

    if-ne v15, v0, :cond_6

    .line 133
    if-eqz p1, :cond_5

    .line 134
    const/4 v5, 0x1

    const/4 v6, 0x1

    const v4, 0xef01

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    goto :goto_3

    .line 133
    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 137
    :goto_3
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 138
    return v16

    .line 141
    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const v0, 0xef00

    if-ne v15, v0, :cond_a

    .line 144
    const/16 v0, 0x10

    if-ne v11, v12, :cond_7

    .line 145
    move v4, v12

    .line 147
    .local v4, "start":I
    :goto_4
    if-lez v4, :cond_8

    sub-int v5, v12, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_8

    add-int/lit8 v5, v4, -0x1

    .line 148
    invoke-interface {v3, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_8

    .line 149
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 152
    .end local v4    # "start":I
    :cond_7
    move v4, v11

    .line 155
    .restart local v4    # "start":I
    :cond_8
    const/4 v5, -0x1

    .line 157
    .local v5, "ch":I
    :try_start_0
    invoke-static {v3, v4, v12}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "hex":Ljava/lang/String;
    invoke-static {v6, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v0

    .end local v6    # "hex":Ljava/lang/String;
    goto :goto_5

    .line 159
    :catch_0
    move-exception v0

    :goto_5
    nop

    .line 161
    if-ltz v5, :cond_9

    .line 162
    move v11, v4

    .line 163
    invoke-static {v3, v11, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 164
    move v15, v5

    goto :goto_6

    .line 166
    :cond_9
    const/4 v15, 0x0

    .line 170
    .end local v4    # "start":I
    .end local v5    # "ch":I
    :cond_a
    :goto_6
    if-eqz v15, :cond_21

    .line 171
    const/4 v6, 0x0

    .line 173
    .local v6, "dead":Z
    const/high16 v17, -0x80000000

    and-int v17, v15, v17

    if-eqz v17, :cond_b

    .line 174
    const/4 v6, 0x1

    .line 175
    const v17, 0x7fffffff

    and-int v15, v15, v17

    .line 178
    :cond_b
    if-ne v13, v11, :cond_e

    if-ne v14, v12, :cond_e

    .line 179
    const/16 v17, 0x0

    .line 181
    .local v17, "replace":Z
    sub-int v18, v12, v11

    add-int/lit8 v18, v18, -0x1

    if-nez v18, :cond_d

    .line 182
    invoke-interface {v3, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 183
    .local v4, "accent":C
    invoke-static {v4, v15}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    .line 186
    .local v0, "composed":I
    if-ne v15, v0, :cond_c

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    if-lez v19, :cond_c

    .line 187
    return v16

    .line 190
    :cond_c
    if-eqz v0, :cond_d

    .line 191
    move v15, v0

    .line 192
    const/16 v17, 0x1

    .line 193
    const/4 v6, 0x0

    .line 197
    .end local v0    # "composed":I
    .end local v4    # "accent":C
    :cond_d
    if-nez v17, :cond_e

    .line 198
    invoke-static {v3, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 199
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 200
    move v11, v12

    .line 204
    .end local v17    # "replace":Z
    :cond_e
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_11

    .line 205
    invoke-static {v15}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 206
    invoke-static {v0, v3, v11}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 207
    sget-object v0, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 208
    .local v0, "where":I
    sget-object v4, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v3, v4}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 210
    .local v4, "flags":I
    if-ne v0, v11, :cond_f

    shr-int/lit8 v17, v4, 0x10

    const v19, 0xffff

    and-int v5, v17, v19

    if-ne v5, v15, :cond_f

    .line 211
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v3, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_7

    .line 213
    :cond_f
    shl-int/lit8 v4, v15, 0x10

    .line 214
    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v15

    .line 216
    if-nez v11, :cond_10

    .line 217
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move/from16 v17, v0

    .end local v0    # "where":I
    .local v17, "where":I
    or-int/lit8 v0, v4, 0x11

    invoke-interface {v3, v5, v10, v10, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 220
    .end local v17    # "where":I
    .restart local v0    # "where":I
    :cond_10
    move/from16 v17, v0

    .end local v0    # "where":I
    .restart local v17    # "where":I
    sget-object v0, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    add-int/lit8 v5, v11, -0x1

    or-int/lit8 v10, v4, 0x21

    invoke-interface {v3, v0, v5, v11, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 227
    .end local v4    # "flags":I
    .end local v17    # "where":I
    :cond_11
    :goto_7
    if-eq v11, v12, :cond_12

    .line 228
    invoke-static {v3, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 230
    :cond_12
    sget-object v0, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v4, 0x11

    invoke-interface {v3, v0, v11, v11, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 233
    int-to-char v0, v15

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v11, v12, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 235
    sget-object v0, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 236
    .local v0, "oldStart":I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 238
    .end local v12    # "selEnd":I
    .local v4, "selEnd":I
    if-ge v0, v4, :cond_13

    .line 239
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v10, 0x21

    invoke-interface {v3, v5, v0, v4, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 243
    if-eqz v6, :cond_13

    .line 244
    invoke-static {v3, v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 245
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v5, v0, v4, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 250
    :cond_13
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 255
    and-int/lit8 v5, v9, 0x2

    const/16 v10, 0x16

    const/16 v12, 0x20

    if-eqz v5, :cond_1b

    iget-boolean v5, v1, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v5, :cond_1b

    if-eq v15, v12, :cond_15

    const/16 v5, 0x9

    if-eq v15, v5, :cond_15

    const/16 v5, 0xa

    if-eq v15, v5, :cond_15

    const/16 v5, 0x2c

    if-eq v15, v5, :cond_15

    const/16 v5, 0x2e

    if-eq v15, v5, :cond_15

    const/16 v5, 0x21

    if-eq v15, v5, :cond_15

    const/16 v5, 0x3f

    if-eq v15, v5, :cond_15

    const/16 v5, 0x22

    if-eq v15, v5, :cond_15

    .line 258
    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v5

    if-ne v5, v10, :cond_14

    goto :goto_8

    :cond_14
    move/from16 v20, v4

    goto/16 :goto_c

    :cond_15
    :goto_8
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 259
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v0, :cond_1a

    .line 263
    move v5, v0

    .local v5, "x":I
    :goto_9
    if-lez v5, :cond_17

    .line 264
    add-int/lit8 v10, v5, -0x1

    invoke-interface {v3, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    .line 265
    .local v10, "c":C
    const/16 v12, 0x27

    if-eq v10, v12, :cond_16

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v12

    if-nez v12, :cond_16

    .line 266
    goto :goto_a

    .line 263
    .end local v10    # "c":C
    :cond_16
    add-int/lit8 v5, v5, -0x1

    const/16 v10, 0x16

    const/16 v12, 0x20

    goto :goto_9

    .line 270
    :cond_17
    :goto_a
    invoke-direct {v1, v3, v5, v0, v2}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v10

    .line 272
    .local v10, "rep":Ljava/lang/String;
    if-eqz v10, :cond_19

    .line 273
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v12

    const-class v2, Landroid/text/method/QwertyKeyListener$Replaced;

    move/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "selEnd":I
    .local v20, "selEnd":I
    invoke-interface {v3, v4, v12, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 275
    .local v2, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_b
    array-length v12, v2

    if-ge v4, v12, :cond_18

    .line 276
    aget-object v12, v2, v4

    invoke-interface {v3, v12}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 275
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 278
    .end local v4    # "a":I
    :cond_18
    sub-int v4, v0, v5

    new-array v4, v4, [C

    .line 279
    .local v4, "orig":[C
    const/4 v12, 0x0

    invoke-static {v3, v5, v0, v4, v12}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 281
    new-instance v12, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v12, v4}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    move-object/from16 v19, v2

    const/16 v2, 0x21

    .end local v2    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .local v19, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    invoke-interface {v3, v12, v5, v0, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 283
    invoke-interface {v3, v5, v0, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_c

    .line 272
    .end local v19    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v20    # "selEnd":I
    .local v4, "selEnd":I
    :cond_19
    move/from16 v20, v4

    .end local v4    # "selEnd":I
    .restart local v20    # "selEnd":I
    goto :goto_c

    .line 259
    .end local v5    # "x":I
    .end local v10    # "rep":Ljava/lang/String;
    .end local v20    # "selEnd":I
    .restart local v4    # "selEnd":I
    :cond_1a
    move/from16 v20, v4

    .end local v4    # "selEnd":I
    .restart local v20    # "selEnd":I
    goto :goto_c

    .line 255
    .end local v20    # "selEnd":I
    .restart local v4    # "selEnd":I
    :cond_1b
    move/from16 v20, v4

    .line 289
    .end local v4    # "selEnd":I
    .restart local v20    # "selEnd":I
    :goto_c
    and-int/lit8 v2, v9, 0x4

    if-eqz v2, :cond_1f

    iget-boolean v2, v1, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v2, :cond_1f

    .line 290
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 291
    .end local v20    # "selEnd":I
    .restart local v4    # "selEnd":I
    add-int/lit8 v2, v4, -0x3

    if-ltz v2, :cond_20

    .line 292
    add-int/lit8 v2, v4, -0x1

    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v5, 0x20

    if-ne v2, v5, :cond_20

    add-int/lit8 v2, v4, -0x2

    .line 293
    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_20

    .line 294
    add-int/lit8 v2, v4, -0x3

    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 296
    .local v2, "c":C
    add-int/lit8 v5, v4, -0x3

    .local v5, "j":I
    :goto_d
    if-lez v5, :cond_1d

    .line 297
    const/16 v10, 0x22

    if-eq v2, v10, :cond_1c

    .line 298
    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v10

    const/16 v12, 0x16

    if-ne v10, v12, :cond_1d

    goto :goto_e

    .line 297
    :cond_1c
    const/16 v12, 0x16

    .line 299
    :goto_e
    add-int/lit8 v10, v5, -0x1

    invoke-interface {v3, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 296
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    .line 305
    .end local v5    # "j":I
    :cond_1d
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 306
    :cond_1e
    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v10, v4, -0x1

    const-string v12, "."

    invoke-interface {v3, v5, v10, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_f

    .line 312
    .end local v2    # "c":C
    .end local v4    # "selEnd":I
    .restart local v20    # "selEnd":I
    :cond_1f
    move/from16 v4, v20

    .end local v20    # "selEnd":I
    .restart local v4    # "selEnd":I
    :cond_20
    :goto_f
    return v16

    .line 313
    .end local v0    # "oldStart":I
    .end local v4    # "selEnd":I
    .end local v6    # "dead":Z
    .restart local v12    # "selEnd":I
    :cond_21
    const/16 v0, 0x43

    if-ne v7, v0, :cond_27

    .line 314
    invoke-virtual {v8}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_22
    if-ne v11, v12, :cond_27

    .line 318
    const/4 v0, 0x1

    .line 325
    .local v0, "consider":I
    sget-object v2, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v11, :cond_23

    .line 326
    add-int/lit8 v2, v11, -0x1

    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_23

    .line 327
    const/4 v0, 0x2

    .line 330
    :cond_23
    sub-int v2, v11, v0

    const-class v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {v3, v2, v11, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 333
    .local v2, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    array-length v4, v2

    if-lez v4, :cond_26

    .line 334
    const/16 v19, 0x0

    aget-object v4, v2, v19

    invoke-interface {v3, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 335
    .local v4, "st":I
    aget-object v5, v2, v19

    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 336
    .local v5, "en":I
    new-instance v6, Ljava/lang/String;

    aget-object v10, v2, v19

    invoke-static {v10}, Landroid/text/method/QwertyKeyListener$Replaced;->-$$Nest$fgetmText(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([C)V

    .line 338
    .local v6, "old":Ljava/lang/String;
    aget-object v10, v2, v19

    invoke-interface {v3, v10}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 344
    if-lt v11, v5, :cond_25

    .line 345
    sget-object v10, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move/from16 v17, v0

    const/16 v0, 0x22

    .end local v0    # "consider":I
    .local v17, "consider":I
    invoke-interface {v3, v10, v5, v5, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 347
    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 349
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 350
    .end local v5    # "en":I
    .local v0, "en":I
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_24

    .line 351
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    add-int/lit8 v10, v0, -0x1

    const/16 v1, 0x21

    invoke-interface {v3, v5, v10, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_10

    .line 355
    :cond_24
    sget-object v1, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v3, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 357
    :goto_10
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 363
    return v16

    .line 359
    .end local v17    # "consider":I
    .local v0, "consider":I
    .restart local v5    # "en":I
    :cond_25
    move/from16 v17, v0

    .end local v0    # "consider":I
    .restart local v17    # "consider":I
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 360
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 333
    .end local v4    # "st":I
    .end local v5    # "en":I
    .end local v6    # "old":Ljava/lang/String;
    .end local v17    # "consider":I
    .restart local v0    # "consider":I
    :cond_26
    move/from16 v17, v0

    .end local v0    # "consider":I
    .end local v2    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    goto :goto_11

    .line 365
    :cond_27
    const/16 v0, 0x6f

    if-ne v7, v0, :cond_28

    invoke-virtual {v8}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 369
    if-ne v13, v11, :cond_29

    if-ne v14, v12, :cond_29

    .line 370
    invoke-static {v3, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 371
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 372
    return v16

    .line 365
    :cond_28
    :goto_11
    nop

    .line 376
    :cond_29
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
