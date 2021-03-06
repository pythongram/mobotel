.class public Lcom/koushikdutta/ion/bitmap/BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapInfo.java"


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public decoder:Landroid/graphics/BitmapRegionDecoder;

.field public decoderFile:Ljava/io/File;

.field public drawTime:J

.field public exception:Ljava/lang/Exception;

.field public final extras:Lcom/koushikdutta/async/util/UntypedHashtable;

.field public gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

.field public final key:Ljava/lang/String;

.field public loadTime:J

.field public final mimeType:Ljava/lang/String;

.field public final originalSize:Landroid/graphics/Point;

.field public servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "originalSize"    # Landroid/graphics/Point;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->loadTime:J

    .line 36
    new-instance v0, Lcom/koushikdutta/async/util/UntypedHashtable;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/UntypedHashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->extras:Lcom/koushikdutta/async/util/UntypedHashtable;

    .line 19
    iput-object p4, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->originalSize:Landroid/graphics/Point;

    .line 20
    iput-object p3, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->key:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->mimeType:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public sizeOf()I
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    .line 40
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 43
    :goto_11
    return v0

    .line 41
    :cond_12
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    if-eqz v0, :cond_1d

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->gifDecoder:Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->getGifDataLength()I

    move-result v0

    goto :goto_11

    .line 43
    :cond_1d
    const/4 v0, 0x0

    goto :goto_11
.end method
