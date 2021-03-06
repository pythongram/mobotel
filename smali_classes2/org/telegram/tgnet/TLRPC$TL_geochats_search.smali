.class public Lorg/telegram/tgnet/TLRPC$TL_geochats_search;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geochats_search"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

.field public limit:I

.field public max_date:I

.field public max_id:I

.field public min_date:I

.field public offset:I

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;

.field public q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21909
    const v0, -0x30323bb3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21908
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
    .line 21921
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$geochats_Messages;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21925
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21926
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21927
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21928
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessagesFilter;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21929
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->min_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21930
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->max_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21931
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21932
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21933
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_search;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21934
    return-void
.end method
