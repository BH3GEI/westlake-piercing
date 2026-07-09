.class public interface abstract Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.super Ljava/lang/Object;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteViewsFactory"
.end annotation


# virtual methods
.method public abstract whitelist getCount()I
.end method

.method public abstract whitelist getItemId(I)J
.end method

.method public abstract whitelist getLoadingView()Landroid/widget/RemoteViews;
.end method

.method public blacklist getRemoteCollectionItems(II)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .locals 16
    .param p1, "capSize"    # I
    .param p2, "capBitmapSize"    # I

    .line 133
    move-object/from16 v1, p0

    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 134
    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v2

    .line 135
    .local v2, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 137
    .local v3, "capSizeTestParcel":Landroid/os/Parcel;
    invoke-virtual {v3}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v4

    .line 140
    .local v4, "prevAllowSquashing":Z
    :try_start_0
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 142
    .local v0, "itemsBuilder":Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    const/4 v5, 0x0

    .line 143
    .local v5, "testBitmapCache":Landroid/widget/RemoteViews$BitmapCache;
    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V

    .line 145
    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 146
    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I

    move-result v6

    .line 148
    .local v6, "numOfEntries":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 149
    invoke-interface {v1, v7}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J

    move-result-wide v8

    .line 150
    .local v8, "currentItemId":J
    invoke-interface {v1, v7}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v10

    .line 151
    .local v10, "currentView":Landroid/widget/RemoteViews;
    const/4 v11, 0x0

    invoke-virtual {v10, v3, v11}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move/from16 v12, p1

    if-le v11, v12, :cond_0

    .line 153
    move/from16 v11, p2

    move-object v15, v2

    goto :goto_2

    .line 155
    :cond_0
    if-nez v5, :cond_1

    .line 156
    :try_start_1
    new-instance v11, Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getBitmapCache()Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/widget/RemoteViews$BitmapCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v11

    .end local v5    # "testBitmapCache":Landroid/widget/RemoteViews$BitmapCache;
    .local v11, "testBitmapCache":Landroid/widget/RemoteViews$BitmapCache;
    goto :goto_1

    .line 169
    .end local v0    # "itemsBuilder":Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .end local v6    # "numOfEntries":I
    .end local v7    # "i":I
    .end local v8    # "currentItemId":J
    .end local v10    # "currentView":Landroid/widget/RemoteViews;
    .end local v11    # "testBitmapCache":Landroid/widget/RemoteViews$BitmapCache;
    :catchall_0
    move-exception v0

    move/from16 v11, p2

    move-object v15, v2

    goto :goto_4

    .line 158
    .restart local v0    # "itemsBuilder":Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .restart local v5    # "testBitmapCache":Landroid/widget/RemoteViews$BitmapCache;
    .restart local v6    # "numOfEntries":I
    .restart local v7    # "i":I
    .restart local v8    # "currentItemId":J
    .restart local v10    # "currentView":Landroid/widget/RemoteViews;
    :cond_1
    :try_start_2
    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getBitmapCache()Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/RemoteViews$BitmapCache;->mergeWithCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 160
    :goto_1
    invoke-virtual {v5}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()J

    move-result-wide v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v11, p2

    move-object v15, v2

    .end local v2    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    .local v15, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    int-to-long v1, v11

    cmp-long v1, v13, v1

    if-ltz v1, :cond_2

    .line 161
    goto :goto_2

    .line 164
    :cond_2
    :try_start_3
    invoke-virtual {v0, v8, v9, v10}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 148
    nop

    .end local v8    # "currentItemId":J
    .end local v10    # "currentView":Landroid/widget/RemoteViews;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object v2, v15

    goto :goto_0

    .line 169
    .end local v0    # "itemsBuilder":Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .end local v5    # "testBitmapCache":Landroid/widget/RemoteViews$BitmapCache;
    .end local v6    # "numOfEntries":I
    .end local v7    # "i":I
    .end local v15    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    .restart local v2    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 148
    .restart local v0    # "itemsBuilder":Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .restart local v5    # "testBitmapCache":Landroid/widget/RemoteViews$BitmapCache;
    .restart local v6    # "numOfEntries":I
    .restart local v7    # "i":I
    :cond_3
    move/from16 v12, p1

    move/from16 v11, p2

    move-object v15, v2

    .line 167
    .end local v2    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    .end local v7    # "i":I
    .restart local v15    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :goto_2
    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 169
    .end local v0    # "itemsBuilder":Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    .end local v5    # "testBitmapCache":Landroid/widget/RemoteViews$BitmapCache;
    .end local v6    # "numOfEntries":I
    .end local v15    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    .local v1, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 171
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 172
    nop

    .line 173
    return-object v1

    .line 169
    .end local v1    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    .restart local v15    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v15    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    .restart local v2    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :catchall_3
    move-exception v0

    move/from16 v12, p1

    :goto_3
    move/from16 v11, p2

    move-object v15, v2

    .end local v2    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    .restart local v15    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :goto_4
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 171
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 172
    throw v0
.end method

.method public abstract whitelist getViewAt(I)Landroid/widget/RemoteViews;
.end method

.method public abstract whitelist getViewTypeCount()I
.end method

.method public abstract whitelist hasStableIds()Z
.end method

.method public abstract whitelist onCreate()V
.end method

.method public abstract whitelist onDataSetChanged()V
.end method

.method public abstract whitelist onDestroy()V
.end method
