.class public Lorg/joda/time/format/DateTimeParserBucket;
.super Ljava/lang/Object;
.source "DateTimeParserBucket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/DateTimeParserBucket$SavedField;,
        Lorg/joda/time/format/DateTimeParserBucket$SavedState;
    }
.end annotation


# instance fields
.field private final iChrono:Lorg/joda/time/Chronology;

.field private iDefaultYear:I

.field private iLocale:Ljava/util/Locale;

.field private final iMillis:J

.field private iOffset:Ljava/lang/Integer;

.field private iPivotYear:Ljava/lang/Integer;

.field private iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

.field private iSavedFieldsCount:I

.field private iSavedFieldsShared:Z

.field private iSavedState:Ljava/lang/Object;

.field private iZone:Lorg/joda/time/DateTimeZone;


# direct methods
.method public constructor <init>(JLorg/joda/time/Chronology;Ljava/util/Locale;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    const/4 v6, 0x0

    const/16 v7, 0x7d0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/format/DateTimeParserBucket;-><init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    const/16 v7, 0x7d0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/format/DateTimeParserBucket;-><init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V
    .registers 10

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 120
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 121
    iput-wide p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iMillis:J

    .line 122
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iZone:Lorg/joda/time/DateTimeZone;

    .line 123
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iChrono:Lorg/joda/time/Chronology;

    .line 124
    if-nez p4, :cond_21

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    :cond_21
    iput-object p4, p0, Lorg/joda/time/format/DateTimeParserBucket;->iLocale:Ljava/util/Locale;

    .line 125
    iput-object p5, p0, Lorg/joda/time/format/DateTimeParserBucket;->iPivotYear:Ljava/lang/Integer;

    .line 126
    iput p6, p0, Lorg/joda/time/format/DateTimeParserBucket;->iDefaultYear:I

    .line 127
    return-void
.end method

.method static synthetic access$000(Lorg/joda/time/format/DateTimeParserBucket;)Lorg/joda/time/DateTimeZone;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iZone:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method static synthetic access$002(Lorg/joda/time/format/DateTimeParserBucket;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iZone:Lorg/joda/time/DateTimeZone;

    return-object p1
.end method

.method static synthetic access$100(Lorg/joda/time/format/DateTimeParserBucket;)Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$102(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iOffset:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lorg/joda/time/format/DateTimeParserBucket;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    return-object v0
.end method

.method static synthetic access$202(Lorg/joda/time/format/DateTimeParserBucket;[Lorg/joda/time/format/DateTimeParserBucket$SavedField;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    return-object p1
.end method

.method static synthetic access$300(Lorg/joda/time/format/DateTimeParserBucket;)I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsCount:I

    return v0
.end method

.method static synthetic access$302(Lorg/joda/time/format/DateTimeParserBucket;I)I
    .registers 2

    .prologue
    .line 55
    iput p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsCount:I

    return p1
.end method

.method static synthetic access$402(Lorg/joda/time/format/DateTimeParserBucket;Z)Z
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsShared:Z

    return p1
.end method

.method static compareReverse(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I
    .registers 3

    .prologue
    .line 511
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v0

    if-nez v0, :cond_14

    .line 512
    :cond_8
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v0

    if-nez v0, :cond_12

    .line 513
    :cond_10
    const/4 v0, 0x0

    .line 520
    :goto_11
    return v0

    .line 515
    :cond_12
    const/4 v0, -0x1

    goto :goto_11

    .line 517
    :cond_14
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 518
    :cond_1c
    const/4 v0, 0x1

    goto :goto_11

    .line 520
    :cond_1e
    invoke-virtual {p0, p1}, Lorg/joda/time/DurationField;->compareTo(Ljava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    goto :goto_11
.end method

.method private saveField(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 261
    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 262
    iget v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsCount:I

    .line 264
    array-length v0, v1

    if-eq v2, v0, :cond_c

    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsShared:Z

    if-eqz v0, :cond_26

    .line 266
    :cond_c
    array-length v0, v1

    if-ne v2, v0, :cond_24

    mul-int/lit8 v0, v2, 0x2

    :goto_11
    new-array v0, v0, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 268
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 270
    iput-boolean v3, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsShared:Z

    .line 273
    :goto_1a
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedState:Ljava/lang/Object;

    .line 274
    aput-object p1, v0, v2

    .line 275
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsCount:I

    .line 276
    return-void

    .line 266
    :cond_24
    array-length v0, v1

    goto :goto_11

    :cond_26
    move-object v0, v1

    goto :goto_1a
.end method

.method private static sort([Lorg/joda/time/format/DateTimeParserBucket$SavedField;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 416
    const/16 v0, 0xa

    if-le p1, v0, :cond_b

    .line 417
    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 427
    :cond_8
    return-void

    .line 419
    :cond_9
    add-int/lit8 v1, v1, 0x1

    :cond_b
    if-ge v1, p1, :cond_8

    move v0, v1

    .line 420
    :goto_e
    if-lez v0, :cond_9

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->compareTo(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)I

    move-result v2

    if-lez v2, :cond_9

    .line 421
    aget-object v2, p0, v0

    .line 422
    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    aput-object v3, p0, v0

    .line 423
    add-int/lit8 v3, v0, -0x1

    aput-object v2, p0, v3

    .line 420
    add-int/lit8 v0, v0, -0x1

    goto :goto_e
.end method


# virtual methods
.method public computeMillis()J
    .registers 3

    .prologue
    .line 318
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/format/DateTimeParserBucket;->computeMillis(ZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeMillis(Z)J
    .registers 4

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->computeMillis(ZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeMillis(ZLjava/lang/String;)J
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 344
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 345
    iget v6, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsCount:I

    .line 346
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsShared:Z

    if-eqz v1, :cond_17

    .line 347
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    invoke-virtual {v0}, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    check-cast v0, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFields:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 348
    iput-boolean v4, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedFieldsShared:Z

    .line 350
    :cond_17
    invoke-static {v0, v6}, Lorg/joda/time/format/DateTimeParserBucket;->sort([Lorg/joda/time/format/DateTimeParserBucket$SavedField;I)V

    .line 351
    if-lez v6, :cond_52

    .line 353
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->iChrono:Lorg/joda/time/Chronology;

    invoke-virtual {v1, v2}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v1

    .line 354
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    iget-object v3, p0, Lorg/joda/time/format/DateTimeParserBucket;->iChrono:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v2

    .line 355
    aget-object v3, v0, v4

    iget-object v3, v3, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v3}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v3

    .line 356
    invoke-static {v3, v1}, Lorg/joda/time/format/DateTimeParserBucket;->compareReverse(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I

    move-result v1

    if-ltz v1, :cond_52

    invoke-static {v3, v2}, Lorg/joda/time/format/DateTimeParserBucket;->compareReverse(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I

    move-result v1

    if-gtz v1, :cond_52

    .line 357
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iDefaultYear:I

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    .line 358
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->computeMillis(ZLjava/lang/String;)J

    move-result-wide v0

    .line 394
    :cond_51
    :goto_51
    return-wide v0

    .line 362
    :cond_52
    iget-wide v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->iMillis:J

    move v1, v4

    .line 364
    :goto_55
    if-ge v1, v6, :cond_60

    .line 365
    :try_start_57
    aget-object v5, v0, v1

    invoke-virtual {v5, v2, v3, p1}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->set(JZ)J

    move-result-wide v2

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 367
    :cond_60
    if-eqz p1, :cond_96

    move v5, v4

    .line 368
    :goto_63
    if-ge v5, v6, :cond_96

    .line 369
    aget-object v7, v0, v5

    add-int/lit8 v1, v6, -0x1

    if-ne v5, v1, :cond_74

    const/4 v1, 0x1

    :goto_6c
    invoke-virtual {v7, v2, v3, v1}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->set(JZ)J
    :try_end_6f
    .catch Lorg/joda/time/IllegalFieldValueException; {:try_start_57 .. :try_end_6f} :catch_76

    move-result-wide v2

    .line 368
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_63

    :cond_74
    move v1, v4

    .line 369
    goto :goto_6c

    .line 372
    :catch_76
    move-exception v0

    .line 373
    if-eqz p2, :cond_95

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/IllegalFieldValueException;->prependMessage(Ljava/lang/String;)V

    .line 376
    :cond_95
    throw v0

    :cond_96
    move-wide v0, v2

    .line 379
    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->iOffset:Ljava/lang/Integer;

    if-eqz v2, :cond_a4

    .line 380
    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->iOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 381
    goto :goto_51

    :cond_a4
    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->iZone:Lorg/joda/time/DateTimeZone;

    if-eqz v2, :cond_51

    .line 382
    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffsetFromLocal(J)I

    move-result v2

    .line 383
    int-to-long v4, v2

    sub-long/2addr v0, v4

    .line 384
    iget-object v3, p0, Lorg/joda/time/format/DateTimeParserBucket;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v3, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v3

    if-eq v2, v3, :cond_51

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal instant due to time zone offset transition ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz p2, :cond_f2

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_f2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChronology()Lorg/joda/time/Chronology;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iChrono:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOffsetInteger()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPivotYear()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iPivotYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iZone:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method public restoreState(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 301
    instance-of v0, p1, Lorg/joda/time/format/DateTimeParserBucket$SavedState;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 302
    check-cast v0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->restoreState(Lorg/joda/time/format/DateTimeParserBucket;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 303
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedState:Ljava/lang/Object;

    .line 304
    const/4 v0, 0x1

    .line 307
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public saveField(Lorg/joda/time/DateTimeField;I)V
    .registers 4

    .prologue
    .line 236
    new-instance v0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;-><init>(Lorg/joda/time/DateTimeField;I)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)V

    .line 237
    return-void
.end method

.method public saveField(Lorg/joda/time/DateTimeFieldType;I)V
    .registers 5

    .prologue
    .line 246
    new-instance v0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iChrono:Lorg/joda/time/Chronology;

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;-><init>(Lorg/joda/time/DateTimeField;I)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)V

    .line 247
    return-void
.end method

.method public saveField(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6

    .prologue
    .line 257
    new-instance v0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iChrono:Lorg/joda/time/Chronology;

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;-><init>(Lorg/joda/time/DateTimeField;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)V

    .line 258
    return-void
.end method

.method public saveState()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedState:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 287
    new-instance v0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;

    invoke-direct {v0, p0}, Lorg/joda/time/format/DateTimeParserBucket$SavedState;-><init>(Lorg/joda/time/format/DateTimeParserBucket;)V

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedState:Ljava/lang/Object;

    .line 289
    :cond_b
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedState:Ljava/lang/Object;

    return-object v0
.end method

.method public setOffset(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedState:Ljava/lang/Object;

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iOffset:Ljava/lang/Integer;

    .line 188
    return-void
.end method

.method public setOffset(Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedState:Ljava/lang/Object;

    .line 195
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iOffset:Ljava/lang/Integer;

    .line 196
    return-void
.end method

.method public setPivotYear(Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iPivotYear:Ljava/lang/Integer;

    .line 226
    return-void
.end method

.method public setZone(Lorg/joda/time/DateTimeZone;)V
    .registers 3

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->iSavedState:Ljava/lang/Object;

    .line 160
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->iZone:Lorg/joda/time/DateTimeZone;

    .line 161
    return-void
.end method
