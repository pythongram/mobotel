.class final Lorg/telegram/messenger/query/StickersQuery$9;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$documents:Ljava/util/ArrayList;

.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZILjava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 433
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$documents:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 436
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "emoji"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 437
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v1, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    if-eqz v1, :cond_4f

    .line 438
    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z
    invoke-static {v5}, Lorg/telegram/messenger/query/StickersQuery;->access$102(Z)Z

    .line 439
    # setter for: Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z
    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->access$202(Z)Z

    .line 440
    const-string v1, "lastGifLoadTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 446
    :goto_25
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$documents:Ljava/util/ArrayList;

    if-eqz v1, :cond_4e

    .line 447
    iget-boolean v1, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    if-eqz v1, :cond_6d

    .line 448
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$documents:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 452
    :goto_32
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$gif:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 454
    :cond_4e
    return-void

    .line 442
    :cond_4f
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$400()[Z

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    aput-boolean v5, v1, v2

    .line 443
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$500()[Z

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    aput-boolean v6, v1, v2

    .line 444
    const-string v1, "lastStickersLoadTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_25

    .line 450
    :cond_6d
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$300()[Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$type:I

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$9;->val$documents:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    goto :goto_32
.end method
