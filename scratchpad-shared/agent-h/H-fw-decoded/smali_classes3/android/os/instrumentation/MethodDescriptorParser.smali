.class public final Landroid/os/instrumentation/MethodDescriptorParser;
.super Ljava/lang/Object;
.source "MethodDescriptorParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseMethodDescriptor(Ljava/lang/ClassLoader;Landroid/os/instrumentation/MethodDescriptor;)Ljava/lang/reflect/Method;
    .locals 8
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "descriptor"    # Landroid/os/instrumentation/MethodDescriptor;

    .line 36
    :try_start_0
    iget-object v0, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    .local v0, "javaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    .line 38
    .local v1, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_b

    .line 39
    iget-object v3, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 40
    .local v3, "typeName":Ljava/lang/String;
    const-string v4, "[]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 41
    .local v4, "isArrayType":Z
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 44
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v5, "short"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_1
    const-string v5, "float"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_2
    const-string v5, "boolean"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_2

    :sswitch_3
    const-string/jumbo v5, "long"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_4
    const-string v6, "char"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :sswitch_5
    const-string v5, "byte"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_6
    const-string/jumbo v5, "int"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_7
    const-string v5, "double"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 70
    if-eqz v4, :cond_a

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_b

    .line 67
    :pswitch_0
    if-eqz v4, :cond_2

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_3

    :cond_2
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :goto_3
    aput-object v5, v1, v2

    .line 68
    goto/16 :goto_d

    .line 64
    :pswitch_1
    if-eqz v4, :cond_3

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_4

    :cond_3
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    :goto_4
    aput-object v5, v1, v2

    .line 65
    goto/16 :goto_d

    .line 61
    :pswitch_2
    if-eqz v4, :cond_4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_5

    :cond_4
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    :goto_5
    aput-object v5, v1, v2

    .line 62
    goto :goto_d

    .line 58
    :pswitch_3
    if-eqz v4, :cond_5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_6

    :cond_5
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_6
    aput-object v5, v1, v2

    .line 59
    goto :goto_d

    .line 55
    :pswitch_4
    if-eqz v4, :cond_6

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_7

    :cond_6
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    :goto_7
    aput-object v5, v1, v2

    .line 56
    goto :goto_d

    .line 52
    :pswitch_5
    if-eqz v4, :cond_7

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_8

    :cond_7
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    :goto_8
    aput-object v5, v1, v2

    .line 53
    goto :goto_d

    .line 49
    :pswitch_6
    if-eqz v4, :cond_8

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_9

    :cond_8
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    :goto_9
    aput-object v5, v1, v2

    .line 50
    goto :goto_d

    .line 46
    :pswitch_7
    if-eqz v4, :cond_9

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_a

    :cond_9
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    :goto_a
    aput-object v5, v1, v2

    .line 47
    goto :goto_d

    .line 70
    :goto_b
    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_c

    .line 71
    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    :goto_c
    aput-object v5, v1, v2

    .line 38
    .end local v3    # "typeName":Ljava/lang/String;
    .end local v4    # "isArrayType":Z
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_b
    iget-object v2, p1, Landroid/os/instrumentation/MethodDescriptor;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 76
    .end local v0    # "javaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified method cannot be found. Is this descriptor valid? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
