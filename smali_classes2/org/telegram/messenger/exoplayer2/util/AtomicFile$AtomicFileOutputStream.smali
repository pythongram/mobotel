.class final Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;
.super Ljava/io/OutputStream;
.source "AtomicFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/util/AtomicFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AtomicFileOutputStream"
.end annotation


# instance fields
.field private closed:Z

.field private final fileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->closed:Z

    .line 159
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 160
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
    .line 164
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->closed:Z

    if-eqz v1, :cond_5

    .line 175
    :goto_4
    return-void

    .line 167
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->closed:Z

    .line 168
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->flush()V

    .line 170
    :try_start_b
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_1a

    .line 174
    :goto_14
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    .line 171
    :catch_1a
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AtomicFile"

    const-string v2, "Failed to sync file descriptor:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 180
    return-void
.end method

.method public write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 185
    return-void
.end method

.method public write([B)V
    .registers 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 190
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 195
    return-void
.end method
