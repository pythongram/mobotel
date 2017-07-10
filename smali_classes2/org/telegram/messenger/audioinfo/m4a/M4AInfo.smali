.class public Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "M4AInfo.java"


# static fields
.field private static final ASCII:Ljava/lang/String; = "ISO8859_1"

.field static final LOGGER:Ljava/util/logging/Logger;

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final debugLevel:Ljava/util/logging/Level;

.field private rating:B

.field private speed:Ljava/math/BigDecimal;

.field private tempo:S

.field private volume:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;-><init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V
    .registers 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "debugLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    .line 49
    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    .line 50
    new-instance v0, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;-><init>(Ljava/io/InputStream;)V

    .line 51
    .local v0, "mp4":Lorg/telegram/messenger/audioinfo/m4a/MP4Input;
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 52
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 54
    :cond_1b
    const-string v1, "ftyp"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->ftyp(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 55
    const-string v1, "moov"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->moov(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 56
    return-void
.end method


# virtual methods
.method data(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 14
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v8, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v9, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 189
    sget-object v8, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v9, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 191
    :cond_15
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 192
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 193
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getParent()Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v9

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2ca

    :cond_2d
    :goto_2d
    packed-switch v8, :pswitch_data_31c

    .line 308
    :cond_30
    :goto_30
    return-void

    .line 193
    :sswitch_31
    const-string v10, "\u00a9alb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v8, 0x0

    goto :goto_2d

    :sswitch_3b
    const-string v10, "aART"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v8, 0x1

    goto :goto_2d

    :sswitch_45
    const-string v10, "\u00a9ART"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v8, 0x2

    goto :goto_2d

    :sswitch_4f
    const-string v10, "\u00a9cmt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v8, 0x3

    goto :goto_2d

    :sswitch_59
    const-string v10, "\u00a9com"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v8, 0x4

    goto :goto_2d

    :sswitch_63
    const-string v10, "\u00a9wrt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v8, 0x5

    goto :goto_2d

    :sswitch_6d
    const-string v10, "covr"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v8, 0x6

    goto :goto_2d

    :sswitch_77
    const-string v10, "cpil"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v8, 0x7

    goto :goto_2d

    :sswitch_81
    const-string v10, "cprt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0x8

    goto :goto_2d

    :sswitch_8c
    const-string v10, "\u00a9cpy"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0x9

    goto :goto_2d

    :sswitch_97
    const-string v10, "\u00a9day"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0xa

    goto :goto_2d

    :sswitch_a2
    const-string v10, "disk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0xb

    goto :goto_2d

    :sswitch_ad
    const-string v10, "gnre"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0xc

    goto/16 :goto_2d

    :sswitch_b9
    const-string v10, "\u00a9gen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0xd

    goto/16 :goto_2d

    :sswitch_c5
    const-string v10, "\u00a9grp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0xe

    goto/16 :goto_2d

    :sswitch_d1
    const-string v10, "\u00a9lyr"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0xf

    goto/16 :goto_2d

    :sswitch_dd
    const-string v10, "\u00a9nam"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0x10

    goto/16 :goto_2d

    :sswitch_e9
    const-string v10, "rtng"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0x11

    goto/16 :goto_2d

    :sswitch_f5
    const-string v10, "tmpo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0x12

    goto/16 :goto_2d

    :sswitch_101
    const-string v10, "trkn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v8, 0x13

    goto/16 :goto_2d

    .line 195
    :pswitch_10d
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->album:Ljava/lang/String;

    goto/16 :goto_30

    .line 198
    :pswitch_117
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->albumArtist:Ljava/lang/String;

    goto/16 :goto_30

    .line 201
    :pswitch_121
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->artist:Ljava/lang/String;

    goto/16 :goto_30

    .line 204
    :pswitch_12b
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->comment:Ljava/lang/String;

    goto/16 :goto_30

    .line 208
    :pswitch_135
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->composer:Ljava/lang/String;

    if-eqz v8, :cond_145

    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->composer:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_30

    .line 209
    :cond_145
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->composer:Ljava/lang/String;

    goto/16 :goto_30

    .line 214
    :pswitch_14f
    :try_start_14f
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBytes()[B

    move-result-object v0

    .line 215
    .local v0, "bytes":[B
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 216
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 217
    const/4 v8, 0x1

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 218
    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v0, v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 219
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v9, 0x320

    if-gt v8, v9, :cond_16f

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v9, 0x320

    if-le v8, v9, :cond_184

    .line 220
    :cond_16f
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 221
    .local v7, "size":I
    :goto_177
    const/16 v8, 0x320

    if-le v7, v8, :cond_184

    .line 222
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 223
    div-int/lit8 v7, v7, 0x2

    goto :goto_177

    .line 226
    .end local v7    # "size":I
    :cond_184
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 227
    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v0, v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    .line 228
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_30

    .line 229
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42f00000    # 120.0f

    div-float v6, v8, v9

    .line 230
    .local v6, "scale":F
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-lez v8, :cond_1d8

    .line 231
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    float-to-int v9, v9

    iget-object v10, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    float-to-int v10, v10

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;

    .line 235
    :goto_1c8
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;

    if-nez v8, :cond_30

    .line 236
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_1d0} :catch_1d2

    goto/16 :goto_30

    .line 239
    .end local v0    # "bytes":[B
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "scale":F
    :catch_1d2
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_30

    .line 233
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    .restart local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "scale":F
    :cond_1d8
    :try_start_1d8
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1dc} :catch_1d2

    goto :goto_1c8

    .line 244
    .end local v0    # "bytes":[B
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "scale":F
    :pswitch_1dd
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBoolean()Z

    move-result v8

    iput-boolean v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->compilation:Z

    goto/16 :goto_30

    .line 248
    :pswitch_1e5
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->copyright:Ljava/lang/String;

    if-eqz v8, :cond_1f5

    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->copyright:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_30

    .line 249
    :cond_1f5
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->copyright:Ljava/lang/String;

    goto/16 :goto_30

    .line 253
    :pswitch_1ff
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "day":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_30

    .line 256
    const/4 v8, 0x0

    const/4 v9, 0x4

    :try_start_212
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->year:S
    :try_end_220
    .catch Ljava/lang/NumberFormatException; {:try_start_212 .. :try_end_220} :catch_222

    goto/16 :goto_30

    .line 257
    :catch_222
    move-exception v8

    goto/16 :goto_30

    .line 263
    .end local v1    # "day":Ljava/lang/String;
    :pswitch_225
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 264
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->disc:S

    .line 265
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->discs:S

    goto/16 :goto_30

    .line 268
    :pswitch_237
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    if-eqz v8, :cond_247

    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_30

    .line 269
    :cond_247
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-nez v8, :cond_265

    .line 270
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 271
    .local v4, "index":I
    invoke-static {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;

    move-result-object v3

    .line 272
    .local v3, "id3v1Genre":Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;
    if-eqz v3, :cond_30

    .line 273
    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getDescription()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    goto/16 :goto_30

    .line 276
    .end local v3    # "id3v1Genre":Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;
    .end local v4    # "index":I
    :cond_265
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    goto/16 :goto_30

    .line 281
    :pswitch_26f
    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    if-eqz v8, :cond_27f

    iget-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_30

    .line 282
    :cond_27f
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    goto/16 :goto_30

    .line 286
    :pswitch_289
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->grouping:Ljava/lang/String;

    goto/16 :goto_30

    .line 289
    :pswitch_293
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->lyrics:Ljava/lang/String;

    goto/16 :goto_30

    .line 292
    :pswitch_29d
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->title:Ljava/lang/String;

    goto/16 :goto_30

    .line 295
    :pswitch_2a7
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v8

    iput-byte v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->rating:B

    goto/16 :goto_30

    .line 298
    :pswitch_2af
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tempo:S

    goto/16 :goto_30

    .line 301
    :pswitch_2b7
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 302
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->track:S

    .line 303
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v8

    iput-short v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tracks:S

    goto/16 :goto_30

    .line 193
    nop

    :sswitch_data_2ca
    .sparse-switch
        0x2d1642 -> :sswitch_3b
        0x2eb028 -> :sswitch_6d
        0x2eb250 -> :sswitch_77
        0x2eb36f -> :sswitch_81
        0x2f0d9d -> :sswitch_a2
        0x307d5a -> :sswitch_ad
        0x35937b -> :sswitch_e9
        0x366238 -> :sswitch_f5
        0x367461 -> :sswitch_101
        0x4dd0fa -> :sswitch_45
        0x4e4c4e -> :sswitch_31
        0x4e5401 -> :sswitch_4f
        0x4e5438 -> :sswitch_59
        0x4e5463 -> :sswitch_8c
        0x4e5653 -> :sswitch_97
        0x4e6207 -> :sswitch_b9
        0x4e639c -> :sswitch_c5
        0x4e773c -> :sswitch_d1
        0x4e7bd1 -> :sswitch_dd
        0x4e9fb0 -> :sswitch_63
    .end sparse-switch

    :pswitch_data_31c
    .packed-switch 0x0
        :pswitch_10d
        :pswitch_117
        :pswitch_121
        :pswitch_12b
        :pswitch_135
        :pswitch_135
        :pswitch_14f
        :pswitch_1dd
        :pswitch_1e5
        :pswitch_1e5
        :pswitch_1ff
        :pswitch_225
        :pswitch_237
        :pswitch_26f
        :pswitch_289
        :pswitch_293
        :pswitch_29d
        :pswitch_2a7
        :pswitch_2af
        :pswitch_2b7
    .end packed-switch
.end method

.method ftyp(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 5
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 60
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 62
    :cond_15
    const/4 v0, 0x4

    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    const-string v1, "M4V|MP4|mp42|isom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 64
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": brand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (experimental)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 68
    :cond_54
    :goto_54
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->version:Ljava/lang/String;

    .line 69
    return-void

    .line 65
    :cond_5f
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    const-string v1, "M4A|M4P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 66
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": brand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected M4A or M4P)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_54
.end method

.method public getRating()B
    .registers 2

    .prologue
    .line 315
    iget-byte v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->rating:B

    return v0
.end method

.method public getSpeed()Ljava/math/BigDecimal;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->speed:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTempo()S
    .registers 2

    .prologue
    .line 311
    iget-short v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tempo:S

    return v0
.end method

.method public getVolume()Ljava/math/BigDecimal;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->volume:Ljava/math/BigDecimal;

    return-object v0
.end method

.method ilst(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 8
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 170
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 172
    :cond_15
    :goto_15
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 173
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .line 174
    .local v0, "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 175
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 177
    :cond_34
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_67

    .line 178
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 179
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": contains no value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_15

    .line 183
    :cond_67
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->data(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_15

    .line 185
    .end local v0    # "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    :cond_71
    return-void
.end method

.method mdhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 14
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v10, 0x3e8

    .line 126
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 127
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 129
    :cond_18
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v1

    .line 130
    .local v1, "version":B
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 131
    if-ne v1, v7, :cond_40

    const/16 v4, 0x10

    :goto_24
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 132
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v0

    .line 133
    .local v0, "sampleRate":I
    if-ne v1, v7, :cond_43

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readLong()J

    move-result-wide v2

    .line 134
    .local v2, "samples":J
    :goto_31
    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_49

    .line 135
    mul-long v4, v10, v2

    int-to-long v6, v0

    div-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    .line 139
    :cond_3f
    :goto_3f
    return-void

    .line 131
    .end local v0    # "sampleRate":I
    .end local v2    # "samples":J
    :cond_40
    const/16 v4, 0x8

    goto :goto_24

    .line 133
    .restart local v0    # "sampleRate":I
    :cond_43
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v4

    int-to-long v2, v4

    goto :goto_31

    .line 136
    .restart local v2    # "samples":J
    :cond_49
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    mul-long v6, v10, v2

    int-to-long v8, v0

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-lez v4, :cond_3f

    .line 137
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mdhd: duration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-long v8, v10, v2

    int-to-long v10, v0

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method mdia(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 5
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 120
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 122
    :cond_15
    const-string v0, "mdhd"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mdhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 123
    return-void
.end method

.method meta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 6
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 156
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 158
    :cond_15
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 159
    :cond_19
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 160
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .line 161
    .local v0, "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    const-string v1, "ilst"

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 162
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->ilst(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 166
    .end local v0    # "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    :cond_32
    return-void
.end method

.method moov(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 6
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 73
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 75
    :cond_15
    :goto_15
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 76
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .line 77
    .local v0, "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5a

    :cond_2b
    :goto_2b
    packed-switch v1, :pswitch_data_68

    goto :goto_15

    .line 79
    :pswitch_2f
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mvhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_15

    .line 77
    :sswitch_33
    const-string v3, "mvhd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v1, 0x0

    goto :goto_2b

    :sswitch_3d
    const-string v3, "trak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    goto :goto_2b

    :sswitch_47
    const-string v3, "udta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v1, 0x2

    goto :goto_2b

    .line 82
    :pswitch_51
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->trak(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_15

    .line 85
    :pswitch_55
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->udta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_15

    .line 91
    .end local v0    # "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    :cond_59
    return-void

    .line 77
    :sswitch_data_5a
    .sparse-switch
        0x335465 -> :sswitch_33
        0x367328 -> :sswitch_3d
        0x36b53c -> :sswitch_47
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_51
        :pswitch_55
    .end packed-switch
.end method

.method mvhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 14
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v10, 0x3e8

    .line 94
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 95
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 97
    :cond_18
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v1

    .line 98
    .local v1, "version":B
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 99
    if-ne v1, v7, :cond_4c

    const/16 v4, 0x10

    :goto_24
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    .line 100
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v0

    .line 101
    .local v0, "scale":I
    if-ne v1, v7, :cond_4f

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readLong()J

    move-result-wide v2

    .line 102
    .local v2, "units":J
    :goto_31
    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_55

    .line 103
    mul-long v4, v10, v2

    int-to-long v6, v0

    div-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    .line 107
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readIntegerFixedPoint()Ljava/math/BigDecimal;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->speed:Ljava/math/BigDecimal;

    .line 108
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShortFixedPoint()Ljava/math/BigDecimal;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->volume:Ljava/math/BigDecimal;

    .line 109
    return-void

    .line 99
    .end local v0    # "scale":I
    .end local v2    # "units":J
    :cond_4c
    const/16 v4, 0x8

    goto :goto_24

    .line 101
    .restart local v0    # "scale":I
    :cond_4f
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v4

    int-to-long v2, v4

    goto :goto_31

    .line 104
    .restart local v2    # "units":J
    :cond_55
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    mul-long v6, v10, v2

    int-to-long v8, v0

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-lez v4, :cond_3f

    .line 105
    sget-object v4, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mvhd: duration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-long v8, v10, v2

    int-to-long v10, v0

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method trak(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 5
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 113
    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 115
    :cond_15
    const-string v0, "mdia"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mdia(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 116
    return-void
.end method

.method udta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .registers 6
    .param p1, "atom"    # Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 143
    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 145
    :cond_15
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 146
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    .line 147
    .local v0, "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    const-string v1, "meta"

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 148
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->meta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    .line 152
    .end local v0    # "child":Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    :cond_2e
    return-void
.end method
