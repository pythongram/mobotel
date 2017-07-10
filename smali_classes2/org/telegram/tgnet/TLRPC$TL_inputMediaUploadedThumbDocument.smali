.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMediaUploadedThumbDocument"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10928
    const v0, 0x50d88cae

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10927
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 10932
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->flags:I

    .line 10933
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 10934
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 10935
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->mime_type:Ljava/lang/String;

    .line 10936
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 10937
    .local v2, "magic":I
    if-eq v2, v5, :cond_41

    .line 10938
    if-eqz p2, :cond_52

    .line 10939
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10943
    :cond_41
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 10944
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_46
    if-ge v0, v1, :cond_5b

    .line 10945
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move-result-object v3

    .line 10946
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    if-nez v3, :cond_53

    .line 10969
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_52
    return-void

    .line 10949
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_53
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10944
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 10951
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_5b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->caption:Ljava/lang/String;

    .line 10952
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_52

    .line 10953
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 10954
    if-eq v2, v5, :cond_83

    .line 10955
    if-eqz p2, :cond_52

    .line 10956
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10960
    :cond_83
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 10961
    const/4 v0, 0x0

    :goto_88
    if-ge v0, v1, :cond_52

    .line 10962
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v3

    .line 10963
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$InputDocument;
    if-eqz v3, :cond_52

    .line 10966
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10961
    add-int/lit8 v0, v0, 0x1

    goto :goto_88
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 10972
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10973
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10974
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputFile;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10975
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputFile;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10976
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10977
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10978
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10979
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10980
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_29
    if-ge v0, v1, :cond_39

    .line 10981
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10980
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 10983
    :cond_39
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->caption:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10984
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_61

    .line 10985
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10986
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10987
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10988
    const/4 v0, 0x0

    :goto_51
    if-ge v0, v1, :cond_61

    .line 10989
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputDocument;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10988
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 10992
    :cond_61
    return-void
.end method
