.class public Lorg/telegram/tgnet/TLRPC$TL_contactStatus;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contactStatus"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public status:Lorg/telegram/tgnet/TLRPC$UserStatus;

.field public user_id:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1110
    const v0, -0x2c97f39f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1109
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contactStatus;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1116
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 1117
    if-eqz p2, :cond_1c

    .line 1118
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_contactStatus"

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

    .line 1120
    :cond_1c
    const/4 v0, 0x0

    .line 1125
    :goto_1d
    return-object v0

    .line 1123
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;-><init>()V

    .line 1124
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_contactStatus;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 1129
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->user_id:I

    .line 1130
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 1131
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1134
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1135
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1136
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1137
    return-void
.end method
