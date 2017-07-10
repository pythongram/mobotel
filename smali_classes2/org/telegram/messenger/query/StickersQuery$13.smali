.class final Lorg/telegram/messenger/query/StickersQuery$13;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 592
    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$902(Z)Z

    .line 593
    const/4 v0, 0x1

    # setter for: Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1002(Z)Z

    .line 594
    return-void
.end method
