.class public Lorg/telegram/tgnet/TLRPC$MessagesFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagesFilter"
.end annotation


# instance fields
.field public flags:I

.field public missed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17861
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 17866
    const/4 v0, 0x0

    .line 17867
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    sparse-switch p1, :sswitch_data_6c

    .line 17905
    :goto_4
    if-nez v0, :cond_66

    if-eqz p2, :cond_66

    .line 17906
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in MessagesFilter"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17869
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGif;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterGif;-><init>()V

    .line 17870
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17872
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    .line 17873
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17875
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    .line 17876
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17878
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;-><init>()V

    .line 17879
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17881
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    .line 17882
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17884
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    .line 17885
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17887
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    .line 17888
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17890
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideoDocuments;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideoDocuments;-><init>()V

    .line 17891
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17893
    :sswitch_4e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;-><init>()V

    .line 17894
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17896
    :sswitch_54
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;-><init>()V

    .line 17897
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17899
    :sswitch_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;-><init>()V

    .line 17900
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17902
    :sswitch_60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessagesFilter;
    goto :goto_4

    .line 17908
    :cond_66
    if-eqz v0, :cond_6b

    .line 17909
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessagesFilter;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 17911
    :cond_6b
    return-object v0

    .line 17867
    :sswitch_data_6c
    .sparse-switch
        -0x7f366898 -> :sswitch_5a
        -0x69f65ae4 -> :sswitch_30
        -0x61220e78 -> :sswitch_3c
        -0x603ff19b -> :sswitch_54
        -0x26a18c45 -> :sswitch_48
        -0x379a79 -> :sswitch_1e
        0x3751b49e -> :sswitch_24
        0x3a20ecb8 -> :sswitch_2a
        0x50f5c392 -> :sswitch_4e
        0x56e9f0e4 -> :sswitch_42
        0x57e2f66c -> :sswitch_60
        0x7ef0dd87 -> :sswitch_36
    .end sparse-switch
.end method
