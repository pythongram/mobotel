.class Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;
.super Ljava/lang/Object;
.source "XtraBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XtraValue"
.end annotation


# instance fields
.field public fileTimeValue:Ljava/util/Date;

.field public longValue:J

.field public nonParsedValue:[B

.field public stringValue:Ljava/lang/String;

.field public type:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .param p1, "longVal"    # J

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const/16 v0, 0x13

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    .line 397
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->longValue:J

    .line 398
    return-void
.end method

.method synthetic constructor <init>(JLcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;)V
    .registers 5

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;-><init>(J)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;)V
    .registers 2

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/16 v0, 0x8

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    .line 392
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->stringValue:Ljava/lang/String;

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;)V
    .registers 3

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Date;)V
    .registers 3
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/16 v0, 0x15

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    .line 402
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->fileTimeValue:Ljava/util/Date;

    .line 403
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Date;Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;)V
    .registers 3

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$1(Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;Ljava/nio/ByteBuffer;)V
    .registers 2

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->parse(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$2(Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;Ljava/nio/ByteBuffer;)V
    .registers 2

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->getContent(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$3(Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;)I
    .registers 2

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->getContentSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getContent(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 446
    :try_start_0
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->getContentSize()I

    move-result v0

    .line 447
    .local v0, "length":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 448
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 449
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 450
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    sparse-switch v1, :sswitch_data_44

    .line 462
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->nonParsedValue:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_28

    .line 466
    :goto_1c
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 468
    return-void

    .line 452
    :sswitch_22
    :try_start_22
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->stringValue:Ljava/lang/String;

    # invokes: Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox;->writeUtf16String(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox;->access$4(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    goto :goto_1c

    .line 465
    .end local v0    # "length":I
    :catchall_28
    move-exception v1

    .line 466
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 467
    throw v1

    .line 455
    .restart local v0    # "length":I
    :sswitch_2f
    :try_start_2f
    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->longValue:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_1c

    .line 458
    :sswitch_35
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->fileTimeValue:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    # invokes: Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox;->millisToFiletime(J)J
    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox;->access$5(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_28

    goto :goto_1c

    .line 450
    nop

    :sswitch_data_44
    .sparse-switch
        0x8 -> :sswitch_22
        0x13 -> :sswitch_2f
        0x15 -> :sswitch_35
    .end sparse-switch
.end method

.method private getContentSize()I
    .registers 3

    .prologue
    .line 474
    const/4 v0, 0x6

    .line 476
    .local v0, "size":I
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    sparse-switch v1, :sswitch_data_1a

    .line 486
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->nonParsedValue:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 489
    :goto_a
    return v0

    .line 478
    :sswitch_b
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 479
    goto :goto_a

    .line 482
    :sswitch_17
    add-int/lit8 v0, v0, 0x8

    .line 483
    goto :goto_a

    .line 476
    :sswitch_data_1a
    .sparse-switch
        0x8 -> :sswitch_b
        0x13 -> :sswitch_17
        0x15 -> :sswitch_17
    .end sparse-switch
.end method

.method private getValueAsObject()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 406
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    sparse-switch v0, :sswitch_data_16

    .line 415
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->nonParsedValue:[B

    :goto_7
    return-object v0

    .line 408
    :sswitch_8
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->stringValue:Ljava/lang/String;

    goto :goto_7

    .line 410
    :sswitch_b
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->longValue:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_7

    .line 412
    :sswitch_13
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->fileTimeValue:Ljava/util/Date;

    goto :goto_7

    .line 406
    :sswitch_data_16
    .sparse-switch
        0x8 -> :sswitch_8
        0x13 -> :sswitch_b
        0x15 -> :sswitch_13
    .end sparse-switch
.end method

.method private parse(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 420
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/lit8 v0, v1, -0x6

    .line 421
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    .line 422
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 423
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    sparse-switch v1, :sswitch_data_44

    .line 435
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->nonParsedValue:[B

    .line 436
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->nonParsedValue:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 440
    :goto_1f
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 442
    return-void

    .line 425
    :sswitch_25
    # invokes: Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox;->readUtf16String(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox;->access$2(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->stringValue:Ljava/lang/String;

    goto :goto_1f

    .line 428
    :sswitch_2c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->longValue:J

    goto :goto_1f

    .line 431
    :sswitch_33
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    # invokes: Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox;->filetimeToMillis(J)J
    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox;->access$3(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->fileTimeValue:Ljava/util/Date;

    goto :goto_1f

    .line 423
    nop

    :sswitch_data_44
    .sparse-switch
        0x8 -> :sswitch_25
        0x13 -> :sswitch_2c
        0x15 -> :sswitch_33
    .end sparse-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 493
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->type:I

    sparse-switch v0, :sswitch_data_46

    .line 502
    const-string v0, "[GUID](nonParsed)"

    :goto_7
    return-object v0

    .line 495
    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[string]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 497
    :sswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[long]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->longValue:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 499
    :sswitch_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[filetime]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/microsoft/XtraBox$XtraValue;->fileTimeValue:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 493
    :sswitch_data_46
    .sparse-switch
        0x8 -> :sswitch_8
        0x13 -> :sswitch_1a
        0x15 -> :sswitch_30
    .end sparse-switch
.end method
