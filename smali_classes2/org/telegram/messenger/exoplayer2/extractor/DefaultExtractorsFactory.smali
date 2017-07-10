.class public final Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field private static defaultExtractorClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/extractor/Extractor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;

    monitor-enter v2

    .line 49
    :try_start_6
    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->defaultExtractorClasses:Ljava/util/List;

    if-nez v1, :cond_c5

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_c7

    .line 56
    .local v0, "extractorClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/telegram/messenger/exoplayer2/extractor/Extractor;>;>;"
    :try_start_f
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.mkv.MatroskaExtractor"

    .line 57
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_1e} :catch_e3
    .catchall {:try_start_f .. :try_end_1e} :catchall_c7

    .line 63
    :goto_1e
    :try_start_1e
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.mp4.FragmentedMp4Extractor"

    .line 64
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_2d} :catch_e0
    .catchall {:try_start_1e .. :try_end_2d} :catchall_c7

    .line 70
    :goto_2d
    :try_start_2d
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.mp4.Mp4Extractor"

    .line 71
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_3c} :catch_dd
    .catchall {:try_start_2d .. :try_end_3c} :catchall_c7

    .line 77
    :goto_3c
    :try_start_3c
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.mp3.Mp3Extractor"

    .line 78
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_4b} :catch_da
    .catchall {:try_start_3c .. :try_end_4b} :catchall_c7

    .line 84
    :goto_4b
    :try_start_4b
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.ts.AdtsExtractor"

    .line 85
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4b .. :try_end_5a} :catch_d8
    .catchall {:try_start_4b .. :try_end_5a} :catchall_c7

    .line 91
    :goto_5a
    :try_start_5a
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.ts.Ac3Extractor"

    .line 92
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5a .. :try_end_69} :catch_d6
    .catchall {:try_start_5a .. :try_end_69} :catchall_c7

    .line 98
    :goto_69
    :try_start_69
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.ts.TsExtractor"

    .line 99
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_69 .. :try_end_78} :catch_d4
    .catchall {:try_start_69 .. :try_end_78} :catchall_c7

    .line 105
    :goto_78
    :try_start_78
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.flv.FlvExtractor"

    .line 106
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catch Ljava/lang/ClassNotFoundException; {:try_start_78 .. :try_end_87} :catch_d2
    .catchall {:try_start_78 .. :try_end_87} :catchall_c7

    .line 112
    :goto_87
    :try_start_87
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.ogg.OggExtractor"

    .line 113
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/lang/ClassNotFoundException; {:try_start_87 .. :try_end_96} :catch_d0
    .catchall {:try_start_87 .. :try_end_96} :catchall_c7

    .line 119
    :goto_96
    :try_start_96
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.ts.PsExtractor"

    .line 120
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_96 .. :try_end_a5} :catch_ce
    .catchall {:try_start_96 .. :try_end_a5} :catchall_c7

    .line 126
    :goto_a5
    :try_start_a5
    const-string v1, "org.telegram.messenger.exoplayer2.extractor.wav.WavExtractor"

    .line 127
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a5 .. :try_end_b4} :catch_cc
    .catchall {:try_start_a5 .. :try_end_b4} :catchall_c7

    .line 133
    :goto_b4
    :try_start_b4
    const-string v1, "org.telegram.messenger.exoplayer2.ext.flac.FlacExtractor"

    .line 134
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b4 .. :try_end_c3} :catch_ca
    .catchall {:try_start_b4 .. :try_end_c3} :catchall_c7

    .line 139
    :goto_c3
    :try_start_c3
    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->defaultExtractorClasses:Ljava/util/List;

    .line 141
    .end local v0    # "extractorClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/telegram/messenger/exoplayer2/extractor/Extractor;>;>;"
    :cond_c5
    monitor-exit v2

    .line 142
    return-void

    .line 141
    :catchall_c7
    move-exception v1

    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_c7

    throw v1

    .line 136
    .restart local v0    # "extractorClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/telegram/messenger/exoplayer2/extractor/Extractor;>;>;"
    :catch_ca
    move-exception v1

    goto :goto_c3

    .line 129
    :catch_cc
    move-exception v1

    goto :goto_b4

    .line 122
    :catch_ce
    move-exception v1

    goto :goto_a5

    .line 115
    :catch_d0
    move-exception v1

    goto :goto_96

    .line 108
    :catch_d2
    move-exception v1

    goto :goto_87

    .line 101
    :catch_d4
    move-exception v1

    goto :goto_78

    .line 94
    :catch_d6
    move-exception v1

    goto :goto_69

    .line 87
    :catch_d8
    move-exception v1

    goto :goto_5a

    .line 80
    :catch_da
    move-exception v1

    goto/16 :goto_4b

    .line 73
    :catch_dd
    move-exception v1

    goto/16 :goto_3c

    .line 66
    :catch_e0
    move-exception v1

    goto/16 :goto_2d

    .line 59
    :catch_e3
    move-exception v1

    goto/16 :goto_1e
.end method


# virtual methods
.method public createExtractors()[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .registers 6

    .prologue
    .line 146
    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->defaultExtractorClasses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 147
    .local v1, "extractors":[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_32

    .line 149
    :try_start_c
    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;->defaultExtractorClasses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    aput-object v3, v1, v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_29

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 150
    :catch_29
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected error creating default extractor"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_32
    return-object v1
.end method
