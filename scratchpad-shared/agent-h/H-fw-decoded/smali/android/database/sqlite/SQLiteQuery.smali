.class public final Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQuery"


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 39
    iput-object p3, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 40
    return-void
.end method


# virtual methods
.method fillWindow(Landroid/database/CursorWindow;IIZ)I
    .locals 9
    .param p1, "window"    # Landroid/database/CursorWindow;
    .param p2, "startPos"    # I
    .param p3, "requiredPos"    # I
    .param p4, "countAllRows"    # Z

    .line 58
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/database/CursorWindow;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 62
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getConnectionFlags()I

    move-result v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "window":Landroid/database/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .local v3, "window":Landroid/database/CursorWindow;
    .local v4, "startPos":I
    .local v5, "requiredPos":I
    .local v6, "countAllRows":Z
    :try_start_2
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteSession;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I

    move-result p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    .local p1, "numRows":I
    nop

    .line 73
    :try_start_3
    invoke-virtual {v3}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 65
    return p1

    .line 69
    .end local p1    # "numRows":I
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 73
    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .local p1, "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catchall_0
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .end local p1    # "window":Landroid/database/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    goto :goto_2

    .line 69
    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .restart local p1    # "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catch_2
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .line 70
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    .local p1, "ex":Landroid/database/sqlite/SQLiteException;
    :goto_0
    :try_start_4
    const-string p2, "SQLiteQuery"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "; query: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    nop

    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    throw p1

    .line 66
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    .local p1, "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catch_3
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .line 67
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    .local p1, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->onCorruption()V

    .line 68
    nop

    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    .end local p1    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_2
    :try_start_5
    invoke-virtual {v3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 74
    nop

    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .end local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 76
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteQuery;
    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .end local v3    # "window":Landroid/database/CursorWindow;
    .end local v4    # "startPos":I
    .end local v5    # "requiredPos":I
    .end local v6    # "countAllRows":Z
    .local p1, "window":Landroid/database/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catchall_3
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .end local p1    # "window":Landroid/database/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    .restart local v3    # "window":Landroid/database/CursorWindow;
    .restart local v4    # "startPos":I
    .restart local v5    # "requiredPos":I
    .restart local v6    # "countAllRows":Z
    :goto_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 77
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
