.class public Lorg/telegram/tgnet/TLRPC$WebPage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebPage"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public cached_page:Lorg/telegram/tgnet/TLRPC$Page;

.field public date:I

.field public description:Ljava/lang/String;

.field public display_url:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public duration:I

.field public embed_height:I

.field public embed_type:Ljava/lang/String;

.field public embed_url:Ljava/lang/String;

.field public embed_width:I

.field public flags:I

.field public hash:I

.field public id:J

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public site_name:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6095
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebPage;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 6117
    const/4 v0, 0x0

    .line 6118
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    sparse-switch p1, :sswitch_data_4e

    .line 6141
    :goto_4
    if-nez v0, :cond_48

    if-eqz p2, :cond_48

    .line 6142
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in WebPage"

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

    .line 6120
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    .line 6121
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_4

    .line 6123
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;-><init>()V

    .line 6124
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_4

    .line 6126
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;-><init>()V

    .line 6127
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_4

    .line 6129
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    .line 6130
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_4

    .line 6132
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;-><init>()V

    .line 6133
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_4

    .line 6135
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;-><init>()V

    .line 6136
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_4

    .line 6138
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$WebPage;
    goto :goto_4

    .line 6144
    :cond_48
    if-eqz v0, :cond_4d

    .line 6145
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$WebPage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 6147
    :cond_4d
    return-object v0

    .line 6118
    :sswitch_data_4e
    .sparse-switch
        -0x7a7b6b8d -> :sswitch_3c
        -0x5ce15f4b -> :sswitch_24
        -0x3a7925e4 -> :sswitch_36
        -0x357df129 -> :sswitch_42
        -0x2be5ae99 -> :sswitch_30
        -0x14eb8818 -> :sswitch_2a
        0x5f07b4bc -> :sswitch_1e
    .end sparse-switch
.end method
