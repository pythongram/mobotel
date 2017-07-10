.class public Lorg/telegram/tgnet/TLRPC$TL_document_layer53;
.super Lorg/telegram/tgnet/TLRPC$TL_document;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_document_layer53"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9943
    const v0, -0x65c60b1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9942
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 9947
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->id:J

    .line 9948
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->access_hash:J

    .line 9949
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->date:I

    .line 9950
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->mime_type:Ljava/lang/String;

    .line 9951
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->size:I

    .line 9952
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 9953
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->dc_id:I

    .line 9954
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 9955
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_4f

    .line 9956
    if-eqz p2, :cond_60

    .line 9957
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

    .line 9961
    :cond_4f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 9962
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_54
    if-ge v0, v1, :cond_60

    .line 9963
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-result-object v3

    .line 9964
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    if-nez v3, :cond_61

    .line 9969
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_60
    return-void

    .line 9967
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_61
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9962
    add-int/lit8 v0, v0, 0x1

    goto :goto_54
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 9972
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9973
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 9974
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->access_hash:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 9975
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9976
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9977
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->size:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9978
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9979
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->dc_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9980
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9981
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9982
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9983
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_38
    if-ge v0, v1, :cond_48

    .line 9984
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_document_layer53;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9983
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 9986
    :cond_48
    return-void
.end method
