.class abstract Lcom/koushikdutta/async/ChannelWrapper;
.super Ljava/lang/Object;
.source "ChannelWrapper.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;


# instance fields
.field private mChannel:Ljava/nio/channels/spi/AbstractSelectableChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V
    .registers 3
    .param p1, "channel"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 17
    iput-object p1, p0, Lcom/koushikdutta/async/ChannelWrapper;->mChannel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/ChannelWrapper;->mChannel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->close()V

    .line 47
    return-void
.end method

.method public abstract getLocalPort()I
.end method

.method public abstract getSocket()Ljava/lang/Object;
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isConnected()Z
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/ChannelWrapper;->mChannel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation
.end method

.method public register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    .registers 4
    .param p1, "sel"    # Ljava/nio/channels/Selector;
    .param p2, "ops"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/koushikdutta/async/ChannelWrapper;->mChannel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/spi/AbstractSelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public abstract shutdownInput()V
.end method

.method public abstract shutdownOutput()V
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write([Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
