.class public Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updatePrivacy"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12829
    const v0, -0x11c4d8d6

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12828
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12833
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PrivacyKey;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    .line 12834
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 12835
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_2b

    .line 12836
    if-eqz p2, :cond_3c

    .line 12837
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 12841
    :cond_2b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 12842
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_30
    if-ge v0, v1, :cond_3c

    .line 12843
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    move-result-object v3

    .line 12844
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    if-nez v3, :cond_3d

    .line 12849
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    :cond_3c
    return-void

    .line 12847
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    :cond_3d
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12842
    add-int/lit8 v0, v0, 0x1

    goto :goto_30
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12852
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12853
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PrivacyKey;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12854
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12855
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 12856
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12857
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    if-ge v0, v1, :cond_2a

    .line 12858
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12857
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 12860
    :cond_2a
    return-void
.end method
