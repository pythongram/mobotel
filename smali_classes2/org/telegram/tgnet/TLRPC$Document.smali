.class public Lorg/telegram/tgnet/TLRPC$Document;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Document"
.end annotation


# instance fields
.field public access_hash:J

.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$DocumentAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public caption:Ljava/lang/String;

.field public date:I

.field public dc_id:I

.field public file_name:Ljava/lang/String;

.field public id:J

.field public iv:[B

.field public key:[B

.field public mime_type:Ljava/lang/String;

.field public size:I

.field public thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public user_id:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9708
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 9722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9725
    const/4 v0, 0x0

    .line 9726
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Document;
    sparse-switch p1, :sswitch_data_48

    .line 9746
    :goto_4
    if-nez v0, :cond_42

    if-eqz p2, :cond_42

    .line 9747
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in Document"

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

    .line 9728
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 9729
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_4

    .line 9731
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted_old;-><init>()V

    .line 9732
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_4

    .line 9734
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_document_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_document_old;-><init>()V

    .line 9735
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_4

    .line 9737
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;-><init>()V

    .line 9738
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_4

    .line 9740
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    .line 9741
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_4

    .line 9743
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_4

    .line 9749
    :cond_42
    if-eqz v0, :cond_47

    .line 9750
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 9752
    :cond_47
    return-object v0

    .line 9726
    :sswitch_data_48
    .sparse-switch
        -0x78dcd439 -> :sswitch_1e
        -0x61039cda -> :sswitch_2a
        -0x65c60b1 -> :sswitch_3c
        0x36f8c871 -> :sswitch_30
        0x55555556 -> :sswitch_24
        0x55555558 -> :sswitch_36
    .end sparse-switch
.end method
