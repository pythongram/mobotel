.class public interface abstract Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/ThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackgroundCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract loadTile(II)V
.end method

.method public abstract recycleTile(Lorg/telegram/messenger/support/util/TileList$Tile;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract refresh(I)V
.end method

.method public abstract updateRange(IIIII)V
.end method
