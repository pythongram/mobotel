.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;
.super Lorg/telegram/tgnet/TLRPC$BotInlineResult;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botInlineResult"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3558
    const v0, -0x64145147

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3557
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInlineResult;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 3562
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    .line 3563
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->id:Ljava/lang/String;

    .line 3564
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->type:Ljava/lang/String;

    .line 3565
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1e

    .line 3566
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->title:Ljava/lang/String;

    .line 3568
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2a

    .line 3569
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->description:Ljava/lang/String;

    .line 3571
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_36

    .line 3572
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->url:Ljava/lang/String;

    .line 3574
    :cond_36
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_42

    .line 3575
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->thumb_url:Ljava/lang/String;

    .line 3577
    :cond_42
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4e

    .line 3578
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->content_url:Ljava/lang/String;

    .line 3580
    :cond_4e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5a

    .line 3581
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->content_type:Ljava/lang/String;

    .line 3583
    :cond_5a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_66

    .line 3584
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->w:I

    .line 3586
    :cond_66
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_72

    .line 3587
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->h:I

    .line 3589
    :cond_72
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7e

    .line 3590
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->duration:I

    .line 3592
    :cond_7e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    .line 3593
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3596
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3597
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3598
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3599
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3600
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1f

    .line 3601
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3603
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2a

    .line 3604
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3606
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_35

    .line 3607
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3609
    :cond_35
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_40

    .line 3610
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->thumb_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3612
    :cond_40
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4b

    .line 3613
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3615
    :cond_4b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_56

    .line 3616
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->content_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3618
    :cond_56
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_61

    .line 3619
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3621
    :cond_61
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6c

    .line 3622
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3624
    :cond_6c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_77

    .line 3625
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3627
    :cond_77
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3628
    return-void
.end method
