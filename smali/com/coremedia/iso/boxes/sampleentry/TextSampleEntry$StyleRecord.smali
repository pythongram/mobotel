.class public Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;
.super Ljava/lang/Object;
.source "TextSampleEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleRecord"
.end annotation


# instance fields
.field endChar:I

.field faceStyleFlags:I

.field fontId:I

.field fontSize:I

.field startChar:I

.field textColor:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    .line 318
    return-void

    .line 315
    :array_c
    .array-data 4
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method public constructor <init>(IIIII[I)V
    .registers 8
    .param p1, "startChar"    # I
    .param p2, "endChar"    # I
    .param p3, "fontId"    # I
    .param p4, "faceStyleFlags"    # I
    .param p5, "fontSize"    # I
    .param p6, "textColor"    # [I

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    .line 321
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->startChar:I

    .line 322
    iput p2, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->endChar:I

    .line 323
    iput p3, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontId:I

    .line 324
    iput p4, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->faceStyleFlags:I

    .line 325
    iput p5, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontSize:I

    .line 326
    iput-object p6, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    .line 327
    return-void

    .line 315
    :array_18
    .array-data 4
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    if-ne p0, p1, :cond_5

    .line 369
    :cond_4
    :goto_4
    return v1

    .line 358
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 360
    check-cast v0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    .line 362
    .local v0, "that":Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;
    iget v3, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->endChar:I

    iget v4, v0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->endChar:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 363
    :cond_1e
    iget v3, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->faceStyleFlags:I

    iget v4, v0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->faceStyleFlags:I

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    .line 364
    :cond_26
    iget v3, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontId:I

    iget v4, v0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontId:I

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_4

    .line 365
    :cond_2e
    iget v3, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontSize:I

    iget v4, v0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontSize:I

    if-eq v3, v4, :cond_36

    move v1, v2

    goto :goto_4

    .line 366
    :cond_36
    iget v3, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->startChar:I

    iget v4, v0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->startChar:I

    if-eq v3, v4, :cond_3e

    move v1, v2

    goto :goto_4

    .line 367
    :cond_3e
    iget-object v3, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    iget-object v4, v0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 344
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->startChar:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 345
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->endChar:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 346
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontId:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 347
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->faceStyleFlags:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 348
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 349
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 350
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 351
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 352
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 353
    return-void
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 384
    const/16 v0, 0xc

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 374
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->startChar:I

    .line 375
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->endChar:I

    add-int v0, v1, v2

    .line 376
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontId:I

    add-int v0, v1, v2

    .line 377
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->faceStyleFlags:I

    add-int v0, v1, v2

    .line 378
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontSize:I

    add-int v0, v1, v2

    .line 379
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    :goto_26
    add-int v0, v2, v1

    .line 380
    return v0

    .line 379
    :cond_29
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 330
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->startChar:I

    .line 331
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->endChar:I

    .line 332
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontId:I

    .line 333
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->faceStyleFlags:I

    .line 334
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->fontSize:I

    .line 335
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    .line 336
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 337
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 338
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 339
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->textColor:[I

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 340
    return-void
.end method
