.class final Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory$1;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDecoderClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    if-nez p1, :cond_4

    .line 110
    :goto_3
    return-object v1

    .line 93
    :cond_4
    const/4 v2, -0x1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_78

    :cond_c
    :goto_c
    packed-switch v2, :pswitch_data_92

    goto :goto_3

    .line 95
    :pswitch_10
    const-string v2, "org.telegram.messenger.exoplayer2.text.webvtt.WebvttDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_3

    .line 93
    :sswitch_17
    const-string v3, "text/vtt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x0

    goto :goto_c

    :sswitch_21
    const-string v3, "application/ttml+xml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x1

    goto :goto_c

    :sswitch_2b
    const-string v3, "application/x-mp4vtt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x2

    goto :goto_c

    :sswitch_35
    const-string v3, "application/x-subrip"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x3

    goto :goto_c

    :sswitch_3f
    const-string v3, "application/x-quicktime-tx3g"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x4

    goto :goto_c

    :sswitch_49
    const-string v3, "application/cea-608"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x5

    goto :goto_c

    .line 97
    :pswitch_53
    const-string v2, "org.telegram.messenger.exoplayer2.text.ttml.TtmlDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_3

    .line 99
    :pswitch_5a
    const-string v2, "org.telegram.messenger.exoplayer2.text.webvtt.Mp4WebvttDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_3

    .line 101
    :pswitch_61
    const-string v2, "org.telegram.messenger.exoplayer2.text.subrip.SubripDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_3

    .line 103
    :pswitch_68
    const-string v2, "org.telegram.messenger.exoplayer2.text.tx3g.Tx3gDecoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_3

    .line 105
    :pswitch_6f
    const-string v2, "org.telegram.messenger.exoplayer2.text.cea.Cea608Decoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_74} :catch_76

    move-result-object v1

    goto :goto_3

    .line 109
    :catch_76
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_3

    .line 93
    :sswitch_data_78
    .sparse-switch
        -0x3be2f26c -> :sswitch_17
        0x2935f49f -> :sswitch_3f
        0x58deb9b9 -> :sswitch_2b
        0x5d578071 -> :sswitch_49
        0x63771bad -> :sswitch_35
        0x64f8068a -> :sswitch_21
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_10
        :pswitch_53
        :pswitch_5a
        :pswitch_61
        :pswitch_68
        :pswitch_6f
    .end packed-switch
.end method


# virtual methods
.method public createDecoder(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;
    .registers 8
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 73
    :try_start_0
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory$1;->getDecoderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_19

    .line 75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempted to create decoder for unsupported format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_10

    .line 83
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_10
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error instantiating decoder"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_19
    :try_start_19
    const-class v2, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;

    if-ne v0, v2, :cond_42

    .line 78
    const-class v2, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    .line 81
    :goto_41
    return-object v2

    :cond_42
    const-class v2, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_58} :catch_10

    goto :goto_41
.end method

.method public supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)Z
    .registers 3
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 67
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory$1;->getDecoderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
