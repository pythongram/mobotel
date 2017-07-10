.class public final Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
.super Ljava/lang/Exception;
.source "ExoPlaybackException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/ExoPlaybackException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_RENDERER:I = 0x1

.field public static final TYPE_SOURCE:I = 0x0

.field public static final TYPE_UNEXPECTED:I = 0x2


# instance fields
.field public final rendererIndex:I

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;I)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "rendererIndex"    # I

    .prologue
    .line 100
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->type:I

    .line 102
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->rendererIndex:I

    .line 103
    return-void
.end method

.method public static createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
    .registers 5
    .param p0, "cause"    # Ljava/lang/Exception;
    .param p1, "rendererIndex"    # I

    .prologue
    .line 75
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForSource(Ljava/io/IOException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
    .registers 5
    .param p0, "cause"    # Ljava/io/IOException;

    .prologue
    .line 85
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method static createForUnexpected(Ljava/lang/RuntimeException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
    .registers 5
    .param p0, "cause"    # Ljava/lang/RuntimeException;

    .prologue
    .line 95
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public getRendererException()Ljava/lang/Exception;
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 121
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->type:I

    if-ne v1, v0, :cond_f

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 122
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0

    .line 121
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getSourceException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->type:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 112
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0

    .line 111
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getUnexpectedException()Ljava/lang/RuntimeException;
    .registers 3

    .prologue
    .line 131
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 132
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0

    .line 131
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method
