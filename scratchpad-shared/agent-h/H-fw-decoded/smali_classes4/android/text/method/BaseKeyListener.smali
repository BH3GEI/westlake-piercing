.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final greylist-max-o CARRIAGE_RETURN:I = 0xd

.field private static final greylist-max-o LINE_FEED:I = 0xa

.field static final greylist-max-o OLD_SEL_START:Ljava/lang/Object;

.field static greylist-max-o sCachedPaint:Landroid/graphics/Paint;


# instance fields
.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static greylist-max-o adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "moveToStart"    # Z

    .line 94
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 95
    return p1

    .line 98
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 99
    .local v0, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 100
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 101
    .local v2, "start":I
    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 103
    .local v3, "end":I
    if-ge v2, p1, :cond_2

    if-le v3, p1, :cond_2

    .line 104
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    move p1, v4

    .line 99
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_3
    return p1
.end method

.method private greylist-max-o backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    .line 324
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x70f4

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 326
    return v1

    .line 330
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 331
    return v2

    .line 335
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 336
    .local v0, "isCtrlActive":Z
    :goto_0
    invoke-static {p2, v2, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 337
    .local v3, "isShiftActive":Z
    :goto_1
    const/4 v4, 0x2

    invoke-static {p2, v4, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    .line 339
    .local v4, "isAltActive":Z
    :goto_2
    if-eqz v0, :cond_7

    .line 340
    if-nez v4, :cond_6

    if-eqz v3, :cond_5

    goto :goto_3

    .line 344
    :cond_5
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v1

    return v1

    .line 342
    :cond_6
    :goto_3
    return v1

    .line 348
    :cond_7
    if-eqz v4, :cond_8

    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteLineFromCursor(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 349
    return v2

    .line 353
    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 355
    .local v5, "start":I
    if-eqz p5, :cond_b

    .line 357
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 358
    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .local v6, "paint":Landroid/graphics/Paint;
    goto :goto_4

    .line 360
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_9
    iget-object v6, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 361
    :try_start_0
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez v7, :cond_a

    .line 362
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    sput-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 364
    :cond_a
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 365
    .local v7, "paint":Landroid/graphics/Paint;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v7

    .line 367
    .end local v7    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "paint":Landroid/graphics/Paint;
    :goto_4
    invoke-static {p2, v5, v6}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v6

    .line 368
    .local v6, "end":I
    goto :goto_5

    .line 365
    .end local v6    # "end":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 369
    :cond_b
    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 371
    .restart local v6    # "end":I
    :goto_5
    if-eq v5, v6, :cond_c

    .line 372
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v1, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 373
    return v2

    .line 375
    :cond_c
    return v1
.end method

.method private blacklist deleteLineFromCursor(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "forward"    # Z

    .line 442
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 443
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 444
    .local v0, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 447
    .local v1, "selectionEnd":I
    if-ge v0, v1, :cond_0

    .line 448
    move v2, v0

    .line 449
    .local v2, "selectionMin":I
    move v3, v1

    .local v3, "selectionMax":I
    goto :goto_0

    .line 451
    .end local v2    # "selectionMin":I
    .end local v3    # "selectionMax":I
    :cond_0
    move v2, v1

    .line 452
    .restart local v2    # "selectionMin":I
    move v3, v0

    .line 455
    .restart local v3    # "selectionMax":I
    :goto_0
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    .line 456
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 457
    .local v5, "layout":Landroid/text/Layout;
    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 458
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 459
    .local v6, "line":I
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 460
    .local v7, "start":I
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 462
    .local v8, "end":I
    if-eqz p3, :cond_1

    .line 463
    invoke-interface {p2, v2, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 465
    :cond_1
    invoke-interface {p2, v7, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 468
    :goto_1
    const/4 v9, 0x1

    return v9

    .line 471
    .end local v0    # "selectionStart":I
    .end local v1    # "selectionEnd":I
    .end local v2    # "selectionMin":I
    .end local v3    # "selectionMax":I
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v7    # "start":I
    .end local v8    # "end":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .line 427
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 428
    .local v0, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 429
    .local v1, "selectionEnd":I
    if-ge v1, v0, :cond_0

    .line 430
    move v2, v1

    .line 431
    .local v2, "temp":I
    move v1, v0

    .line 432
    move v0, v2

    .line 434
    .end local v2    # "temp":I
    :cond_0
    if-eq v0, v1, :cond_1

    .line 435
    invoke-interface {p2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 436
    const/4 v2, 0x1

    return v2

    .line 438
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "isForwardDelete"    # Z

    .line 379
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 382
    .local v0, "currentCursorOffset":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 383
    return v2

    .line 387
    :cond_0
    if-nez p3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    .line 388
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 389
    :cond_2
    return v2

    .line 392
    :cond_3
    const/4 v1, 0x0

    .line 393
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 394
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 397
    :cond_4
    if-nez v1, :cond_5

    .line 401
    new-instance v3, Landroid/text/method/WordIterator;

    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    move-object v1, v3

    .line 407
    :cond_5
    const/4 v3, -0x1

    if-eqz p3, :cond_6

    .line 408
    move v2, v0

    .line 409
    .local v2, "deleteFrom":I
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 410
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v4

    .line 411
    .local v4, "deleteTo":I
    if-ne v4, v3, :cond_7

    .line 412
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    goto :goto_0

    .line 415
    .end local v2    # "deleteFrom":I
    .end local v4    # "deleteTo":I
    :cond_6
    move v4, v0

    .line 416
    .restart local v4    # "deleteTo":I
    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 417
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v2

    .line 418
    .restart local v2    # "deleteFrom":I
    if-ne v2, v3, :cond_7

    .line 419
    const/4 v2, 0x0

    .line 422
    :cond_7
    :goto_0
    invoke-interface {p2, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 423
    const/4 v3, 0x1

    return v3
.end method

.method private static greylist-max-o getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .locals 24
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 112
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 113
    const/4 v2, 0x0

    return v2

    .line 117
    :cond_0
    const/4 v3, 0x0

    .line 120
    .local v3, "STATE_START":I
    const/4 v4, 0x1

    .line 123
    .local v4, "STATE_LF":I
    const/4 v5, 0x2

    .line 125
    .local v5, "STATE_BEFORE_KEYCAP":I
    const/4 v6, 0x3

    .line 128
    .local v6, "STATE_BEFORE_VS_AND_KEYCAP":I
    const/4 v7, 0x4

    .line 130
    .local v7, "STATE_BEFORE_EMOJI_MODIFIER":I
    const/4 v8, 0x5

    .line 133
    .local v8, "STATE_BEFORE_VS_AND_EMOJI_MODIFIER":I
    const/4 v9, 0x6

    .line 136
    .local v9, "STATE_BEFORE_VS":I
    const/4 v10, 0x7

    .line 138
    .local v10, "STATE_BEFORE_EMOJI":I
    const/16 v11, 0x8

    .line 141
    .local v11, "STATE_BEFORE_ZWJ":I
    const/16 v12, 0x9

    .line 144
    .local v12, "STATE_BEFORE_VS_AND_ZWJ":I
    const/16 v13, 0xa

    .line 146
    .local v13, "STATE_ODD_NUMBERED_RIS":I
    const/16 v14, 0xb

    .line 149
    .local v14, "STATE_EVEN_NUMBERED_RIS":I
    const/16 v15, 0xc

    .line 152
    .local v15, "STATE_IN_TAG_SEQUENCE":I
    const/16 v16, 0xd

    .line 154
    .local v16, "STATE_FINISHED":I
    const/16 v17, 0x0

    .line 155
    .local v17, "deleteCharCount":I
    const/16 v18, 0x0

    .line 157
    .local v18, "lastSeenVSCharCount":I
    const/16 v19, 0x0

    .line 159
    .local v19, "state":I
    move/from16 v20, p1

    move/from16 v1, v19

    move/from16 v19, v2

    move v2, v1

    move/from16 v1, v20

    .line 161
    .end local v19    # "state":I
    .local v1, "tmpOffset":I
    .local v2, "state":I
    :goto_0
    move/from16 v20, v3

    .end local v3    # "STATE_START":I
    .local v20, "STATE_START":I
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 162
    .local v3, "codePoint":I
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v21

    sub-int v1, v1, v21

    .line 164
    move/from16 v21, v1

    .end local v1    # "tmpOffset":I
    .local v21, "tmpOffset":I
    packed-switch v2, :pswitch_data_0

    .line 300
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "codePoint":I
    .local v19, "codePoint":I
    const-string/jumbo v3, "state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is unknown"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    .end local v19    # "codePoint":I
    .restart local v3    # "codePoint":I
    :pswitch_0
    invoke-static {v3}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 287
    add-int/lit8 v17, v17, 0x2

    goto/16 :goto_2

    .line 289
    :cond_1
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 290
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v17, v17, v22

    .line 291
    const/16 v2, 0xd

    goto/16 :goto_2

    .line 294
    :cond_2
    const/16 v17, 0x2

    .line 295
    const/16 v2, 0xd

    .line 298
    goto/16 :goto_2

    .line 200
    :pswitch_1
    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 201
    add-int/lit8 v17, v17, -0x2

    .line 202
    const/16 v2, 0xa

    goto/16 :goto_2

    .line 204
    :cond_3
    const/16 v2, 0xd

    .line 206
    goto/16 :goto_2

    .line 192
    :pswitch_2
    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 193
    add-int/lit8 v17, v17, 0x2

    .line 194
    const/16 v2, 0xb

    goto/16 :goto_2

    .line 196
    :cond_4
    const/16 v2, 0xd

    .line 198
    goto/16 :goto_2

    .line 276
    :pswitch_3
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 278
    add-int/lit8 v22, v18, 0x1

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v23

    add-int v22, v22, v23

    add-int v17, v17, v22

    .line 279
    const/16 v18, 0x0

    .line 280
    const/4 v2, 0x7

    goto/16 :goto_2

    .line 282
    :cond_5
    const/16 v2, 0xd

    .line 284
    goto/16 :goto_2

    .line 264
    :pswitch_4
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 265
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    add-int v17, v17, v22

    .line 266
    invoke-static {v3}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 267
    const/16 v22, 0x4

    goto :goto_1

    :cond_6
    const/16 v22, 0x7

    :goto_1
    move/from16 v2, v22

    .end local v2    # "state":I
    .local v22, "state":I
    goto/16 :goto_2

    .line 268
    .end local v22    # "state":I
    .restart local v2    # "state":I
    :cond_7
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 269
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v18

    .line 270
    const/16 v2, 0x9

    goto/16 :goto_2

    .line 272
    :cond_8
    const/16 v2, 0xd

    .line 274
    goto/16 :goto_2

    .line 257
    :pswitch_5
    sget v1, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    if-ne v3, v1, :cond_9

    .line 258
    const/16 v1, 0x8

    move v2, v1

    .end local v2    # "state":I
    .local v1, "state":I
    goto/16 :goto_2

    .line 260
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_9
    const/16 v1, 0xd

    .line 262
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_2

    .line 244
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_6
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 245
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v17, v17, v1

    .line 246
    const/4 v1, 0x7

    .line 247
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_2

    .line 250
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_a
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 251
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v1

    if-nez v1, :cond_b

    .line 252
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v17, v17, v1

    .line 254
    :cond_b
    const/16 v1, 0xd

    .line 255
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_2

    .line 238
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_7
    invoke-static {v3}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 239
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v1, v18, v1

    add-int v17, v17, v1

    .line 241
    :cond_c
    const/16 v1, 0xd

    .line 242
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_2

    .line 226
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_8
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 227
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 228
    .end local v18    # "lastSeenVSCharCount":I
    .local v1, "lastSeenVSCharCount":I
    const/4 v2, 0x5

    .line 229
    move/from16 v18, v1

    goto/16 :goto_2

    .line 230
    .end local v1    # "lastSeenVSCharCount":I
    .restart local v18    # "lastSeenVSCharCount":I
    :cond_d
    invoke-static {v3}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 231
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v17, v17, v1

    .line 232
    const/4 v1, 0x7

    .line 233
    .end local v2    # "state":I
    .local v1, "state":I
    move v2, v1

    goto/16 :goto_2

    .line 235
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_e
    const/16 v1, 0xd

    .line 236
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_2

    .line 220
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_9
    invoke-static {v3}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 221
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v1, v18, v1

    add-int v17, v17, v1

    .line 223
    :cond_f
    const/16 v1, 0xd

    .line 224
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto/16 :goto_2

    .line 208
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_a
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 209
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 210
    .end local v18    # "lastSeenVSCharCount":I
    .local v1, "lastSeenVSCharCount":I
    const/4 v2, 0x3

    .line 211
    move/from16 v18, v1

    goto/16 :goto_2

    .line 214
    .end local v1    # "lastSeenVSCharCount":I
    .restart local v18    # "lastSeenVSCharCount":I
    :cond_10
    invoke-static {v3}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 215
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v17, v17, v1

    .line 217
    :cond_11
    const/16 v1, 0xd

    .line 218
    .end local v2    # "state":I
    .local v1, "state":I
    move v2, v1

    goto :goto_2

    .line 186
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_b
    const/16 v1, 0xd

    if-ne v3, v1, :cond_12

    .line 187
    add-int/lit8 v17, v17, 0x1

    .line 189
    :cond_12
    const/16 v1, 0xd

    .line 190
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    goto :goto_2

    .line 166
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :pswitch_c
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 167
    .end local v17    # "deleteCharCount":I
    .local v1, "deleteCharCount":I
    move/from16 v17, v1

    .end local v1    # "deleteCharCount":I
    .restart local v17    # "deleteCharCount":I
    const/16 v1, 0xa

    if-ne v3, v1, :cond_13

    .line 168
    const/4 v1, 0x1

    move v2, v1

    .end local v2    # "state":I
    .local v1, "state":I
    goto :goto_2

    .line 169
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_13
    invoke-static {v3}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 170
    const/4 v1, 0x6

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_2

    .line 171
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_14
    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 172
    const/16 v1, 0xa

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_2

    .line 173
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_15
    invoke-static {v3}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 174
    const/4 v1, 0x4

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_2

    .line 175
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_16
    sget v1, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    if-ne v3, v1, :cond_17

    .line 176
    const/4 v1, 0x2

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_2

    .line 177
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_17
    invoke-static {v3}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 178
    const/4 v1, 0x7

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_2

    .line 179
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_18
    sget v1, Landroid/text/Emoji;->CANCEL_TAG:I

    if-ne v3, v1, :cond_19

    .line 180
    const/16 v1, 0xc

    move v2, v1

    .end local v2    # "state":I
    .restart local v1    # "state":I
    goto :goto_2

    .line 182
    .end local v1    # "state":I
    .restart local v2    # "state":I
    :cond_19
    const/16 v1, 0xd

    .line 184
    .end local v2    # "state":I
    .restart local v1    # "state":I
    move v2, v1

    .line 302
    .end local v1    # "state":I
    .end local v3    # "codePoint":I
    .restart local v2    # "state":I
    :goto_2
    if-lez v21, :cond_1b

    const/16 v1, 0xd

    if-ne v2, v1, :cond_1a

    goto :goto_3

    :cond_1a
    move/from16 v3, v20

    move/from16 v1, v21

    goto/16 :goto_0

    .line 304
    :cond_1b
    :goto_3
    sub-int v1, p1, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v3}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static greylist-max-o getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 309
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 311
    .local v3, "len":I
    add-int/lit8 v0, v3, -0x1

    if-lt p1, v0, :cond_0

    .line 312
    return v3

    .line 315
    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    move-object v1, p0

    move v2, p1

    move-object v0, p2

    .end local p0    # "text":Ljava/lang/CharSequence;
    .end local p1    # "offset":I
    .end local p2    # "paint":Landroid/graphics/Paint;
    .local v0, "paint":Landroid/graphics/Paint;
    .local v1, "text":Ljava/lang/CharSequence;
    .local v2, "offset":I
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p0

    .line 318
    .end local v2    # "offset":I
    .local p0, "offset":I
    const/4 p1, 0x0

    invoke-static {v1, p0, p1}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result p1

    return p1
.end method

.method private static greylist-max-o isVariationSelector(I)Z
    .locals 1
    .param p0, "codepoint"    # I

    .line 88
    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method static greylist-max-o makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    .line 475
    const/4 v0, 0x1

    .line 476
    .local v0, "contentType":I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 481
    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    .line 482
    goto :goto_0

    .line 478
    :pswitch_2
    or-int/lit16 v0, v0, 0x1000

    .line 479
    nop

    .line 487
    :goto_0
    if-eqz p1, :cond_0

    .line 488
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 490
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 71
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "content":Landroid/text/Editable;
    .end local p3    # "keyCode":I
    .end local p4    # "event":Landroid/view/KeyEvent;
    .local v1, "view":Landroid/view/View;
    .local v2, "content":Landroid/text/Editable;
    .local v3, "keyCode":I
    .local v4, "event":Landroid/view/KeyEvent;
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 83
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "content":Landroid/text/Editable;
    .end local p3    # "keyCode":I
    .end local p4    # "event":Landroid/view/KeyEvent;
    .local v1, "view":Landroid/view/View;
    .local v2, "content":Landroid/text/Editable;
    .local v3, "keyCode":I
    .local v4, "event":Landroid/view/KeyEvent;
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 496
    sparse-switch p3, :sswitch_data_0

    .line 504
    const/4 v0, 0x0

    .local v0, "handled":Z
    goto :goto_0

    .line 501
    .end local v0    # "handled":Z
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 502
    .restart local v0    # "handled":Z
    goto :goto_0

    .line 498
    .end local v0    # "handled":Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 499
    .restart local v0    # "handled":Z
    nop

    .line 508
    :goto_0
    if-eqz v0, :cond_0

    .line 509
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 510
    const/4 v1, 0x1

    return v1

    .line 513
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 521
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 522
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 528
    .local v0, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 529
    .local v1, "selectionEnd":I
    if-ge v1, v0, :cond_1

    .line 530
    move v3, v1

    .line 531
    .local v3, "temp":I
    move v1, v0

    .line 532
    move v0, v3

    .line 535
    .end local v3    # "temp":I
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "text":Ljava/lang/CharSequence;
    if-nez v3, :cond_2

    .line 537
    return v2

    .line 540
    :cond_2
    invoke-interface {p2, v0, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 541
    const/4 v2, 0x1

    return v2

    .line 524
    .end local v0    # "selectionStart":I
    .end local v1    # "selectionEnd":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_3
    :goto_0
    return v2
.end method
