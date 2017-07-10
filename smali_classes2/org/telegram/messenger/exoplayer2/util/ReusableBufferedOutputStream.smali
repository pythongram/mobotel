.class public final Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;->flush()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_12

    .line 49
    :goto_7
    :try_start_7
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_15

    .line 55
    :cond_c
    :goto_c
    if-eqz v1, :cond_11

    .line 56
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 58
    :cond_11
    return-void

    .line 45
    :catch_12
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_7

    .line 50
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v0

    .line 51
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_c

    .line 52
    move-object v1, v0

    goto :goto_c
.end method

.method public reset(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 69
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    .line 71
    return-void
.end method
