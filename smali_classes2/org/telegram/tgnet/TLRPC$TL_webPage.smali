.class public Lorg/telegram/tgnet/TLRPC$TL_webPage;
.super Lorg/telegram/tgnet/TLRPC$WebPage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPage"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6152
    const v0, 0x5f07b4bc

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6151
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 6156
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    .line 6157
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->id:J

    .line 6158
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->url:Ljava/lang/String;

    .line 6159
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->display_url:Ljava/lang/String;

    .line 6160
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->hash:I

    .line 6161
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    .line 6162
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->type:Ljava/lang/String;

    .line 6164
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36

    .line 6165
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->site_name:Ljava/lang/String;

    .line 6167
    :cond_36
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_42

    .line 6168
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->title:Ljava/lang/String;

    .line 6170
    :cond_42
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4e

    .line 6171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->description:Ljava/lang/String;

    .line 6173
    :cond_4e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5e

    .line 6174
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 6176
    :cond_5e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6a

    .line 6177
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_url:Ljava/lang/String;

    .line 6179
    :cond_6a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_76

    .line 6180
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_type:Ljava/lang/String;

    .line 6182
    :cond_76
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_82

    .line 6183
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_width:I

    .line 6185
    :cond_82
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8e

    .line 6186
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_height:I

    .line 6188
    :cond_8e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9a

    .line 6189
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->duration:I

    .line 6191
    :cond_9a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a6

    .line 6192
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->author:Ljava/lang/String;

    .line 6194
    :cond_a6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b6

    .line 6195
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6197
    :cond_b6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c6

    .line 6198
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Page;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Page;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    .line 6200
    :cond_c6
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6203
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6204
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6205
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 6206
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6207
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6208
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6209
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_29

    .line 6210
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6212
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_34

    .line 6213
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6215
    :cond_34
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3f

    .line 6216
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6218
    :cond_3f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4a

    .line 6219
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6221
    :cond_4a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_55

    .line 6222
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6224
    :cond_55
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_60

    .line 6225
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6227
    :cond_60
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6b

    .line 6228
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6230
    :cond_6b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_76

    .line 6231
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6233
    :cond_76
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_81

    .line 6234
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6236
    :cond_81
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8c

    .line 6237
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6239
    :cond_8c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_97

    .line 6240
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6242
    :cond_97
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a2

    .line 6243
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6245
    :cond_a2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_ad

    .line 6246
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Page;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6248
    :cond_ad
    return-void
.end method
