.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getArchivedStickers"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public limit:I

.field public masks:Z

.field public offset_id:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23266
    const v0, 0x57f17692

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23265
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23274
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23278
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23279
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->masks:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->flags:I

    .line 23280
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23281
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->offset_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 23282
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23283
    return-void

    .line 23279
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d
.end method
