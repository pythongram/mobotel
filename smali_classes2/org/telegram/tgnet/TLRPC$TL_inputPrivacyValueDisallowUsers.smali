.class public Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;
.super Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputPrivacyValueDisallowUsers"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10666
    const v0, -0x6feefb99

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10665
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 10670
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 10671
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_21

    .line 10672
    if-eqz p2, :cond_32

    .line 10673
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

    .line 10677
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 10678
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v1, :cond_32

    .line 10679
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$InputUser;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    .line 10680
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-nez v3, :cond_33

    .line 10685
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_32
    return-void

    .line 10683
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_33
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10678
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 10688
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10689
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10690
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10691
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10692
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 10693
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10692
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 10695
    :cond_25
    return-void
.end method
