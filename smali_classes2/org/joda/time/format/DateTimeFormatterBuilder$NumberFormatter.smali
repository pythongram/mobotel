.class abstract Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/DateTimePrinter;
.implements Lorg/joda/time/format/DateTimeParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NumberFormatter"
.end annotation


# instance fields
.field protected final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field protected final iMaxParsedDigits:I

.field protected final iSigned:Z


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .registers 4

    .prologue
    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 1283
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iMaxParsedDigits:I

    .line 1284
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iSigned:Z

    .line 1285
    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .registers 2

    .prologue
    .line 1288
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iMaxParsedDigits:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .registers 15

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const/16 v7, 0x2d

    const/4 v3, 0x0

    .line 1292
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iMaxParsedDigits:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v3

    move v4, v0

    move v1, p3

    move v0, v3

    .line 1296
    :goto_16
    if-ge v0, v4, :cond_a3

    .line 1297
    add-int v5, v1, v0

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1298
    if-nez v0, :cond_58

    if-eq v5, v7, :cond_26

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_58

    :cond_26
    iget-boolean v6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iSigned:Z

    if-eqz v6, :cond_58

    .line 1299
    if-ne v5, v7, :cond_43

    const/4 v2, 0x1

    .line 1302
    :goto_2d
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v4, :cond_a3

    add-int v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v8, :cond_a3

    if-le v5, v9, :cond_45

    move v4, v2

    .line 1324
    :goto_3e
    if-nez v0, :cond_61

    .line 1325
    xor-int/lit8 v1, v1, -0x1

    .line 1353
    :goto_42
    return v1

    :cond_43
    move v2, v3

    .line 1299
    goto :goto_2d

    .line 1308
    :cond_45
    if-eqz v2, :cond_55

    .line 1309
    add-int/lit8 v0, v0, 0x1

    .line 1315
    :goto_49
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_16

    .line 1312
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 1318
    :cond_58
    if-lt v5, v8, :cond_a3

    if-le v5, v9, :cond_5e

    move v4, v2

    .line 1319
    goto :goto_3e

    .line 1321
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    .line 1322
    goto :goto_16

    .line 1329
    :cond_61
    const/16 v2, 0x9

    if-lt v0, v2, :cond_76

    .line 1332
    add-int v2, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v2

    .line 1352
    :cond_70
    :goto_70
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, v2, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    goto :goto_42

    .line 1335
    :cond_76
    if-eqz v4, :cond_a1

    .line 1336
    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 1339
    :goto_7b
    add-int/lit8 v2, v3, 0x1

    :try_start_7d
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_80
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7d .. :try_end_80} :catch_99

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 1343
    add-int/2addr v1, v0

    move v0, v3

    .line 1344
    :goto_85
    if-ge v2, v1, :cond_9d

    .line 1345
    shl-int/lit8 v3, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x30

    move v10, v0

    move v0, v2

    move v2, v10

    .line 1346
    goto :goto_85

    .line 1340
    :catch_99
    move-exception v0

    .line 1341
    xor-int/lit8 v1, v1, -0x1

    goto :goto_42

    .line 1347
    :cond_9d
    if-eqz v4, :cond_70

    .line 1348
    neg-int v0, v0

    goto :goto_70

    :cond_a1
    move v3, v1

    goto :goto_7b

    :cond_a3
    move v4, v2

    goto :goto_3e
.end method
