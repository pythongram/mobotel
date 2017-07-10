.class final Lcom/evernote/android/job/util/support/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;,
        Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1327
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1331
    :cond_a
    if-eq v0, v2, :cond_14

    .line 1332
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1335
    :cond_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1336
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1338
    :cond_45
    return-void
.end method

.method public static final convertValueToBoolean(Ljava/lang/CharSequence;Z)Z
    .registers 4
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "result":Z
    if-nez p0, :cond_4

    .line 83
    .end local p1    # "defaultValue":Z
    :goto_3
    return p1

    .line 78
    .restart local p1    # "defaultValue":Z
    :cond_4
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "true"

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "TRUE"

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 81
    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    move p1, v0

    .line 83
    goto :goto_3
.end method

.method public static final convertValueToInt(Ljava/lang/CharSequence;I)I
    .registers 11
    .param p0, "charSeq"    # Ljava/lang/CharSequence;
    .param p1, "defaultValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 87
    if-nez p0, :cond_4

    .line 125
    .end local p1    # "defaultValue":I
    :goto_3
    return p1

    .line 90
    .restart local p1    # "defaultValue":I
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "nm":Ljava/lang/String;
    const/4 v5, 0x1

    .line 97
    .local v5, "sign":I
    const/4 v2, 0x0

    .line 98
    .local v2, "index":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 99
    .local v3, "len":I
    const/16 v0, 0xa

    .line 101
    .local v0, "base":I
    const/16 v7, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_1b

    .line 102
    const/4 v5, -0x1

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 106
    :cond_1b
    const/16 v7, 0x30

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4b

    .line 108
    add-int/lit8 v7, v3, -0x1

    if-ne v2, v7, :cond_29

    move p1, v6

    .line 109
    goto :goto_3

    .line 111
    :cond_29
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 113
    .local v1, "c":C
    const/16 v6, 0x78

    if-eq v6, v1, :cond_37

    const/16 v6, 0x58

    if-ne v6, v1, :cond_46

    .line 114
    :cond_37
    add-int/lit8 v2, v2, 0x2

    .line 115
    const/16 v0, 0x10

    .line 125
    .end local v1    # "c":C
    :cond_3b
    :goto_3b
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    mul-int p1, v6, v5

    goto :goto_3

    .line 117
    .restart local v1    # "c":C
    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 118
    const/16 v0, 0x8

    goto :goto_3b

    .line 120
    .end local v1    # "c":C
    :cond_4b
    const/16 v6, 0x23

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_3b

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    const/16 v0, 0x10

    goto :goto_3b
.end method

.method public static final convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I
    .registers 5
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "options"    # [Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 62
    if-eqz p0, :cond_12

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 64
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 69
    .end local v0    # "i":I
    :goto_e
    return v0

    .line 63
    .restart local v0    # "i":I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_12
    move v0, p2

    .line 69
    goto :goto_e
.end method

.method public static convertValueToUnsignedInt(Ljava/lang/String;I)I
    .registers 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 129
    if-nez p0, :cond_3

    .line 133
    .end local p1    # "defaultValue":I
    :goto_2
    return p1

    .restart local p1    # "defaultValue":I
    :cond_3
    invoke-static {p0}, Lcom/evernote/android/job/util/support/XmlUtils;->parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_2
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1343
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1346
    :cond_a
    return-void
.end method

.method public static nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1351
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1352
    .local v0, "type":I
    if-eq v0, v1, :cond_10

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    .line 1353
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, p1, :cond_12

    .line 1354
    :cond_10
    const/4 v1, 0x0

    .line 1358
    :goto_11
    return v1

    .line 1356
    :cond_12
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1357
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_11
.end method

.method public static parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I
    .registers 9
    .param p0, "charSeq"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 141
    .local v2, "index":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 142
    .local v3, "len":I
    const/16 v0, 0xa

    .line 144
    .local v0, "base":I
    const/16 v5, 0x30

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_39

    .line 146
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_19

    .line 147
    const/4 v5, 0x0

    .line 163
    :goto_18
    return v5

    .line 149
    :cond_19
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 151
    .local v1, "c":C
    const/16 v5, 0x78

    if-eq v5, v1, :cond_26

    const/16 v5, 0x58

    if-ne v5, v1, :cond_34

    .line 152
    :cond_26
    add-int/lit8 v2, v2, 0x2

    .line 153
    const/16 v0, 0x10

    .line 163
    .end local v1    # "c":C
    :cond_2a
    :goto_2a
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v5, v6

    goto :goto_18

    .line 155
    .restart local v1    # "c":C
    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 156
    const/16 v0, 0x8

    goto :goto_2a

    .line 158
    .end local v1    # "c":C
    :cond_39
    const/16 v5, 0x23

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_2a

    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 160
    const/16 v0, 0x10

    goto :goto_2a
.end method

.method public static readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1483
    invoke-static {p0, p1}, Lcom/evernote/android/job/util/support/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v0

    .line 1484
    .local v0, "value":[B
    if-eqz v0, :cond_d

    .line 1485
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1487
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 4
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1424
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1430
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1434
    .end local p2    # "defaultValue":Z
    :goto_7
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_7
.end method

.method public static readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B
    .registers 4
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1467
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 1469
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1471
    :cond_c
    return-object v1
.end method

.method public static readFloatAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1410
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1412
    .local v1, "value":Ljava/lang/String;
    :try_start_5
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v2

    return v2

    .line 1413
    :catch_a
    move-exception v0

    .line 1414
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1373
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1375
    .local v1, "value":Ljava/lang/String;
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v2

    return v2

    .line 1376
    :catch_a
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1364
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, "value":Ljava/lang/String;
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result p2

    .line 1368
    .end local p2    # "defaultValue":I
    :goto_9
    return p2

    .line 1367
    .restart local p2    # "defaultValue":I
    :catch_a
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_9
.end method

.method public static final readListXml(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 707
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/support/XmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public static readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1398
    .local v1, "value":Ljava/lang/String;
    :try_start_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v2

    return-wide v2

    .line 1399
    :catch_a
    move-exception v0

    .line 1400
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 1387
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "value":Ljava/lang/String;
    :try_start_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide p2

    .line 1391
    .end local p2    # "defaultValue":J
    :goto_9
    return-wide p2

    .line 1390
    .restart local p2    # "defaultValue":J
    :catch_a
    move-exception v0

    .line 1391
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_9
.end method

.method public static final readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 687
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 688
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/support/XmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    return-object v1
.end method

.method public static final readSetXml(Ljava/io/InputStream;)Ljava/util/HashSet;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 730
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 731
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/support/XmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    return-object v1
.end method

.method public static readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1456
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final readThisDoubleArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D
    .registers 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1060
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "num"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_57
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_a} :catch_60

    move-result v4

    .line 1066
    .local v4, "num":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1068
    new-array v0, v4, [D

    .line 1069
    .local v0, "array":[D
    const/4 v3, 0x0

    .line 1071
    .local v3, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1073
    .local v2, "eventType":I
    :cond_15
    const/4 v5, 0x2

    if-ne v2, v5, :cond_98

    .line 1074
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1076
    const/4 v5, 0x0

    :try_start_25
    const-string v6, "value"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v3
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_31} :catch_69
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_31} :catch_72

    .line 1094
    :cond_31
    :goto_31
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1095
    const/4 v5, 0x1

    if-ne v2, v5, :cond_15

    .line 1097
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Document ended before "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1061
    .end local v0    # "array":[D
    .end local v2    # "eventType":I
    .end local v3    # "i":I
    .end local v4    # "num":I
    :catch_57
    move-exception v1

    .line 1062
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Need num attribute in double-array"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1063
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_60
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not a number in num attribute in double-array"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1077
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "array":[D
    .restart local v2    # "eventType":I
    .restart local v3    # "i":I
    .restart local v4    # "num":I
    :catch_69
    move-exception v1

    .line 1078
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Need value attribute in item"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1079
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_72
    move-exception v1

    .line 1080
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not a number in value attribute in item"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1083
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7b
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected item tag at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1085
    :cond_98
    const/4 v5, 0x3

    if-ne v2, v5, :cond_31

    .line 1086
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 1087
    return-object v0

    .line 1088
    :cond_a6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 1089
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 1091
    :cond_b6
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final readThisIntArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I
    .registers 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 932
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "num"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_57
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_a} :catch_60

    move-result v4

    .line 940
    .local v4, "num":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 942
    new-array v0, v4, [I

    .line 943
    .local v0, "array":[I
    const/4 v3, 0x0

    .line 945
    .local v3, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 947
    .local v2, "eventType":I
    :cond_15
    const/4 v5, 0x2

    if-ne v2, v5, :cond_98

    .line 948
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 950
    const/4 v5, 0x0

    :try_start_25
    const-string v6, "value"

    .line 951
    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 950
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v3
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_31} :catch_69
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_31} :catch_72

    .line 974
    :cond_31
    :goto_31
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 975
    const/4 v5, 0x1

    if-ne v2, v5, :cond_15

    .line 977
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Document ended before "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 933
    .end local v0    # "array":[I
    .end local v2    # "eventType":I
    .end local v3    # "i":I
    .end local v4    # "num":I
    :catch_57
    move-exception v1

    .line 934
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Need num attribute in byte-array"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 936
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_60
    move-exception v1

    .line 937
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not a number in num attribute in byte-array"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 952
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "array":[I
    .restart local v2    # "eventType":I
    .restart local v3    # "i":I
    .restart local v4    # "num":I
    :catch_69
    move-exception v1

    .line 953
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Need value attribute in item"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 955
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_72
    move-exception v1

    .line 956
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not a number in value attribute in item"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 960
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7b
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected item tag at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 961
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 963
    :cond_98
    const/4 v5, 0x3

    if-ne v2, v5, :cond_31

    .line 964
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 965
    return-object v0

    .line 966
    :cond_a6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 967
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 969
    :cond_b6
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 971
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static final readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v1, "list":Ljava/util/ArrayList;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 831
    .local v0, "eventType":I
    :cond_9
    const/4 v3, 0x2

    if-ne v0, v3, :cond_39

    .line 832
    invoke-static {p0, p2, p3}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/lang/Object;

    move-result-object v2

    .line 833
    .local v2, "val":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    .end local v2    # "val":Ljava/lang/Object;
    :cond_13
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 843
    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 845
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document ended before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 835
    :cond_39
    const/4 v3, 0x3

    if-ne v0, v3, :cond_13

    .line 836
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 837
    return-object v1

    .line 839
    :cond_47
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 840
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final readThisLongArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J
    .registers 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "num"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_57
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_a} :catch_60

    move-result v4

    .line 1007
    .local v4, "num":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1009
    new-array v0, v4, [J

    .line 1010
    .local v0, "array":[J
    const/4 v3, 0x0

    .line 1012
    .local v3, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1014
    .local v2, "eventType":I
    :cond_15
    const/4 v5, 0x2

    if-ne v2, v5, :cond_98

    .line 1015
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1017
    const/4 v5, 0x0

    :try_start_25
    const-string v6, "value"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v3
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_31} :catch_69
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_31} :catch_72

    .line 1035
    :cond_31
    :goto_31
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1036
    const/4 v5, 0x1

    if-ne v2, v5, :cond_15

    .line 1038
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Document ended before "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1002
    .end local v0    # "array":[J
    .end local v2    # "eventType":I
    .end local v3    # "i":I
    .end local v4    # "num":I
    :catch_57
    move-exception v1

    .line 1003
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Need num attribute in long-array"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1004
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_60
    move-exception v1

    .line 1005
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not a number in num attribute in long-array"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1018
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "array":[J
    .restart local v2    # "eventType":I
    .restart local v3    # "i":I
    .restart local v4    # "num":I
    :catch_69
    move-exception v1

    .line 1019
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Need value attribute in item"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1020
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_72
    move-exception v1

    .line 1021
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not a number in value attribute in item"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1024
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7b
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected item tag at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1026
    :cond_98
    const/4 v5, 0x3

    if-ne v2, v5, :cond_31

    .line 1027
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 1028
    return-object v0

    .line 1029
    :cond_a6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 1030
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 1032
    :cond_b6
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static final readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 772
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 774
    .local v0, "eventType":I
    :cond_9
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3c

    .line 775
    invoke-static {p0, p2, p3}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/lang/Object;

    move-result-object v2

    .line 776
    .local v2, "val":Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .end local v2    # "val":Ljava/lang/Object;
    :cond_16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 785
    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 787
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document ended before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 777
    :cond_3c
    const/4 v3, 0x3

    if-ne v0, v3, :cond_16

    .line 778
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 779
    return-object v1

    .line 781
    :cond_4a
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 782
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final readThisPrimitiveValueXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1303
    :try_start_1
    const-string v2, "int"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1304
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1314
    :cond_18
    :goto_18
    return-object v1

    .line 1305
    :cond_19
    const-string v2, "long"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1306
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_18

    .line 1307
    :cond_2d
    const-string v2, "float"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1308
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_18

    .line 1309
    :cond_41
    const-string v2, "double"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1310
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_18

    .line 1311
    :cond_55
    const-string v2, "boolean"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1312
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_67
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_67} :catch_69
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_67} :catch_89

    move-result-object v1

    goto :goto_18

    .line 1316
    :catch_69
    move-exception v0

    .line 1317
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need value attribute in <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1318
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_89
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a number in value attribute in <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readThisSetXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisSetXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private static final readThisSetXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/util/HashSet;
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 892
    .local v1, "set":Ljava/util/HashSet;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 894
    .local v0, "eventType":I
    :cond_9
    const/4 v3, 0x2

    if-ne v0, v3, :cond_39

    .line 895
    invoke-static {p0, p2, p3}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/lang/Object;

    move-result-object v2

    .line 896
    .local v2, "val":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 905
    .end local v2    # "val":Ljava/lang/Object;
    :cond_13
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 906
    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 908
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document ended before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 898
    :cond_39
    const/4 v3, 0x3

    if-ne v0, v3, :cond_13

    .line 899
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 900
    return-object v1

    .line 902
    :cond_47
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 903
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "endTag"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1119
    const/4 v5, 0x0

    :try_start_2
    const-string v6, "num"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b} :catch_54
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_b} :catch_5d

    move-result v4

    .line 1125
    .local v4, "num":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1127
    new-array v0, v4, [Ljava/lang/String;

    .line 1128
    .local v0, "array":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1130
    .local v3, "i":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1132
    .local v2, "eventType":I
    :cond_16
    const/4 v5, 0x2

    if-ne v2, v5, :cond_a4

    .line 1133
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 1135
    const/4 v5, 0x0

    :try_start_26
    const-string v6, "value"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_2e} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2e} :catch_6f

    .line 1155
    :cond_2e
    :goto_2e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1156
    const/4 v5, 0x1

    if-ne v2, v5, :cond_16

    .line 1158
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Document ended before "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1120
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "eventType":I
    .end local v3    # "i":I
    .end local v4    # "num":I
    :catch_54
    move-exception v1

    .line 1121
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Need num attribute in string-array"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1122
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_5d
    move-exception v1

    .line 1123
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not a number in num attribute in string-array"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1136
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "eventType":I
    .restart local v3    # "i":I
    .restart local v4    # "num":I
    :catch_66
    move-exception v1

    .line 1137
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Need value attribute in item"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1138
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_6f
    move-exception v1

    .line 1139
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not a number in value attribute in item"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1141
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_78
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1142
    aput-object v7, v0, v3

    goto :goto_2e

    .line 1144
    :cond_87
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected item tag at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1146
    :cond_a4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2e

    .line 1147
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1148
    return-object v0

    .line 1149
    :cond_b2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ca

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 1150
    :cond_ca
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2e

    .line 1152
    :cond_ce
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static final readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/lang/Object;
    .registers 15
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1199
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1200
    .local v4, "valueName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, "tagName":Ljava/lang/String;
    const-string v5, "null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1207
    const/4 v1, 0x0

    .line 1279
    :cond_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "eventType":I
    if-eq v0, v8, :cond_1d5

    .line 1280
    if-ne v0, v10, :cond_183

    .line 1281
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15c

    .line 1282
    aput-object v4, p1, v7

    .line 1284
    .end local v0    # "eventType":I
    :goto_2d
    return-object v1

    .line 1208
    :cond_2e
    const-string v5, "string"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 1209
    const-string v3, ""

    .line 1211
    .local v3, "value":Ljava/lang/String;
    :cond_38
    :goto_38
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .restart local v0    # "eventType":I
    if-eq v0, v8, :cond_a4

    .line 1212
    if-ne v0, v10, :cond_6d

    .line 1213
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1214
    aput-object v4, p1, v7

    move-object v1, v3

    .line 1216
    goto :goto_2d

    .line 1218
    :cond_50
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected end tag in <string>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1219
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1220
    :cond_6d
    if-ne v0, v11, :cond_85

    .line 1221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_38

    .line 1222
    :cond_85
    if-ne v0, v9, :cond_38

    .line 1223
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected start tag in <string>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1224
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1227
    :cond_a4
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Unexpected end of document in <string>"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1229
    .end local v0    # "eventType":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_ac
    invoke-static {p0, v2}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisPrimitiveValueXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "res":Ljava/lang/Object;
    if-nez v1, :cond_19

    .line 1231
    const-string v5, "int-array"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 1232
    const-string v5, "int-array"

    invoke-static {p0, v5, p1}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisIntArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v1

    .line 1233
    .local v1, "res":[I
    aput-object v4, p1, v7

    goto/16 :goto_2d

    .line 1236
    .local v1, "res":Ljava/lang/Object;
    :cond_c4
    const-string v5, "long-array"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 1237
    const-string v5, "long-array"

    invoke-static {p0, v5, p1}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisLongArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v1

    .line 1238
    .local v1, "res":[J
    aput-object v4, p1, v7

    goto/16 :goto_2d

    .line 1241
    .local v1, "res":Ljava/lang/Object;
    :cond_d6
    const-string v5, "double-array"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 1242
    const-string v5, "double-array"

    invoke-static {p0, v5, p1}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisDoubleArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D

    move-result-object v1

    .line 1243
    .local v1, "res":[D
    aput-object v4, p1, v7

    goto/16 :goto_2d

    .line 1246
    .local v1, "res":Ljava/lang/Object;
    :cond_e8
    const-string v5, "string-array"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 1247
    const-string v5, "string-array"

    invoke-static {p0, v5, p1}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1248
    .local v1, "res":[Ljava/lang/String;
    aput-object v4, p1, v7

    goto/16 :goto_2d

    .line 1251
    .local v1, "res":Ljava/lang/Object;
    :cond_fa
    const-string v5, "map"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 1252
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1253
    const-string v5, "map"

    invoke-static {p0, v5, p1}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1254
    .local v1, "res":Ljava/util/HashMap;
    aput-object v4, p1, v7

    goto/16 :goto_2d

    .line 1257
    .local v1, "res":Ljava/lang/Object;
    :cond_10f
    const-string v5, "list"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 1258
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1259
    const-string v5, "list"

    invoke-static {p0, v5, p1}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1260
    .local v1, "res":Ljava/util/ArrayList;
    aput-object v4, p1, v7

    goto/16 :goto_2d

    .line 1263
    .local v1, "res":Ljava/lang/Object;
    :cond_124
    const-string v5, "set"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_139

    .line 1264
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1265
    const-string v5, "set"

    invoke-static {p0, v5, p1}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisSetXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 1266
    .local v1, "res":Ljava/util/HashSet;
    aput-object v4, p1, v7

    goto/16 :goto_2d

    .line 1269
    .local v1, "res":Ljava/lang/Object;
    :cond_139
    if-eqz p2, :cond_143

    .line 1270
    invoke-interface {p2, p0, v2}, Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;->readThisUnknownObjectXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1271
    aput-object v4, p1, v7

    goto/16 :goto_2d

    .line 1274
    :cond_143
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1286
    .end local v1    # "res":Ljava/lang/Object;
    .restart local v0    # "eventType":I
    :cond_15c
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected end tag in <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1287
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1288
    :cond_183
    if-ne v0, v11, :cond_1ac

    .line 1289
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected text in <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1290
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1291
    :cond_1ac
    if-ne v0, v9, :cond_19

    .line 1292
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected start tag in <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1293
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1296
    :cond_1d5
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected end of document in <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1444
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public static final readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 1181
    .local v0, "eventType":I
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 1182
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/evernote/android/job/util/support/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/evernote/android/job/util/support/XmlUtils$ReadMapCallback;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1183
    :cond_d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    .line 1184
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end tag at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1185
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1186
    :cond_2d
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4d

    .line 1187
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1188
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1190
    :cond_4d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1191
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1193
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Unexpected end of document"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 55
    .local v0, "outerDepth":I
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 57
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-gt v2, v0, :cond_4

    .line 59
    :cond_14
    return-void
.end method

.method public static writeBitmapAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1494
    if-eqz p2, :cond_15

    .line 1495
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1496
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1497
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/evernote/android/job/util/support/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 1499
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_15
    return-void
.end method

.method public static writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1440
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1441
    return-void
.end method

.method public static writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1477
    if-eqz p2, :cond_b

    .line 1478
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1480
    :cond_b
    return-void
.end method

.method public static final writeByteArrayXml([BLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .param p0, "val"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 364
    if-nez p0, :cond_10

    .line 365
    const-string v5, "null"

    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    const-string v5, "null"

    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    :goto_f
    return-void

    .line 370
    :cond_10
    const-string v5, "byte-array"

    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    if-eqz p1, :cond_1c

    .line 372
    const-string v5, "name"

    invoke-interface {p2, v7, v5, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    :cond_1c
    array-length v3, p0

    .line 376
    .local v3, "n":I
    const-string v5, "num"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 379
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v3, :cond_52

    .line 380
    aget-byte v0, p0, v2

    .line 381
    .local v0, "b":I
    shr-int/lit8 v1, v0, 0x4

    .line 382
    .local v1, "h":I
    if-lt v1, v8, :cond_4c

    add-int/lit8 v5, v1, 0x61

    add-int/lit8 v5, v5, -0xa

    :goto_3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    and-int/lit16 v1, v0, 0xff

    .line 384
    if-lt v1, v8, :cond_4f

    add-int/lit8 v5, v1, 0x61

    add-int/lit8 v5, v5, -0xa

    :goto_46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 382
    :cond_4c
    add-int/lit8 v5, v1, 0x30

    goto :goto_3b

    .line 384
    :cond_4f
    add-int/lit8 v5, v1, 0x30

    goto :goto_46

    .line 387
    .end local v0    # "b":I
    .end local v1    # "h":I
    :cond_52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    const-string v5, "byte-array"

    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f
.end method

.method public static final writeDoubleArrayXml([DLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p0, "val"    # [D
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 487
    if-nez p0, :cond_e

    .line 488
    const-string v2, "null"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    const-string v2, "null"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    :goto_d
    return-void

    .line 493
    :cond_e
    const-string v2, "double-array"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    if-eqz p1, :cond_1a

    .line 495
    const-string v2, "name"

    invoke-interface {p2, v6, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    :cond_1a
    array-length v1, p0

    .line 499
    .local v1, "n":I
    const-string v2, "num"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    if-ge v0, v1, :cond_3f

    .line 502
    const-string v2, "item"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const-string v2, "value"

    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    const-string v2, "item"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 507
    :cond_3f
    const-string v2, "double-array"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method public static writeFloatAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;F)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1420
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1421
    return-void
.end method

.method public static final writeIntArrayXml([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p0, "val"    # [I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 409
    if-nez p0, :cond_e

    .line 410
    const-string v2, "null"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    const-string v2, "null"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    :goto_d
    return-void

    .line 415
    :cond_e
    const-string v2, "int-array"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    if-eqz p1, :cond_1a

    .line 417
    const-string v2, "name"

    invoke-interface {p2, v4, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    :cond_1a
    array-length v1, p0

    .line 421
    .local v1, "n":I
    const-string v2, "num"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    if-ge v0, v1, :cond_3f

    .line 424
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string v2, "value"

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 429
    :cond_3f
    const-string v2, "int-array"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method public static writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1383
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1384
    return-void
.end method

.method public static final writeListXml(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "val"    # Ljava/util/List;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 202
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 203
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "utf-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 204
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 205
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 206
    invoke-static {p0, v3, v0}, Lcom/evernote/android/job/util/support/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 207
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 208
    return-void
.end method

.method public static final writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p0, "val"    # Ljava/util/List;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 307
    if-nez p0, :cond_e

    .line 308
    const-string v2, "null"

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    const-string v2, "null"

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    :goto_d
    return-void

    .line 313
    :cond_e
    const-string v2, "list"

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    if-eqz p1, :cond_1a

    .line 315
    const-string v2, "name"

    invoke-interface {p2, v3, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    :cond_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 319
    .local v1, "n":I
    const/4 v0, 0x0

    .line 320
    .local v0, "i":I
    :goto_1f
    if-ge v0, v1, :cond_2b

    .line 321
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 325
    :cond_2b
    const-string v2, "list"

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method public static final writeLongArrayXml([JLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p0, "val"    # [J
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 448
    if-nez p0, :cond_e

    .line 449
    const-string v2, "null"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const-string v2, "null"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    :goto_d
    return-void

    .line 454
    :cond_e
    const-string v2, "long-array"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    if-eqz p1, :cond_1a

    .line 456
    const-string v2, "name"

    invoke-interface {p2, v6, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    :cond_1a
    array-length v1, p0

    .line 460
    .local v1, "n":I
    const-string v2, "num"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    if-ge v0, v1, :cond_3f

    .line 463
    const-string v2, "item"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    const-string v2, "value"

    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    const-string v2, "item"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 468
    :cond_3f
    const-string v2, "long-array"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method public static writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1406
    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1407
    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 180
    new-instance v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;

    invoke-direct {v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;-><init>()V

    .line 181
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "utf-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 182
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 183
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 184
    invoke-static {p0, v3, v0}, Lcom/evernote/android/job/util/support/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 185
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 186
    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/evernote/android/job/util/support/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;)V

    .line 227
    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;)V
    .registers 6
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "callback"    # Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    if-nez p0, :cond_e

    .line 248
    const-string v0, "null"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const-string v0, "null"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    :goto_d
    return-void

    .line 253
    :cond_e
    const-string v0, "map"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    if-eqz p1, :cond_1a

    .line 255
    const-string v0, "name"

    invoke-interface {p2, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    :cond_1a
    invoke-static {p0, p2, p3}, Lcom/evernote/android/job/util/support/XmlUtils;->writeMapXml(Ljava/util/Map;Lorg/xmlpull/v1/XmlSerializer;Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;)V

    .line 260
    const-string v0, "map"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method public static final writeMapXml(Ljava/util/Map;Lorg/xmlpull/v1/XmlSerializer;Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;)V
    .registers 8
    .param p0, "val"    # Ljava/util/Map;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "callback"    # Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    if-nez p0, :cond_3

    .line 289
    :cond_2
    return-void

    .line 282
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 283
    .local v2, "s":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 285
    .local v1, "i":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;)V

    goto :goto_b
.end method

.method public static final writeSetXml(Ljava/util/Set;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p0, "val"    # Ljava/util/Set;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 330
    if-nez p0, :cond_e

    .line 331
    const-string v1, "null"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    const-string v1, "null"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    :goto_d
    return-void

    .line 336
    :cond_e
    const-string v1, "set"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    if-eqz p1, :cond_1a

    .line 338
    const-string v1, "name"

    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    :cond_1a
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 342
    .local v0, "v":Ljava/lang/Object;
    invoke-static {v0, v3, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1e

    .line 345
    .end local v0    # "v":Ljava/lang/Object;
    :cond_2c
    const-string v1, "set"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method public static final writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p0, "val"    # [Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 526
    if-nez p0, :cond_e

    .line 527
    const-string v2, "null"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    const-string v2, "null"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 552
    :goto_d
    return-void

    .line 532
    :cond_e
    const-string v2, "string-array"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    if-eqz p1, :cond_1a

    .line 534
    const-string v2, "name"

    invoke-interface {p2, v4, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 537
    :cond_1a
    array-length v1, p0

    .line 538
    .local v1, "n":I
    const-string v2, "num"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    if-ge v0, v1, :cond_4a

    .line 541
    aget-object v2, p0, v0

    if-nez v2, :cond_38

    .line 542
    const-string v2, "null"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    const-string v2, "null"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 545
    :cond_38
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    const-string v2, "value"

    aget-object v3, p0, v0

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_35

    .line 551
    :cond_4a
    const-string v2, "string-array"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method public static writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1461
    if-eqz p2, :cond_6

    .line 1462
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1464
    :cond_6
    return-void
.end method

.method public static writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1450
    if-eqz p2, :cond_a

    .line 1451
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1453
    :cond_a
    return-void
.end method

.method public static final writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/evernote/android/job/util/support/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;)V

    .line 573
    return-void
.end method

.method private static final writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;)V
    .registers 8
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "callback"    # Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 595
    if-nez p0, :cond_15

    .line 596
    const-string v1, "null"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    if-eqz p1, :cond_f

    .line 598
    const-string v1, "name"

    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    :cond_f
    const-string v1, "null"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 668
    .end local p0    # "v":Ljava/lang/Object;
    :goto_14
    return-void

    .line 602
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_15
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 603
    const-string v1, "string"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    if-eqz p1, :cond_25

    .line 605
    const-string v1, "name"

    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 607
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    const-string v1, "string"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_14

    .line 610
    :cond_32
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_4f

    .line 611
    const-string v0, "int"

    .line 662
    .local v0, "typeStr":Ljava/lang/String;
    :goto_38
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 663
    if-eqz p1, :cond_42

    .line 664
    const-string v1, "name"

    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    :cond_42
    const-string v1, "value"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 667
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_14

    .line 612
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_4f
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_56

    .line 613
    const-string v0, "long"

    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_38

    .line 614
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_56
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_5d

    .line 615
    const-string v0, "float"

    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_38

    .line 616
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_5d
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_64

    .line 617
    const-string v0, "double"

    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_38

    .line 618
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_64
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_6b

    .line 619
    const-string v0, "boolean"

    .restart local v0    # "typeStr":Ljava/lang/String;
    goto :goto_38

    .line 620
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_6b
    instance-of v1, p0, [B

    if-eqz v1, :cond_77

    .line 621
    check-cast p0, [B

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeByteArrayXml([BLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_14

    .line 623
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_77
    instance-of v1, p0, [I

    if-eqz v1, :cond_83

    .line 624
    check-cast p0, [I

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [I

    invoke-static {p0, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeIntArrayXml([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_14

    .line 626
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_83
    instance-of v1, p0, [J

    if-eqz v1, :cond_8f

    .line 627
    check-cast p0, [J

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [J

    invoke-static {p0, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeLongArrayXml([JLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_14

    .line 629
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_8f
    instance-of v1, p0, [D

    if-eqz v1, :cond_9c

    .line 630
    check-cast p0, [D

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [D

    invoke-static {p0, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeDoubleArrayXml([DLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_14

    .line 632
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_9c
    instance-of v1, p0, [Ljava/lang/String;

    if-eqz v1, :cond_a9

    .line 633
    check-cast p0, [Ljava/lang/String;

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_14

    .line 635
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_a9
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_b4

    .line 636
    check-cast p0, Ljava/util/Map;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_14

    .line 638
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_b4
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_bf

    .line 639
    check-cast p0, Ljava/util/List;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_14

    .line 641
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_bf
    instance-of v1, p0, Ljava/util/Set;

    if-eqz v1, :cond_ca

    .line 642
    check-cast p0, Ljava/util/Set;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils;->writeSetXml(Ljava/util/Set;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_14

    .line 644
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_ca
    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_e8

    .line 648
    const-string v1, "string"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 649
    if-eqz p1, :cond_da

    .line 650
    const-string v1, "name"

    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    :cond_da
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    const-string v1, "string"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_14

    .line 655
    :cond_e8
    if-eqz p3, :cond_ef

    .line 656
    invoke-interface {p3, p0, p1, p2}, Lcom/evernote/android/job/util/support/XmlUtils$WriteMapCallback;->writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_14

    .line 659
    :cond_ef
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeValueXml: unable to write value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
