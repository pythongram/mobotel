.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockEmbed"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10208
    const v0, -0x321dff2f    # -4.7396304E8f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10207
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10212
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    .line 10213
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_54

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->full_width:Z

    .line 10214
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_56

    :goto_17
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->allow_scrolling:Z

    .line 10215
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_25

    .line 10216
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    .line 10218
    :cond_25
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_31

    .line 10219
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->html:Ljava/lang/String;

    .line 10221
    :cond_31
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3d

    .line 10222
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->poster_photo_id:J

    .line 10224
    :cond_3d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->w:I

    .line 10225
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->h:I

    .line 10226
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 10227
    return-void

    :cond_54
    move v0, v2

    .line 10213
    goto :goto_f

    :cond_56
    move v1, v2

    .line 10214
    goto :goto_17
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 10230
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10231
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->full_width:Z

    if-eqz v0, :cond_4f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    .line 10232
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->allow_scrolling:Z

    if-eqz v0, :cond_54

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    .line 10233
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10234
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_29

    .line 10235
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10237
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_34

    .line 10238
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->html:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10240
    :cond_34
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3f

    .line 10241
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->poster_photo_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 10243
    :cond_3f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10244
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10245
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$RichText;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10246
    return-void

    .line 10231
    :cond_4f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 10232
    :cond_54
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_17
.end method
