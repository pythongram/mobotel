.class public Lcom/googlecode/mp4parser/util/ChannelHelper;
.super Ljava/lang/Object;
.source "ChannelHelper.java"


# static fields
.field private static empty:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/util/ChannelHelper;->empty:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I
    .registers 7
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "count":I
    :cond_2
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .local v1, "n":I
    if-ne v2, v1, :cond_12

    .line 43
    :goto_8
    if-ne v1, v2, :cond_16

    .line 44
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "End of file. No more boxes."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_12
    add-int/2addr v0, v1

    .line 39
    if-ne v0, p2, :cond_2

    goto :goto_8

    .line 46
    :cond_16
    return v0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/util/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I

    .line 32
    return-void
.end method
