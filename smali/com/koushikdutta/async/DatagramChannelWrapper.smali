.class Lcom/koushikdutta/async/DatagramChannelWrapper;
.super Lcom/koushikdutta/async/ChannelWrapper;
.source "DatagramChannelWrapper.java"


# instance fields
.field address:Ljava/net/InetSocketAddress;

.field mChannel:Ljava/nio/channels/DatagramChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/DatagramChannel;)V
    .registers 2
    .param p1, "channel"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ChannelWrapper;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    .line 31
    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 26
    return-void
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getSocket()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/koushikdutta/async/DatagramChannelWrapper;->isConnected()Z

    move-result v1

    if-nez v1, :cond_20

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 36
    .local v0, "position":I
    iget-object v1, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    iput-object v1, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->address:Ljava/net/InetSocketAddress;

    .line 37
    iget-object v1, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->address:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1a

    .line 38
    const/4 v1, -0x1

    .line 42
    .end local v0    # "position":I
    :goto_19
    return v1

    .line 39
    .restart local v0    # "position":I
    :cond_1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_19

    .line 41
    .end local v0    # "position":I
    :cond_20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->address:Ljava/net/InetSocketAddress;

    .line 42
    iget-object v1, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    goto :goto_19
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p1, "byteBuffers"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .param p1, "byteBuffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/DatagramChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 3
    .param p1, "sel"    # Ljava/nio/channels/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/DatagramChannelWrapper;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
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
    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public shutdownInput()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method public shutdownOutput()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "src"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
