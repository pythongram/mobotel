.class public Lorg/telegram/ui/Components/Paint/Slice;
.super Ljava/lang/Object;
.source "Slice.java"


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V
    .registers 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "queue"    # Lorg/telegram/messenger/DispatchQueue;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    .line 28
    :try_start_5
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 29
    .local v1, "outputDir":Ljava/io/File;
    const-string v2, "paint"

    const-string v3, ".bin"

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_1a

    .line 34
    .end local v1    # "outputDir":Ljava/io/File;
    :goto_15
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    if-nez v2, :cond_1f

    .line 38
    :goto_19
    return-void

    .line 30
    :catch_1a
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Slice;->storeData(Ljava/nio/ByteBuffer;)V

    goto :goto_19
.end method

.method private storeData(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 50
    .local v5, "input":[B
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/util/zip/Deflater;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 53
    .local v2, "deflater":Ljava/util/zip/Deflater;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 54
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 56
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 57
    .local v0, "buf":[B
    :goto_24
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v6

    if-nez v6, :cond_38

    .line 58
    invoke-virtual {v2, v0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    .line 59
    .local v1, "byteCount":I
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_24

    .line 64
    .end local v0    # "buf":[B
    .end local v1    # "byteCount":I
    .end local v2    # "deflater":Ljava/util/zip/Deflater;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "input":[B
    :catch_33
    move-exception v3

    .line 65
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 67
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_37
    return-void

    .line 61
    .restart local v0    # "buf":[B
    .restart local v2    # "deflater":Ljava/util/zip/Deflater;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "input":[B
    :cond_38
    :try_start_38
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 63
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3e} :catch_33

    goto :goto_37
.end method


# virtual methods
.method public cleanResources()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    .line 45
    :cond_c
    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .registers 13

    .prologue
    .line 71
    const/16 v9, 0x400

    :try_start_2
    new-array v4, v9, [B

    .line 72
    .local v4, "input":[B
    const/16 v9, 0x400

    new-array v7, v9, [B

    .line 73
    .local v7, "output":[B
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v2, "fin":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v9, 0x1

    invoke-direct {v3, v9}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 78
    .local v3, "inflater":Ljava/util/zip/Inflater;
    :cond_1a
    :goto_1a
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 79
    .local v6, "numRead":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_25

    .line 80
    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 84
    :cond_25
    :goto_25
    const/4 v9, 0x0

    array-length v10, v7

    invoke-virtual {v3, v7, v9, v10}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v5

    .local v5, "numDecompressed":I
    if-eqz v5, :cond_38

    .line 85
    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_25

    .line 103
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "inflater":Ljava/util/zip/Inflater;
    .end local v4    # "input":[B
    .end local v5    # "numDecompressed":I
    .end local v6    # "numRead":I
    .end local v7    # "output":[B
    :catch_32
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 107
    const/4 v8, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    return-object v8

    .line 88
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "inflater":Ljava/util/zip/Inflater;
    .restart local v4    # "input":[B
    .restart local v5    # "numDecompressed":I
    .restart local v6    # "numRead":I
    .restart local v7    # "output":[B
    :cond_38
    :try_start_38
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 96
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 97
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-static {v9, v10, v11}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 99
    .local v8, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 100
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_37

    .line 91
    .end local v8    # "result":Ljava/nio/ByteBuffer;
    :cond_55
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_58} :catch_32

    move-result v9

    if-eqz v9, :cond_1a

    goto :goto_1a
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    return v0
.end method
