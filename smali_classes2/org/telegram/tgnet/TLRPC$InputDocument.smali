.class public Lorg/telegram/tgnet/TLRPC$InputDocument;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputDocument"
.end annotation


# instance fields
.field public access_hash:J

.field public id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9588
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9593
    const/4 v0, 0x0

    .line 9594
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputDocument;
    sparse-switch p1, :sswitch_data_30

    .line 9602
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 9603
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputDocument"

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

    .line 9596
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputDocument;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentEmpty;-><init>()V

    .line 9597
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputDocument;
    goto :goto_4

    .line 9599
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputDocument;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputDocument;
    goto :goto_4

    .line 9605
    :cond_2a
    if-eqz v0, :cond_2f

    .line 9606
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 9608
    :cond_2f
    return-object v0

    .line 9594
    :sswitch_data_30
    .sparse-switch
        0x18798952 -> :sswitch_24
        0x72f0eaae -> :sswitch_1e
    .end sparse-switch
.end method
