.class public Lcom/android/internal/protolog/ProtoLogCommandHandler;
.super Landroid/os/ShellCommand;
.source "ProtoLogCommandHandler.java"


# instance fields
.field private final blacklist mPrintWriter:Ljava/io/PrintWriter;

.field private final blacklist mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;)V
    .locals 1
    .param p1, "protoLogConfigurationService"    # Lcom/android/internal/protolog/ProtoLogConfigurationService;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;Ljava/io/PrintWriter;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "protoLogConfigurationService"    # Lcom/android/internal/protolog/ProtoLogConfigurationService;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;

    .line 44
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    .line 46
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    .line 47
    return-void
.end method

.method private blacklist handleGroupsCommands(Ljava/lang/String;)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 92
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Incomplete command. Use \'cmd protolog help\' for guidance."

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 93
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    return v2

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "list"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "status"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :goto_0
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    return v4

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "group":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 116
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    return v2

    .line 120
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProtoLog group "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'s status:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {v1}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 123
    const-string v1, "UNREGISTERED"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    return v2

    .line 127
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOG_TO_LOGCAT = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    .line 128
    invoke-interface {v4, v3}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->isLoggingToLogcat(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    return v2

    .line 99
    .end local v3    # "group":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {v1}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "availableGroups":[Ljava/lang/String;
    array-length v3, v1

    if-nez v3, :cond_4

    .line 101
    const-string v3, "No ProtoLog groups registered with ProtoLog service."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    return v2

    .line 105
    :cond_4
    const-string v3, "ProtoLog groups registered with service:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 107
    .local v5, "group":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .end local v5    # "group":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 110
    :cond_5
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_1
        0x32b09e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist handleLogcatCommands(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 141
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    return v3

    .line 152
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->processGroups()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->disableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 153
    return v1

    .line 148
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->processGroups()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->enableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 149
    return v1

    .line 142
    :cond_2
    :goto_2
    const-string v2, "Incomplete command. Use \'cmd protolog help\' for guidance."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist processGroups()[Ljava/lang/String;
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getRemainingArgsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {v0}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getRemainingArgsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public blacklist getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    return-object v0

    .line 86
    :cond_0
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onCommand(Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->onHelp()V

    .line 53
    return v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "logcat"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "groups"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleLogcatCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 57
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleGroupsCommands(Ljava/lang/String;)I

    move-result v0

    .line 56
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49c2262c -> :sswitch_1
        -0x416819ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onHelp()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 66
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "ProtoLog commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 70
    const-string v1, "  groups (list | status)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v1, "    list - lists all ProtoLog groups registered with ProtoLog service"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v1, "    status <group> - print the status of a ProtoLog group"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 74
    const-string v1, "  logcat (enable | disable) <group>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v1, "    enable or disable ProtoLog to logcat"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 77
    return-void
.end method
